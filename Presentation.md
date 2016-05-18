

Predication of Qualifying Final Matches
========================================================
author: Ambika Singh
date: 17th May 2016

========================================================

For more details on authoring R presentations please visit <https://support.rstudio.com/hc/en-us/articles/200486468>.

- This project will help to predicate wheather Australia will win or not at the end of session.
- How much points other teams need to win the final matches
- On the left side it display the score board of each teams i.e. points, match played, won , lost by each teams.
- There are two R file:
    * ui.R
    * server.R

========================================================

## The ui.R file
* fluidPage layout is used.

* To ensure that all the information is properly displayed, the tabsetPanel has been used to effectively put multiple pages all on one page.

* Radio buttons have been used so the it will be easy for users to select the choice.


```r
library(shiny)
radioButtons("southAfrica","18 March - South Africa vs Australia",
  c("Win" = "Win", "Draw" = "Draw","Lost" = "Lost"),inline=TRUE)
```

========================================================
## The server.R file


```r
output$lTable <- renderDataTable(leagueTable, options=list(paging = FALSE,searching = FALSE))
```
* Following function:

```r
 newZealand <- reactive({
    switch(input$newZealand, "Win" = 2, "draw" = 1, "lost" = 0)
  })
```
* Makes use of the renderDataTable function. This means that the results can be stored in server.R as a data frame for easy R calculation.
* Turning a radio buttin input from text into a number is not trivial and the switch function must be used.

========================================================
## The Calculations
* The points are assigned to each matches similarly to this. Then the total points are calculated:


```r
output$totalPoints <- renderText({
    paste("Australia total points: ", 
           18 + india() + newZealand() + bangladesh() + southAfrica() + sriLanka() + pakistan() + 
           westIndies(), " points")
      })
```
* Other teams point is calculated as:

```r
output$newZealandRequire <- renderText({
  paste("New Zealand would need ", 
  18 + india()  + bangladesh() + southAfrica() + sriLanka() + pakistan() + westIndies() +        newZealand() - 16, " points to win the match")})
```
