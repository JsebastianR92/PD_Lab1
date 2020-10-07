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
    
    output$date_io <- renderText({
        paste("", as.character(input$date_input))
    })
    
    output$single_box_io <- renderText({
        input$single_box
    })
    
    output$multiple_box_io <- renderText({
        group_box <- paste(input$group_box, collapse = ", ")
        paste("", group_box)
    })
    
    output$text_io <- renderText({
        input$text_input
    })
    
    output$text_area_io <- renderText({
        input$text_area 
    })
    
    output$action_bt_io <- renderText({
        input$action_button
    })
    
    output$action_at_io <- renderText({
        input$action_link
    })
    
})
