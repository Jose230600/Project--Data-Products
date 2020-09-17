#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Project-Logistic regression"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
           h2("Documentation"),
           em("In this app, we are gonna to fit a logistic regression model trying to predict the vs or am variable of the mtcars set, and using as predictors what you choose, for this you should  select one outcome am or vs, and select one predictor,  also you can chose all the varibles as predictors, in every case you will see the summary for you can meke your interpretations"),
           h3("select the outcome(if you change you have first to uncheck what you have chosen before, or  the default "),
           checkboxInput("vs","Outcome as vs",value=TRUE),
           checkboxInput("am","Outcome as am",value=FALSE),
           h3("Select the predictor"),
           checkboxInput("mpg","predictor as mpg",value=TRUE),
           checkboxInput("disp","predictor as disp",value=FALSE),
           checkboxInput("hp","predictor as hp",value=FALSE),
           checkboxInput("drat","predictor as drat",value=FALSE),
           checkboxInput("wt","predictor as wt",value=FALSE),
           checkboxInput("qsec","predictor as qsec",value=FALSE),
           h3("Check if you want all the variables as predictors of the outcome you choose" ),
           checkboxInput("all","All as predictors",value=FALSE)
           
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("A"),
            tabsetPanel(type="tabs",
                        tabPanel("Summary", verbatimTextOutput("A1")))
            
        )
    )
))
