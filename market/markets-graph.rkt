#lang racket

(require "markets-webservices.rkt"
         (planet jeeve/live:1:1))

(provide (contract-out [market-graph (-> string?
                                         any/c)]
                       [markets-dashboard (-> (listof (listof string?))
                                              any/c)]
                       [line-width parameter?]))

(provide (all-from-out (planet jeeve/live:1:1)))

(define line-width (make-parameter 2))

(define (market-graph stock-symbol)
  (parameterize ([p:line-width (line-width)])
    (live-graph stock-symbol (lambda () (market-value stock-symbol)) 60 "Markets")))

(define (markets-dashboard stock-symbols)
  (parameterize ([p:line-width (line-width)])
    (live-dashboard-one-ft stock-symbols market-value 60 "Markets")))