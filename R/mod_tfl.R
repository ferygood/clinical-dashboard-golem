#' tfl UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_tfl_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' tfl Server Functions
#'
#' @noRd 
mod_tfl_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_tfl_ui("tfl_1")
    
## To be copied in the server
# mod_tfl_server("tfl_1")
