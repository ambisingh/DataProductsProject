# Creating the data frame:

Teams <- c("Australia",
           "India",
           "NewZealand", 
           "SriLanka",
           "SouthAfrica",
           "Pakistan",
           "Bangladesh", 
           "WestIndies",
           "Ireland",
           "England",
           "Afghanistan",
           "Zimbabwe",
           "Scotland",
           "UnitesArabEmirates")

Played <- c(9,8,9,8,7,7,7,7,6,6,6,6,6,6)
Won <- c(9,7,8,4,5,4,4,4,3,2,1,1,0,0)
Points <- c(18,14,16,8,10,8,8,8,6,4,2,2,0,0)

leagueTable <- data.frame(Teams, Played, Won, Points)

shinyServer(
  function(input, output) {
  output$lTable <- renderDataTable(leagueTable, 
                                   options=list(paging = FALSE, searching = FALSE))
  newZealand <- reactive({
    switch(input$newZealand, "win" = 2, "draw" = 1, "loss" = 0)
  })
  
  india <- reactive({
                switch(input$india, "win" = 2, "draw" = 1, "loss" = 0)
                })
  
  southAfrica <- reactive({
                switch(input$southAfrica, "win" = 2, "draw" = 1, "loss" = 0)
                })
  
  pakistan <- reactive({
                switch(input$pakistan, "win" = 2, "draw" = 1, "loss" = 0)
                })
 
   bangladesh <- reactive({
    switch(input$bangladesh, "win" = 2, "draw" = 1, "loss" = 0)
  })
  
  sriLanka <- reactive({
            switch(input$sriLanka, "win" = 2, "draw" = 1, "loss" = 0)
  })
  
  westIndies <- reactive({
                 switch(input$westIndies, "win" = 2, "draw" = 1, "loss" = 0)
                })
  
  
  output$totalPoints <- renderText({
    paste("Australia total points: ", 
           18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
           westIndies(), " points")
      })
  
  output$newZealandRequire <- renderText({
  paste("New Zealand would need ", 
        18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
          westIndies() - 16, " points to win the match")})

  output$indiaRequire <- renderText({
    paste("India would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 14, " points to win the match")})
  
  output$southAfricaRequire <- renderText({
    paste("South Africa would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() -10, " points to win the match")})
  
  output$pakistanRequire <- renderText({
    paste("Pakistan would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 9, " points to win the match")})
  
  output$bangladeshRequire <- renderText({
    paste("Bangladesh would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 8, " points.")})
  
  output$sriLankaRequire <- renderText({
    paste("Sri Lanka would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 8, " points to win the match")})
  
  output$westIndiesRequire <- renderText({
    paste("West Indies would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 8, " points to win the match")})
  
  output$irelandRequire <- renderText({
    paste("Ireland would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 6, " points to win the match")})
  
  output$englandRequire <- renderText({
    paste("England would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 4, " points to win the match")})
  
  
  output$afganistanRequire <- renderText({
    paste("Afganistan would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 2, " points to win the match")})
  
  output$zimbabweRequire <- renderText({
    paste(" Zimbabwe would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 2, " points to win the match")})
  
  output$scotlandRequire <- renderText({
    paste("Scotland would need ", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 0, " points to win the match")})
  
  output$unitedArabEmiratesRequires <- renderText({
    paste("United Arab Emirates would need", 
          18 + newZealand() + india() + southAfrica() + pakistan() + bangladesh() + sriLanka() +
            westIndies() - 0, " points to win the match")})
               
        }

)