#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$A <- renderPlot({

       if(input$vs & input$mpg){
           plot(mtcars$mpg,mtcars$vs,main="vs Vs Mpg", xlab = "mpg", ylab="vs")
           glm1 <- glm(vs~mpg,data=mtcars,family="binomial")
           points(mtcars$mpg,glm1$fitted,col="red")
           
       }
       else if(input$am & input$mpg){
            plot(mtcars$mpg,mtcars$am,main="am Vs Mpg", xlab = "mpg", ylab="am")
            glm1 <- glm(am~mpg,data=mtcars,family="binomial")
            points(mtcars$mpg,glm1$fitted,col="red")
            
       }
        else if(input$vs & input$disp){
            plot(mtcars$disp,mtcars$vs,main="vs Vs disp", xlab = "disp", ylab="vs")
            glm1 <- glm(vs~disp,data=mtcars,family="binomial")
            points(mtcars$disp,glm1$fitted,col="red")
            
        } 
        else if(input$am & input$disp){
            plot(mtcars$disp,mtcars$am,main="am Vs disp", xlab = "disp", ylab="am")
            glm1 <- glm(am~disp,data=mtcars,family="binomial")
            points(mtcars$disp,glm1$fitted,col="red")
            
        }
        else if(input$vs & input$hp){
            plot(mtcars$hp,mtcars$vs,main="vs Vs hp", xlab = "hp", ylab="vs")
            glm1 <- glm(vs~hp,data=mtcars,family="binomial")
            points(mtcars$hp,glm1$fitted,col="red")
            
        } 
        else if(input$am & input$hp){
            plot(mtcars$hp,mtcars$am,main="am Vs hp", xlab = "hp", ylab="am")
            glm1 <- glm(am~hp,data=mtcars,family="binomial")
            points(mtcars$hp,glm1$fitted,col="red")
            
        } 
        
        else if(input$vs & input$drat){
            plot(mtcars$drat,mtcars$vs,main="vs Vs drat", xlab = "drat", ylab="vs")
            glm1 <- glm(vs~drat,data=mtcars,family="binomial")
            points(mtcars$drat,glm1$fitted,col="red")
            
        } 
        else if(input$am & input$drat){
            plot(mtcars$drat,mtcars$am,main="am Vs drat", xlab = "drat", ylab="am")
            glm1 <- glm(am~drat,data=mtcars,family="binomial")
            points(mtcars$drat,glm1$fitted,col="red")
            
        } 
        else if(input$vs & input$wt){
            plot(mtcars$wt,mtcars$vs,main="vs Vs wt", xlab = "wt", ylab="vs")
            glm1 <- glm(vs~wt,data=mtcars,family="binomial")
            points(mtcars$wt,glm1$fitted,col="red")
            
        }
        else if(input$am & input$wt){
            plot(mtcars$wt,mtcars$vs,main="am Vs wt", xlab = "wt", ylab="am")
            glm1 <- glm(am~wt,data=mtcars,family="binomial")
            points(mtcars$wt,glm1$fitted,col="red")
            
        } 
        else if(input$am & input$qsec){
            plot(mtcars$qsec,mtcars$vs,main="am Vs qsec", xlab = "qsec", ylab="am")
            glm1 <- glm(am~qsec,data=mtcars,family="binomial")
            points(mtcars$qsec,glm1$fitted,col="red")
            
        } 
        else if(input$vs & input$qsec){
            plot(mtcars$qsec,mtcars$vs,main="vs vs qsec", xlab = "qsec", ylab="vs")
            glm1 <- glm(vs~qsec,data=mtcars,family="binomial")
            points(mtcars$qsec,glm1$fitted,col="red")
            
        } 
        
        
    })
    
    
    
    
        
    output$A1 <- renderPrint(
                
       if(input$vs & input$mpg){
            glm1 <- glm(vs~mpg,data=mtcars,family="binomial")
            summary(glm1)
       }
       else if(input$am & input$mpg){
           glm1 <- glm(am~mpg,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$vs & input$disp){
           glm1 <- glm(vs~disp,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$am & input$disp){
           glm1 <- glm(am~disp,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$vs & input$hp){
           glm1 <- glm(vs~hp,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$am & input$hp){
           glm1 <- glm(am~hp,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$vs & input$drat){
           glm1 <- glm(vs~drat,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$am & input$drat){
           glm1 <- glm(am~drat,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$vs & input$wt){
           glm1 <- glm(vs~wt,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$am & input$wt){
           glm1 <- glm(am~wt,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$vs & input$qsec){
           glm1 <- glm(vs~qsec,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$am & input$qsec){
           glm1 <- glm(am~qsec,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$vs & input$all){
           glm1 <- glm(vs~.,data=mtcars,family="binomial")
           summary(glm1)
       }
       else if(input$am & input$all){
           glm1 <- glm(am~.,data=mtcars,family="binomial")
           summary(glm1)
       }
       
                
   )
    
    
    
    
            
            
        
   
        
})


