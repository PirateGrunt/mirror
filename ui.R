library(shinydashboard)

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
      menuItem("Pix", tabName = "pix", icon = icon("images"))
    , menuItem("Analytix", tabName = "analytix", icon = icon("chart-line"))
    , menuItem("Properties", tabName = 'properties', icon = icon("cog"))
  )
)

body <- dashboardBody(
  tabItems(
    tabItem(
        tabName = 'pix'
      , h1('Pictures go here')
      , box(imageOutput("image1", height = 300))
      , box(imageOutput("image2", height = 300))
    ),
    tabItem(
        tabName = 'analytix'
      , h2('We can plot # of pictures by date')
      , h2('We can plot color by date')
    ),
    tabItem(
      tabName = 'properties'
    )
  )
)

ui <- dashboardPage(
    header
  , sidebar
  , body
)
