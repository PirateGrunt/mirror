library(shinydashboard)

server <- function(input, output) {

  lst_image <- list(
      src = "image1.jpg"
    , contentType = "image/png"
    , alt = "Face"
    , width = 300
    , height = 300
  )

  output$image1 <- renderImage(
      {
        lst_image$src <- "image1.jpg"
        return(lst_image)
      }
    , deleteFile = FALSE
  )

  output$image2 <- renderImage(
    {
      lst_image$src <- "image2.jpg"
      return(lst_image)
    }
    , deleteFile = FALSE
  )

}
