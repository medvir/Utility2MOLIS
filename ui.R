# Utility2MOLIS

library(shiny)
library(readxl)
library(tidyverse)

###
shinyUI(fluidPage(
    titlePanel("Utility2MOLIS"),
    fluidRow(
        column(3,
               wellPanel(
                   fileInput("pcr_file", "SARS Utility raw data [.xls/.xlsx]:", accept = c(".xls",".xlsx")),
                   downloadButton("pdf_export", "PDF Export")
                   )
               ),
        column(9,
               tableOutput("results")
               )
        )
    ))