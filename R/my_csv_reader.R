#' Import multiple csv files 
#'
#' @param folder path to the folder
#'
#' @return a list 
#' @export
#' @importFrom  utils read.csv2
#' @import assertthat 

my_csv_reader <- function(folder){
  l <- list.files(path = folder, pattern = ".*csv$",full.names = TRUE)
  assert_that(not_empty(folder))
  result <- lapply(l.read.csv2)
  return(result)
}
