#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(lubridate)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Shiny Lab 1"),
    tabsetPanel(tabPanel("Inputs Examples",
                         sidebarLayout(
                             sidebarPanel(
                                 sliderInput("Slider-input",
                                             "Seleccione valor",
                                             value =50,
                                             min = 0,
                                             max = 100,
                                             step = 10,
                                             post = '%', animate = TRUE),
                                 sliderInput("Slider_input2",
                                             "Seleccione un rango",
                                             value =c(0,200),
                                             min = 0,
                                             max = 200,
                                             step = 10,
                                             animate = TRUE),
                                 selectInput('select_input', "Seleccione un auto",
                                             choices = rownames(mtcars),
                                             selected = "Camaro Z28",
                                             multiple = FALSE),
                                 selectizeInput('select_input_2',
                                                "Seleccione autos: ",
                                                choices = rownames(mtcars),
                                                selected = "Camaro Z28",
                                                multiple = TRUE),
                                 dateInput('date_input', "Ingrese la fecha:",
                                           value = today(),
                                           min = today()-60,
                                           max = today()+30,
                                           language = 'es',
                                           weekstart = 1),
                                 dateRangeInput("date-range",
                                                "Ingrese Fechas",
                                                start = today()-7,
                                                end = today(),separator = 'a'),
                                 numericInput("numeric_input", 
                                              "Ingrese un numero: ",
                                              value = 10, min = 0, max = 100, step = 1),
                                 checkboxInput("single_box", 
                                               "Sleccione si verdadero:", value = FALSE),
                                 checkboxGroupInput("group_box", 
                                                    "Seleccione opciones: ",
                                                    choices = LETTERS[1:5]),
                                 radioButtons("radio_ex", "Seleccione Genero",
                                              choices =c("masculino", "Femenino")),
                                 textInput("text_input","ingrese texto:"),
                                 textAreaInput("text_area", "Ingrese Parrafo"),
                                 actionButton("action_button", "ok"),
                                 actionLink("action_link","Siguiente")
                                 ##submitButton(text = "Autorizar")
                                 
                             ),
                             
                             mainPanel(
                                 h2("Slider input sencillo"),
                                 verbatimTextOutput("slider_io"),
                                 
                                 h2("Slider input rango"),
                                 verbatimTextOutput("slider_io_2"),
                                 
                                 h2("Select input"),
                                 verbatimTextOutput("select_io"),
                                 
                                 h2("select input multiple"),
                                 verbatimTextOutput("select_io_multi"),
                                 
                                 h2("Fecha"),
                                 verbatimTextOutput('date_io'),
                                 
                                 h2('Rango de fechas'),
                                 verbatimTextOutput('range_io'),
                                 
                                 h2('Numeric Input'),
                                 verbatimTextOutput('numeric_io'),
                                 
                                 h2('single Checkbox'),
                                 verbatimTextOutput('single_box_io'),
                                 
                                 h2('Grouped checkbox'),
                                 verbatimTextOutput('multiple_box_io'),
                                 h2("Radio Buttons"),
                                 verbatimTextOutput("radio_io"),
                                 h2('Texto'),
                                 verbatimTextOutput("text_io"),
                                 h2('Parrafo'),
                                 verbatimTextOutput("text_area_io"),
                                 h2('Action Button'),
                                 verbatimTextOutput("action_bt_io"),
                                 h2('Action Link'),
                                 verbatimTextOutput("action_at_io")
                             )
                         )))

    
))
