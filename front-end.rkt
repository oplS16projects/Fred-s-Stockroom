#lang racket

(require web-server/formlets)
(require web-server/servlet
         web-server/servlet-env)
 
(define (start req)
 (response/xexpr
   `(html (head (title "Fred's Stockroom")) ;Header
          ;Page Title
          (body (p "Fred's Stockroom"))
          ;Form
          (list
 '(div "Stock1" (input ([name "input_0"])))
 '(div "Stock2" (input ([name "input_1"]))))
          ;Submit button
  (button  "Submit"))))

 
(serve/servlet start)




 
