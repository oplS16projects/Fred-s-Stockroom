# Project Title: Fred's StockRoom

### Statement

In our earlier discussions, we began thinking about how we can get live stock prices from Dow Jones. To ensure this, we have designed a GUI interface that allows a user to enter ticker symbols and get current price of the stock.

### Analysis

Explain what approaches from class you will bring to bear on the project. Be explicit: e.g., will you use recursion? How? Will you use map/filter/reduce? How? Will you use data abstraction? Will you use object-orientation? Will you use functional approaches to processing your data? Will you use state-modification approaches? A combination?

The idea here is to identify what ideas from the class you will use in carrying out your project. 

### Data set or other source materials

Our data for live stock prices is provided by Yahoo Finance. Other piece of data is the ticker symbols for each company listed on NYSE which is provided by wikipedia. We use markets-graph library to graphically display the live stock prices once the correct symbol is typed. We also use web-server-lib library to create a HTML based web page. The user can compare stock prices of two or more companies and learn about the trend, price wave, recent spikes and many other things. 

### Deliverable and Demonstration

HTML webpage which will allow users to lookup live stock prices of multiple companies. The user can also compare stock prices graphically by reading stock charts. We'll run the live website for demonstration and the website will use the live data from Yahoo Finace. 

### Evaluation of Results

In order to verify the outcome we can compare our result with the data available online.

## Architecture Diagram

![alt tag](https://github.com/oplS16projects/Krin-Udit/blob/master/fred.jpg)

## Schedule

This project contains two parts, front-end and back-end. Front-end will be a HTML webpage that will take one or more US stock symbols from the user. The back-end will generate the live stock prices and data from [Yahoo Finance](http://finance.yahoo.com/stock-center/) then displays graphic quotes in rows and columns disposition. The front-end will display stock prices and graph/chart so the user can compare.

### First Milestone (Fri Apr 15)

We will use the library [web-server/insta](https://docs.racket-lang.org/web-server/run.html) to create:
- [x] HTML webpage that allow users to type US stock symbols in the form field.
- [ ] HTML webpage should include the "+" function to allow users to compare more than two stocks.
- [x] HTML webpage should have a search button that will allow user to look up the stock symbols using the name of the company.

#### Milestone 1 Update
So we are able to create a simple Racket webpage as we expected. 

Krin: 
Krin created the front-end.rkt which is a web form that allow user to enter 4 stock symbols along with the submit button. When user hit submit button, it will return the input into a list which allow me to use that into the next process, jeeve/markets. 

Udit:
After received the front-end.rkt, Udit modified the interface of the form by created a sud-directory contain a CSS file that will intergrated with the form by using 

```
(link ((rel "stylesheet")
                 (href "/test-static.css")
                 (type "text/css")))
```

![alt-tag](https://github.com/oplS16projects/Krin-Udit/blob/master/Milestone%201.png?raw=true)

Right now we followed the schudle as we expected. The only thing that we haven't done is "HTML webpage should include the "+" function to allow users to compare more than two stocks.". We will update this feature later on.

### Second Milestone (Fri Apr 22)

We will then, use the [jeeve/markets](https://planet.racket-lang.org/package-source/jeeve/markets.plt/1/2/planet-docs/manual/index.html) library to:
- [ ] Take US stock symbols from user input to negerate the data.
- [ ] Convert each data into graphical interface.
- [ ] Display data side-by-side for user to compare. 

### Final Presentation (last week of semester)

If we have time, we want to improve the UI of the front-end webpage.

## Group Responsibilities

Here each group member gets a section where they, as an individual, detail what they are responsible for in this project. Each group member writes their own Responsibility section. Include the milestones and final deliverable.

### Udit Bhansali @ubhansali
Udit is gonna be responsible for creating the front-end of the webpage. This will deal with displaying live stock prices and graphs.

### Krin Yongvongphaiboon @aboutkrin
Krin will be focusing on setting up the back-end of the project. He will also overlook the integration of front-end with back-end.


