#' Save file as csv 
#'
#' @param dataset the dataset to be saved 
#' @param filename the name of csv 
#' @param row.names to suppress row names 
#' @param ... others 
#' @import assertthat 
#' @export

save_as_csv <- function(dataset, filename, row.names = FALSE, ...){
  filename <- normalizePath(filename)
  assert_that(has_extension(filename, "csv"))
  assert_that(is.dir(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))
  write.csv2(x=dataset, file = filename)
  invisible(filename)
}