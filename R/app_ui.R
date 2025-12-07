#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import bs4Dash
#' @import DT
#' @noRd

app_ui <- function(request) {
  dashboardPage(
    title = "NHS Knee PROMs Dashboard",
    
    # ── Header ─────────────────────
    dashboardHeader(
      title = span("Knee PROMs Dashboard", 
                   style = "font-size: 1.5rem; font-weight: bold;")
    ),
    
    # ── Sidebar ────────────────────
    dashboardSidebar(
      skin = "light",
      sidebarMenu(
        menuItem(
          text = "Patient Engagement",
          tabName = "engagement",
          icon = icon("users")
        )
        # 之後可以再加其他分頁
      )
    ),
    
    # ── Body ───────────────────────
    dashboardBody(
      tabItems(
        tabItem(
          tabName = "engagement",
          # 這裡呼叫你的 golem module UI
          mod_patient_engagement_ui("engagement_mod")
        )
      )
    )
  )
}