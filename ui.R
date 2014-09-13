# ui.R

shinyUI(fluidPage(
    titlePanel("Inference: Distribution of Means"),
    
    sidebarLayout(
        sidebarPanel( 
              helpText("Move the slider to see how changing the size
                       of the population sample changes the shape of the 
                       distribution of means."),
              sliderInput("n",
                    label="Size of Populations",
                    min=5,max=50,step=3,value=25)        
                          ),
        
        mainPanel(
            plotOutput("plot"),
            textOutput("pop")
            )
    )
))