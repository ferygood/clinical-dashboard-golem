#' profile UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_profile_ui <- function(id) {
  ns <- NS(id)
  tagList(
 
  )
}
    
#' profile Server Functions
#'
#' @noRd 
mod_profile_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_profile_ui("profile_1")
    
## To be copied in the server
# mod_profile_server("profile_1")
