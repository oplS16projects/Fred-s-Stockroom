#lang web-server/insta

(require web-server/formlets)
(require web-server/servlet
         web-server/servlet-env)
 
(define (start req)
 (response/xexpr
   `(html (head (title "Fred's Stockroom")) ; Title
          (link ((rel "stylesheet")
                 (href "/static.css")
                 (type "text/css")))
          ;Body Title
          (body (h3 "Fred's Stockroom"))
          ;Form
          (list
 '(div "Stock 1:" (input ([name "input_0"])))
 '(div "Stock 2:" (input ([name "input_1"]))))
          ;Submit button
  (button  "Submit"))))
 
(static-files-path "cssfile")
