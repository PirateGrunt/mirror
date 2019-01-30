library(shinydashboard)
source('tab_pix.R')

task_menu <- dropdownMenu(
    type = "tasks"
  , badgeStatus = "success"
  , taskItem(
      value = 17
    , color = "green"
    , "Storage used"
  )
  , taskItem(
      value = 17
    , color = "orange"
    , "Some other thing"
  )
)

header <- dashboardHeader(
    title = "I'll be your mirror"
  , task_menu
)

sidebar <- dashboardSidebar(
  sidebarMenu(
      mnu_pix
    , menuItem("Analytix", tabName = "analytix", icon = icon("chart-line"))
    , menuItem("Properties", tabName = 'properties', icon = icon("cog"))
  )
)

body <- dashboardBody(
  tabItems(
      tab_pix
    , tabItem(
          tabName = 'analytix'
        , h2('We can plot # of pictures by date')
        , h2('We can plot color by date')
      )
    , tabItem(
      tabName = 'properties'
    )
  )
)

ui <- dashboardPage(
    header
  , sidebar
  , body
)
