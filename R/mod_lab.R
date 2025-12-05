#' lab UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_lab_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' lab Server Functions
#'
#' @noRd 
mod_lab_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_lab_ui("lab_1")
    
## To be copied in the server
# mod_lab_server("lab_1")
