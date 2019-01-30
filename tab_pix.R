mnu_pix <- menuItem("Pix", tabName = "pix", icon = icon("images"))

tab_pix <- tabItem(
    tabName = 'pix'
  , sliderInput('ui_pic_size', "Picture size", 100, 500, 300)
  , box(imageOutput("image1", height = 300))
  , box(imageOutput("image2", height = 300))
)
