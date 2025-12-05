#' ae UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_ae_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' ae Server Functions
#'
#' @noRd 
mod_ae_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_ae_ui("ae_1")
    
## To be copied in the server
# mod_ae_server("ae_1")
