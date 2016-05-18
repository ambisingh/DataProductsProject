shinyUI(fluidPage(
  pageWithSidebar(
    #Application Title
    headerPanel("Cricket Matches"),
    sidebarPanel(
    dataTableOutput('lTable')
),
    
mainPanel(
  tabsetPanel(
  tabPanel("About the Application",
    p("This application will help in predict the result for each of remaining qualifying matches of cricket world cup. 
       in the Final Matches tab, we can then click on the tab called At the End to know points require by other team to win"),
    p("The current score board is shown on the left side.")),
  
  tabPanel("Final Matches",
  
  radioButtons("southAfrica","18 March - South Africa vs Australia",
  c("win" = "win", "draw" = "draw","loss" = "loss"),inline=TRUE),
  
  radioButtons("india", "19 March  Australia vs India",
  c("win" = "win", "draw" = "draw","loss" = "loss"),inline=TRUE),
  
  radioButtons("pakistan", "20 March  Australi vs Pakistan",
  c("win" = "win", "draw" = "draw","loss" = "loss"),inline=TRUE),
  
  radioButtons("westIndies", "21 March  Australia vs West Indies",
  c("win" = "win", "draw" = "draw","loss" = "loss"),inline=TRUE),
  
  radioButtons("sriLanka", "24 March  Australia vs Sri Lanka",
  c("win" = "win", "draw" = "draw","loss" = "loss"),inline=TRUE),
  
  radioButtons("newZealand", "26 March  Australia vs New Zealand",
  c("win" = "win", "draw" = "draw","loss" = "loss"),inline=TRUE),
  
  radioButtons("bangladesh", "29 March  Australia vs Bangladesh",
  c("win" = "win", "draw" = "draw","loss" = "loss"),inline=TRUE)),
  
  tabPanel("At the End", 
        textOutput("totalPoints"),
        textOutput("newZealandRequire"),
        textOutput("indiaRequire"),
        textOutput("southAfricaRequire"),
        textOutput("pakistanRequire"),
        textOutput("bangladeshRequire"),
        textOutput("sriLankaRequire"),
        textOutput("westIndiesRequire"),
        textOutput("irelandRequire"),
        textOutput("englandRequire"),
        textOutput("afganistanRequire"),
        textOutput("zimbabweRequire"),
        textOutput("scotlandRequire"),
        textOutput("unitedArabEmiratesRequires"))
        )
))))