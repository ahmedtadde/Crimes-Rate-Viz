shinyUI(fluidPage(
    tags$head(
      tags$link(rel="stylesheet", type="text/css", href="app.css"),
      tags$link(rel="stylesheet", type="text/css", href="https://fonts.googleapis.com/css?family=Abel")
    ),
    
    titlePanel("Uniform Crime Reports (UCR) Viz"),
    
    mainPanel(
        p(class="text-small",
          a(href="http://ahmedtadde.github.io/Datanaut", target="_blank", "by Ahmed Tadde"),
          a(href="https://github.com/ahmedtadde", target="_blank", icon("github")), " | ",
          a(href="https://www.linkedin.com/in/ahmedtadde", target="_blank", icon("linkedin"))),
        hr(),
        p(class="text-small", "All data is derived from the FBI's : ",
          a(href="http://www.fbi.gov/about-us/cjis/ucr/", target="_blank", "Uniform Crime Reports (UCR)"),
          " website.  Rates are measured in per 100,000 population."),
        hr(),
        tabsetPanel(id="tabset",
                    tabPanel("Heatmaps",
                             h2("Heatmaps"),
                             p(class="text-small", "Series of heatmaps visualizing crime rates in states.  Major recession periods are outlined in blue"),
                             p(class="text-small", "Three colors are used to display overall values of the data subset: blue (below average), red (above average), white (average)."),
                             hr(),
                             h3("State-Time Heatmap"),
                             p(class="text-small", "This section visualizes heatmap of crime rates of states over the years."),
                             fluidRow(
                                 column(3,
                                        selectInput(inputId="state_time_crimes", label="Select Crimes", choices=choices$crimes, selected=choices$crimes[[1]]),
                                        sliderInput("state_time_years", label="Filter Years", min=min(choices$years), max=max(choices$years),
                                                    value=c(min(choices$years), max(choices$years)), step=1),
                                        checkboxGroupInput(inputId="state_time_states", label="Select States", choices=choices$states, selected=choices$states, inline=TRUE)
                                 ),
                                 column(9,
                                        plotOutput("state_time_heatmap", height=500, width="auto")
                                 )
                             ),
                             hr()
                             
                    ),
                    
                    tabPanel("Correlations",
                             h2("Correlations"),
                             p(class="text-small", "Correlation matrix of various types of crimes.  Use the widgets to filter a data subset."),
                             p(class="text-small", "The number of years in the dataset provides a sample size for calculating correlation of crime rates."),
                             hr(),
                             fluidRow(
                                 column(3,
                                        selectInput(inputId="correlation_states", label="Select State", choices=choices$state_names, selected=choices$state_names[[5]]),
                                        sliderInput(inputId="correlation_years", label="Filter Years", min=min(choices$years), max=max(choices$years),
                                                    value=c(min(choices$years), max(choices$years)), step=1)
                                 ),
                                 column(9,
                                        plotOutput("crime_correlations", height=500, width="auto")
                                 )
                             ),
                             hr()
                    ),
                    
                    tabPanel("Data",
                             p(class="text-small", "Tabular searchable data display similar to that found in the ",
                               a(href="http://www.ucrdatatool.gov/Search/Crime/State/StatebyState.cfm", target="_blank", "original source")),
                             p(class="text-small", "You can download the data as a CSV or EXCEL file by pressing the buttons above."),
                             dataTableOutput("crimes_datatable"),
                             hr()
                    )
        ),
        width=12
    )
))
