# server.R

shinyServer(function(input, output) {
    
    output$pop <- renderText({ 
       paste("1000 samples of size", input$n)
    })
   
    output$plot<- renderPlot({
        set.seed(2)
        matty<- matrix(rexp(1000*input$n,rate=.2),1000)
        x<-apply(matty, 1, mean)
        hist(x,col="lightblue",main="Distribution of Means",
             xlab="Mean Values" ,freq=FALSE)
        m=mean(x)
        s=sd(x)
        curve(dnorm(x,mean=m,sd=s),col="darkblue",lwd=6, add=TRUE)
        abline(v=m,lwd=4,col="red")
    })
    

}
)