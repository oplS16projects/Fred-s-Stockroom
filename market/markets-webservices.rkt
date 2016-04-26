#lang racket

(require (planet neil/csv:1:2/csv)
         net/url)

(provide (contract-out
          [market-value (-> string? number?)]))

(define-struct sq (symbol price last-closed opened) #:prefab)

(define (stock-quote stock-symbol)
  (let ([url (format "http://download.finance.yahoo.com/d/quotes.csv?s=~a&f=sl1po" stock-symbol)])
    (apply make-sq (first (csv->list (port->string (get-pure-port (string->url url))))))))

(define (market-value stock-symbol)
  (with-handlers ([exn:fail? (lambda (exn) -1)])
    (string->number (sq-price (stock-quote stock-symbol)))))