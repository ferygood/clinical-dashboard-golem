#' vitals UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_vitals_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' vitals Server Functions
#'
#' @noRd 
mod_vitals_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_vitals_ui("vitals_1")
    
## To be copied in the server
# mod_vitals_server("vitals_1")
