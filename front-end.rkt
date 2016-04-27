#lang racket/base

;; Library for making webpage
(require web-server/servlet)
;; Local library for getting stock data and plot the graph
(require "market/main.rkt")

;; Webpage form template
;; build-request-page request -> doesn't return
;; Produces an HTML page of the content of the
;; webpage
(define (build-request-page stock1 stock2 k-url)
 (response/xexpr
   `(html (head (title "Fred's Stockroom")) ; Title
           ;Body Title
          (body
           ;; inline CSS to improve the UI
           ([style "width: 550px;
                    padding: 25px;
                    border: 5px solid black;
                    margin: 25px;
                    height: 120px;"])

          ;; In-line CSS added
          (h3 ([style "color: #fff; background-color: #53606D; text-align:center;"]) "Fred's Stockroom"))
          ;Form
          (form ([action ,k-url] [method "post"])
                
                      ;; First Stock Symbol
                      "Enter " ,stock1 " stock symbol to compare: "
                      (input ([type "text"] [name "stock1"] [value ""]))
                      ;; Second Stock symbol
                      (p "Enter " ,stock2 " stock symbol to compare: " 
                      (input ([type "text"] [name "stock2"] [value ""])))
                      ;; Submit button
                      (input ([type "submit"] [name "enter"] [value "Enter"]))))))


;; Passing the value in to webpage template
;; Out here the ticker value is being passed
(define (get-first req)
  (build-request-page "first" "second" (add-url display-data)))

;; Function to display the data
(define (display-data req)

  ;; Extract the data from user input into stock1-data and stock2-data
  (define stock1-data (extract-binding/single 'stock1 (request-bindings req)))
  (define stock2-data (extract-binding/single 'stock2 (request-bindings req)))

  ;; Setting coordinate and time frame for graph
  (parameterize ([delta-x (* 2 800)] ;10 mins on x axis
               [delta-y 0.01]) ;1% on y axis
   ;; Calling the local library and pass the data to display the graph
  (markets-dashboard (list (list stock1-data) (list stock2-data)))))

;; This function allows the creation of two-way mappings
;; between permanent URLs and request-handling procedures.
(define-values (start add-url)
  (dispatch-rules
   [("display-data") #:method "post"  display-data]
   [else get-first]))

;; Start the dispatch-rules
(serve/dispatch start)

