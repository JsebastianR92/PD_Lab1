library (shiny)
library(readr)


shinyServer(function(input, output) {
    
    
    
    upload_file <- reactive({
        file_content <- input$upload_file
        if( is.null(file_content)){
            return(NULL)
        }
    
    data_file <- read.csv(file_content$datapath)
    return(datafile)
    })
    
    output$file_content_show <- DT::renderDataTable({
        DT::datatable(upload_file())
    })
    
    output$radio_io <- renderText({
        input$radio_ex
    })
    
    output$`slider_io` <- renderText({
        paste0(c('Output Slider input:', input$`Slider-input`),
               collapse ='')
    })
    
    
    output$slider_io_2 <- renderText({
        input$Slider_input2
    })
    
    output$text_area_io <- renderText({
        input$text_area
    })
    
    output$select_io <- renderText({
        input$select_input
    })
    
    output$select_io_multi <- renderText({
        input$select_input_2
    })

    output$date_io <- renderText({
        paste("", as.character(input$date_input))
    })
    
    output$range_io  <- renderText({
        paste("", 
              paste(as.character(input$`date-range`), collapse = " to ")
        )
    })    
    output$numeric_io <- renderText({
        input$numeric_input
    })
    
})
