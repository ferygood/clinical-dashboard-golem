#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    fluidPage(
      # multi-page structured clinical dashboard
      navbarPage(
        title = "Clinical Dashboard",
        tabPanel("Disposition", mod_disposition_ui("disposition")),
        tabPanel("Adverse Events", mod_ae_ui("ae")),
        tabPanel("Laboratory", mod_lab_ui("lab")),
        tabPanel("Vitals", mod_vitals_ui("vitals")),
        tabPanel("Subject Profile", mod_profile_ui("profile")),
        tabPanel("TFL Generator", mod_tfl_ui("tfl"))
      )
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "clinicalDashboard"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
