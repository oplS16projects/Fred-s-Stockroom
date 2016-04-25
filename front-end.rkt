#lang racket/base
(require web-server/servlet)

(require (planet jeeve/markets))
 
(define (build-request-page stock1 stock2 k-url)
 (response/xexpr
   `(html (head (title "Fred's Stockroom")) ; Title
          ;Body Title
          (body (h3 "Fred's Stockroom"))
          ;Form
          
          (form ([action ,k-url] [method "post"])
                
                      ;; First Stock Symbol
                      "Enter " ,stock1 " stock symbol to compare: "
                      (input ([type "text"] [name "character"] [value ""]))
                      ;; Second Stock symbol
                      (p "Enter " ,stock2 " stock symbol to compare: " 
                      (input ([type "text"] [name "character"] [value ""])))
                      ;; Submit button
                      (input ([type "submit"] [name "enter"] [value "Enter"]))))))


(define (get-first req)
  (build-request-page "first" "second" (add-url display-data)))


(define (display-data req)
  (response/xexpr
   `(html (head (title "Result"))
          (body ([bgcolor "white"])
                (p "Stocks Data: ")))))


(define-values (start add-url)
  (dispatch-rules
   [("display-data") #:method "post"  display-data]
   [else get-first]))

(serve/dispatch start)
