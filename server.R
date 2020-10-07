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
    
    output$slider_io <- renderPlot({
        input$Slider-input
    })
    
    output$slider_io_2 <- renderPlot({
        input$Slider-input2
    })
    
    output$text_area_io <- renderText({
        input$text_area
    })
    
    output$action_bt_io <- renderText({
        input$action_button
    })
    
    
})
