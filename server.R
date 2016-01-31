library(shiny)
#library(rdrop2)
library(dplyr)
library(ggplot2)
library(scales)
library(rCharts)


#drop_auth(cache = F)

#usertypexfuente <- drop_read_csv("/starcom/usertypexfuente.csv")


#usertypexfuente$date <- as.Date(usertypexfuente$date)



### Shiny part


shinyServer(function(input, output) {
        
            output$contents <- renderTable({
              # input$file1 will be NULL initially. After the user selects
              # and uploads a file, it will be a data frame with 'name',
              # 'size', 'type', and 'datapath' columns. The 'datapath'
              # column will contain the local filenames where the data can
              # be found.
              
              inFile <- input$file1
              
              if (is.null(inFile))
                return(NULL)
              
              read.csv(inFile$datapath, header = input$header,
                       sep = input$sep, quote = input$quote)
              
              
              
              
              
              
            
            
              })
         
                
#         
#         output$testPlot <- renderChart2({
#                 
#           
#         
#           
#                 
#           inFile2 <- inFile[inFile$date >= input$dates[1]
#                                                     & inFile$date <= input$dates[2], ]
#                 
#  
#           inFile2 <- inFile2[inFile2$fuente %in% input$show_vars, ]
#                 
#                 
#           inFile2 <- inFile2 %>%
#                         group_by(fuente) %>%
#                         summarise(sessions = sum(sessions))
#                 
#                 
#                 
#                 h1 <- hPlot(x = "fuente", y = "sessions", data = inFile2, type = c("column"))
#                 
#                 h1$tooltip(formatter="#!function () {
#                            return 'Sesiones '  +
#                            ': <b>' + this.y + '</b>' +  ' (' + this.x + ')' ;
#         }!#")
#                 
#                 h1$title(text = "Sesiones por fuente")
#                 h1$exporting(enabled=TRUE)
#                 
#                 return(h1)
#                 
#                 
#         
#         })
#         
#         
#         
#         
#         
#         
#         ############
#         
#         output$testPlot2 <- renderChart2({
#                 ### Gráficos 
#                 
#                 usertypexfuente4 <- usertypexfuente[usertypexfuente$date >= input$dates[1]
#                                                     & usertypexfuente$date <= input$dates[2], ]
#                 
#                 
#                 usertypexfuente4 <- usertypexfuente4[usertypexfuente4$fuente %in% input$show_vars, ]
#                 
#                 #usertypexfuente4 <- usertypexfuente2[usertypexfuente2$fuente %in% input$show_vars, ]
#                 usertypexfuente4 <- usertypexfuente4[usertypexfuente4$fuente %in% input$show_vars, ]
#                 
#                 
#                 
#                 
#                 usertypexfuente4 <- usertypexfuente4 %>%
#                         group_by(device.category, fuente) %>%
#                         summarise(sessions = sum(sessions))
#                 
#                 
#                 
#                 
#                 
#                 h2 <- hPlot(x = "device.category", y = "sessions", group = "fuente",  data = usertypexfuente4, type = c("column"))
#                 
#                 # h1$tooltip(formatter="#!function () {
#                 #                            return 'Sesiones '  +
#                 #                            ': <b>' + this.y + '</b>' +  ' (' + this.x + ')' ;
#                 #         }!#")
#                 
#                 
#                 
#                 h2$title(text = "Sesiones por dispositivo")
#                 h2$yAxis(title = list(text = "Sesiones por dispositivo"))
#                 
#                 h2$exporting(enabled=TRUE)
#                 
#                 return(h2)
#                 
#                 
#                 
#                 
#                 
#         })
        
        ############
  
 
        #output$value <- renderPrint({ input$dates[1] })
        
})