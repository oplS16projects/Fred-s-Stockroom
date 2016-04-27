# Project Title: Fred's StockRoom

##Authors
Krin Yongvongphaiboon @aboutkrin
Udit Bhansali @ubhansali 

##Overview
This project contains two parts, front-end and back-end. Front-end will be a HTML webpage that will take one or more US stock symbols from the user. The back-end will generate the live stock prices and data from [Yahoo Finance](http://finance.yahoo.com/stock-center/) then displays graphic quotes in rows and columns disposition. The front-end will display stock prices and graph/chart so the user can compare.

##Screenshot

![](https://github.com/oplS16projects/Fred-s-Stockroom/blob/master/fred.jpg?raw=true)

##Concepts Demonstrated
**Data modeling** is used to define and analyze data requirements needed to support the market graph.
**Higher-order function** is used for abstraction where functions produce other functions when calling URL-dispatch.

##External Technology and Libraries
[web-server/insta](https://docs.racket-lang.org/web-server/run.html)

[jeeve/markets](https://planet.racket-lang.org/package-source/jeeve/markets.plt/1/2/planet-docs/manual/index.html)

##Favorite Scheme Expressions
####Krin
In Racket, I'm impressed how easy it was to create a webpage. The following code demonstrate how you can create a unique link for the webpage and be able to call a function. The function will be the body of the link itself.
```scheme
(define-values (start add-url)
  (dispatch-rules
   (("display-data") #:method "post"  display-data)
   (else get-first)))
```

####Udit
This little snippet of code is to extract a single web form value from a set of bindings. This prevents previous inputs from being perpetuated and keeps each stock symbol isolated. Initially, we had trouble passing the id from the form as I had no idea how the Racket's internal procedures actually link the web pages, but since I am on the higher side of the abstraction, I don’t need to worry about it.
```scheme
(define stock1-data (extract-binding/single 'stock1 (request-bindings req)))
(define stock2-data (extract-binding/single 'stock2 (request-bindings req)))
```

##How to run
When download the repository, open it with Dr.Racket. Open the file **front-end.krt** then compile the code.
![alt tage](https://github.com/oplS16projects/Fred-s-Stockroom/blob/master/drracket.png?raw=true)

![alt tage](https://github.com/oplS16projects/Fred-s-Stockroom/blob/master/compile.png?raw=true)


##Special Thanks
Fred Martin @fgmart

Mark Sherman @marksherman

Jay McCarthy @jeapostrophe

Jv Julien @[jvjulien.free.fr](jvjulien.free.fr)
##How to download?

Our project can be found at [http://opls16projects.github.io/Fred-s-Stockroom/](http://opls16projects.github.io/Fred-s-Stockroom/)

## Support or Contact
If you have any question feel free to contact Krin (@aboutkrin) or Udit (@ubhansali)
