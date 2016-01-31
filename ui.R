library(shiny)
library(rCharts)

shinyUI(fluidPage(
        titlePanel("Cliente X"),
        sidebarLayout(
                sidebarPanel(
                        p("Dashboard trabajado por X para Cliente Y"),
                        img(src="mylogo.png", height = 80, width = 80),
                        br(),
                        br(),
                        
                        fileInput('file1', 'subir data (csv)',
                                  accept = c(
                                    'text/csv',
                                    'text/comma-separated-values',
                                    'text/tab-separated-values',
                                    'text/plain',
                                    '.csv',
                                    '.tsv'
                                  )
                        ),
                        tags$hr(),
                        checkboxInput('header', 'Header', TRUE),
                        radioButtons('sep', 'Separator',
                                     c(Comma=',',
                                       Semicolon=';',
                                       Tab='\t'),
                                     ','),
                        radioButtons('quote', 'Quote',
                                     c(None='',
                                       'Double Quote'='"',
                                       'Single Quote'="'"),
                                     '"'),
                        tags$hr(),
                        
                
                      
                        dateRangeInput("dates", label = h3("Rango de fechas"),
                                       start = "2015-01-01", end = "2015-11-01",
                                       max = Sys.Date(),
                                       language = "es",
                                       separator = "-", width = "80%"),
                        br()),
#                         checkboxGroupInput('show_vars', 'Columns in diamonds to show:',
#                                            as.character(unique(a$fuente)), selected = as.character(unique(a$fuente)))),
                mainPanel(
                        tabsetPanel(
                                tabPanel("Data", tableOutput('contents')),
                                tabPanel("Google Analytics", showOutput("testPlot", "highcharts"),
                                         showOutput("testPlot2", "highcharts")),
                                tabPanel("Adwords", showOutput("testPlot3", "highcharts"),
                                         showOutput("testPlot4", "highcharts"))
                               
                        )
                    
                )
)
))


