#' Import all sheet from an excel file 
#'
#' @param file path to xlsx file 
#' @import readxl assertthat 
#' @return a list 
#' @export

read_excel_multi <- function(file){
  all_sheets <- readxl::excel_sheets(file)
  assert_that(has_extension(file, "xlsx"))
  assert_that(is.dir(dirname(file)))
  assert_that(not_empty(file))
  result <- lapply(all_sheets, function(sheet){
    readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}