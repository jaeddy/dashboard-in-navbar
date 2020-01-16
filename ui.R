################################################################################	
# Define general header tag list	
# List of tags to display as a common header above all tabPanels.	
################################################################################

headerTagList <- list(	
    tags$style(type = "text/css", ".navbar .navbar-nav {float: right; font-size: 14px} .navbar .navbar-nav li a {font-size: 14px} .nav-tabs {font-size: 12px}"),
    tags$base(target = "_blank")	
)

################################################################################	
# Define the full user-interface, `ui`	
################################################################################

ui <- navbarPage(
    includeCSS("www/custom.css"),
    title = strong("Demo"), selected = "DashboardNavTab",	
    tabPanel("DashboardNavTab", 
             dashboardPage(
                 dashboardHeader(disable = TRUE),
                 dashboardSidebar(
                     sidebarMenu(
                         id = "dashtabs",
                         menuItem("Dashboard Home",
                                  tabName = "home",
                                  icon = icon("dashboard")
                         ),
                         menuItem("Dashboard Pages",
                                  icon = icon("bar-chart"), startExpanded = TRUE,
                                  menuSubItem(
                                      "Page 1",
                                      tabName = "page1",
                                      icon = icon("cog")
                                  ),
                                  menuSubItem(
                                      "Page 2",
                                      tabName = "page2",
                                      icon = icon("cog")
                                  )
                         )
                     )
                 ),
                 dashboardBody(
                     tabItems(
                         tabItem(
                             tabName = "home",
                             h1("Dashboard Home")
                         ),
                         tabItem(
                             tabName = "page1",
                             h1("Page 1")
                         ),
                         tabItem(
                             tabName = "page2",
                             h1("Page 2")
                         )
                     )
                 )
             ), 
             icon = icon("bar-chart")),	
    tabPanel("AboutNavTab",
             fluidPage(
                 h1("Hello!")
             ),
             icon = icon("info-circle")),	
    header = headerTagList,	
    collapsible = TRUE,	inverse = TRUE,
    windowTitle = "CRI iAtlas Portal"
)	

shinyUI(ui)

