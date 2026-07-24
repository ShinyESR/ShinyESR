


# path definition ---- 

# source
path_root <- "assets/create_logo"
path_src  <- file.path(path_root, "01_src")
path_src_img_raw <- file.path(path_src, "logo_shiny-esr_raw.png")

# results
path_res  <- file.path(path_root, "02_res")
path_res_stk <- file.path(path_res, "sticker_shiny-esr%s.%s")

# create directories if necessary
if (!dir.exists(path_res)) {
  dir.create(path_res)
}
if (!dir.exists("images")) {
  dir.create("images")
}




# package loading ---- 

library(hexSticker)
library(ggplot2)


# set stciker versions 
list_stk <- list(
  "standard" = list(url = "", suffix = ""),
  "url"      = list(url = "shiny-esr.fr", suffix = "_url")
)


## loop to create stickers ---- 

for (i_stk in list_stk) {
  
  # sticker path
  i_path_res_stk_png <- sprintf(path_res_stk, i_stk$suffix, "png")
  i_path_res_stk_svg <- sprintf(path_res_stk, i_stk$suffix, "svg")
  
  # create sticker
  stk <- hexSticker::sticker(
    path_src_img_raw,
    s_x = 1.05, s_y = 1, s_width = 0.6, s_height = 0.6,
    package = "", p_size = 0,
    h_color = "#EE6055", h_fill = "#292F36", h_size = 4, 
    url = i_stk$url, u_x = 1.15, u_y = 0.2, u_size = 16, u_color = "#EE6055",
    white_around_sticker = FALSE,
    filename = i_path_res_stk_png,
    dpi = 300
  )
  
  # save sticker as png file
  ggplot2::ggsave(i_path_res_stk_png, plot = stk, width = 5, height = 5, units = "in", dpi = 300)
  
  # save sticker (url version) as svg file
  svg(i_path_res_stk_svg, width = 5, height = 5)
  plot(stk)
  dev.off()
}



## Ccpy and rename for website usage ----

# copy the "standard" version
ext_logo <- "png"
file.copy(
  from = sprintf(path_res_stk, "", ext_logo), 
  to = file.path("images", basename(gsub("sticker", "logo", sprintf(path_res_stk, "", ext_logo)))),
  overwrite = TRUE
)
