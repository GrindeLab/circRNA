
library(shiny)

## create a two functions to allow me to create subgroups for radioButton
radioSubgroup <- function(inputId, label, choices, inline = FALSE) {
    
    rb <- radioButtons(inputId, label, choices, selected = character(0), inline = inline)
    rb$children
}

radioGroupContainer <- function(inputId, ...) {
    class <- "form-group shiny-input-radiogroup shiny-input-container"
    div(id = inputId, class = class, ...)
}

ui <- fluidPage(
    titlePanel("Choose a circRNA or miRNA to display the corresponding circos graph"),
    sidebarPanel(
        fluidRow(
            radioGroupContainer("picture",
                                fluidRow(
                                    column(4, radioSubgroup("picture", "circRNA", choices = c("ALL","SATB1-AS1","PHC#",
                                                                                              "ANKRD17", "HIPK3",
                                                                                              "ZNF609"))),
                                    column(4, radioSubgroup("picture", "miRNA", choices = c("MIR224","MIR22",
                                                                                            "MIR125B2","MIR219A1",
                                                                                            "MIR145","MIR141",
                                                                                            "MIR197","MIR140",
                                                                                            "MIR203A","MIR105-1",
                                                                                            "MIR128-1","MIR143",
                                                                                            "MIR150","MIR17",
                                                                                            "MIR26B","MIR149"
                                                                                            )))
                                )
            )
        )
       
        ),
    mainPanel(
        
           imageOutput('image'))
        )
    

server <- function(input, output, session) {
    
    output$image <- renderImage({
        if (is.null(input$picture))
            return(list(
                src = "www/AllCircos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "All"
            ))
        
        if (input$picture == "ALL") {
            return(list(
                src = "www/AllCircos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "All"
            ))
        } else if (input$picture == "SATB1-AS1") {
            return(list(
                src = "www/SATB1-AS1Circos-1.png",
                width = 700,
                hieght = 700,
                filetype = "image/jpeg",
                alt = "SATB1-AS1"
            ))
        } else if (input$picture == "ANKRD17") {
            return(list(
                src = "www/ANKRD17Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "ANKRD17"
            ))
        } else if (input$picture == "PHC#") {
            return(list(
                src = "www/PHC#Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "PHC#"
            ))
        } else if (input$picture == "HIPK3") {
            return(list(
                src = "www/HIPK3Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "HIPK3"
            ))
        } else if (input$picture == "ZNF609") {
            return(list(
                src = "www/ZNF609Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "ZNF609"
            ))
        } else if (input$picture == "MIR224") {
            return(list(
                src = "www/MIR224Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "Face"
            ))
        } else if (input$picture == "MIR105-1") {
            return(list(
                src = "www/MIR105Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR105"
            ))
        } else if (input$picture == "MIR197") {
            return(list(
                src = "www/MIR197Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR197"
            ))
        } else if (input$picture == "MIR128-1") {
            return(list(
                src = "www/MIR128Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR128"
            ))
        } else if (input$picture == "MIR26B") {
            return(list(
                src = "www/MIR26BCircos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR26B"
            ))
        } else if (input$picture == "MIR149") {
            return(list(
                src = "www/MIR149Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR149"
            ))
        } else if (input$picture == "MIR143") {
            return(list(
                src = "www/MIR143Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR143"
            ))
        } else if (input$picture == "MIR145") {
            return(list(
                src = "www/MIR145Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR145"
            ))
        } else if (input$picture == "MIR219A1") {
            return(list(
                src = "www/MIR219Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR219A1"
            ))
        } else if (input$picture == "MIR141") {
            return(list(
                src = "www/MIR141Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR141"
            ))
        } else if (input$picture == "MIR17") {
            return(list(
                src = "www/MIR17Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR17"
            ))
        } else if (input$picture == "MIR203A") {
            return(list(
                src = "www/MIR203Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR203"
            ))
        } else if (input$picture == "MIR140") {
            return(list(
                src = "www/MIR140Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR140"
            ))
        } else if (input$picture == "MIR22") {
            return(list(
                src = "www/MIR22Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR22"
            ))
        } else if (input$picture == "MIR150") {
            return(list(
                src = "www/MIR150Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR150"
            ))
        } else if (input$picture == "MIR125B2") {
            return(list(
                src = "www/MIR125B2Circos-1.png",
                width = 700,
                hieght = 700,
                contentType = "image/png",
                alt = "MIR125B2"
            ))
        }
        
    }, deleteFile = FALSE)
    
}

   
shinyApp(ui, server)