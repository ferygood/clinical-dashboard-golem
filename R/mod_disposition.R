#' disposition UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_disposition_ui <- function(id) {
  ns <- NS(id)
  tagList(
    h3("Disposition Data"),
    tableOutput(ns("dm_table"))
  )
}

#' disposition Server Functions
#'
#' @noRd
mod_disposition_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
    dm_path <- system.file("extdata", "dummy_stdm/DM.csv", package="clinicalDashboard")
    dm <- read.csv(dm_path)
    output$dm_table <- renderTable({
      dm
    })

  })
}

## To be copied in the UI
# mod_disposition_ui("disposition_1")

## To be copied in the server
# mod_disposition_server("disposition_1")
