library(shinydashboard)

server <- function(input, output) {

    output$image2 <- renderImage(
    {
      return(list(
          src = "image1.jpg",
          contentType = "image/png",
          alt = "Face",
          width = 300
          , height = 300
      ))

    }
    , deleteFile = FALSE)

}
