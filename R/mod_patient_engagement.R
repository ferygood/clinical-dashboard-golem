#' patient_engagement UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_patient_engagement_ui <- function(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      bs4Dash::box(
        title = "Knee Replacement Patient Engagements Rates (2014-2024)",
        width = 12,
        DT::DTOutput(ns("engagement_table"))
      )
    )
 
  )
}
    
#' patient_engagement Server Functions
#'
#' @noRd 
mod_patient_engagement_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns

    engagement_data <- reactive({
      readr::read_csv(
        system.file("extdata", "engagement_knee_replacements.csv", package="clinicalDashboard"),
        show_col_types = FALSE
      )
    })

    output$engagement_table <- DT::renderDT({
      df <- engagement_data()
      DT::datatable(
        df,
        options = list(pageLength = 15, scrollX=TRUE),
        rownames=FALSE
      )
    })
 
  })
}
    
## To be copied in the UI
# mod_patient_engagement_ui("patient_engagement_1")
    
## To be copied in the server
# mod_patient_engagement_server("patient_engagement_1")
