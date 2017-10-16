#' To plot the popularity of names in times
#'
#' @param Name name from input
#' @param Sex sex from input
#' @import prenoms assertthat dygraphs dplyr
#' @return the plot
#' @export
#'

draw_a_name <- function(Name,Sex){
  assert_that(is.character(Name))
  asser_that(Sex == "F" | Sex == "M")
  prenoms::prenoms %>%
    filter(name == Name, sex == Sex) %>%
    group_by(year) %>%
    summarize(total=sum(n)) %>%
    dygraph()
}
