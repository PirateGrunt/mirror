library(shinydashboard)

server <- function(input, output) {

  # pic_size <- reactive(
  #   input$ui_pic_size
  # )

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
        lst_image$height <- input$ui_pic_size
        lst_image$width <- input$ui_pic_size
        return(lst_image)
      }
    , deleteFile = FALSE
  )

  output$image2 <- renderImage(
    {
      lst_image$src <- "image2.jpg"
      lst_image$height <- input$ui_pic_size
      lst_image$width <- input$ui_pic_size
      return(lst_image)
    }
    , deleteFile = FALSE
  )

}
