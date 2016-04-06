# Project Title: Stracket

### Statement
Describe your project. Why is it interesting? Why is it interesting to you personally? What do you hope to learn?

In our earlier discussions, we began thinking about how we can get live stock prices from Dow Jones. To ensure this, we have designed a GUI interface that allows a user to enter ticker symbols and get the current price of the stock.

### Analysis
Explain what approaches from class you will bring to bear on the project. Be explicit: e.g., will you use recursion? How? Will you use map/filter/reduce? How? Will you use data abstraction? Will you use object-orientation? Will you use functional approaches to processing your data? Will you use state-modification approaches? A combination?

The idea here is to identify what ideas from the class you will use in carrying out your project. 

### Data set or other source materials
If you will be working with existing data, where will you get those data from? (Dowload it from a website? access it in a database? create it in a simulation you will build....)
Our data for live stock price is provided by Yahoo Finance. Other piece of data is ticker symbols for each company listed on NYSE which is provided by wikipedia.

How will you convert that data into a form usable for your project?  
We use markets-graph.rkt library to graphically display the live stock prices once the correct symbol is typed. The user can compare stock prices of two or more companies and learn about the trend, price wave, recent spikes and many other things. 

Do your homework here: if you are pulling data from somewhere, actually go download it and look at it. Explain in some detail what your plan is for accomplishing the necessary processing.

If you are using some other starting materails, explain what they are. Basically: anything you plan to use that isn't code.

### Deliverable and Demonstration
Explain exactly what you'll have at the end. What will it be able to do at the live demo?
HTML webpage which will allow users to lookup live stock prices of multiple companies. The user can also compare stock prices grpahically by reading stock charts.

What exactly will you produce at the end of the project? A piece of software, yes, but what will it do? Here are some questions to think about (and answer depending on your application).

Will it run on some data, like batch mode? Will you present some analytical results of the processing? How can it be re-run on different source data?

Will it be interactive? Can you show it working? This project involves a live demo, so interactivity is good.

### Evaluation of Results
How will you know if you are successful? 
If you include some kind of _quantitative analysis,_ that would be good.

## Architecture Diagram
Upload the architecture diagram you made for your slide presentation to your repository, and include it in-line here.

Create several paragraphs of narrative to explain the pieces and how they interoperate.

## Schedule
This project contain two parts. Front-end and back-end. Front-end will be a HTML webpage that will take one or more US stock symbols from the user. The back-end will generate the live stocks price and data from [Yahoo Finace](http://finance.yahoo.com/stock-center/) then displays graphic quotes in rows and columns disposition. The front-end then will display stock price and graph so the user can compare.

### First Milestone (Fri Apr 15)
We will use the library [web-server/insta](https://docs.racket-lang.org/web-server/run.html) to create:
- [x] HTML webpage that allow user to type US stock symbols in to the form.
- [x] HTML webpage should include the "+" function to allow users to compare more than two stocks.
- [x] HTML webpage should have a search button that will allow user to look up the stock symbols using the name of the company.

### Second Milestone (Fri Apr 22)
We will then, use the [jeeve/markets](https://planet.racket-lang.org/package-source/jeeve/markets.plt/1/2/planet-docs/manual/index.html) library to:
- [x] Take US stock symbols from user input to negerate the data.
- [x] Convert each data into graphical interface.
- [x] Display data side-by-side for user to compare. 

### Final Presentation (last week of semester)
If we have time, we want to improve the design of the webpage.

## Group Responsibilities
Here each group member gets a section where they, as an individual, detail what they are responsible for in this project. Each group member writes their own Responsibility section. Include the milestones and final deliverable.

**Additional instructions for teams of three:** 
* Remember that you must have prior written permission to work in groups of three (specifically, an approved `FP3` team declaration submission).
* The team must nominate a lead. This person is primarily responsible for code integration. This work may be shared, but the team lead has default responsibility.
* The team lead has full partner implementation responsibilities also.
* Identify who is team lead.

In the headings below, replace the silly names and GitHub handles with your actual ones.

### Susan Scheme @susanscheme
will write the....

### Leonard Lambda @lennylambda
will work on...

### Frank Functions @frankiefunk 
Frank is team lead. Additionally, Frank will work on...   
