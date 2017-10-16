#' To plot simultaneously the popularity of more than one name
#'
#' @param names names from input 
#' @import prenoms assertthat dygraphs dplyr tidyr
#' @return the plot 
#' @export
#' @examples
#' draw_names(c("Vincent","Marie"))
#' 

draw_names <- function(names){
  assert_that(is.character(names))
  prenoms::prenoms %>%
    filter(name %in% names) %>%
    group_by(name,year) %>%
    summarize(total=sum(n)) %>%
    spread(key = name, value = total) %>% 
    dygraph()
}
