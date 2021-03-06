#' @export
#' @importFrom tibble trunc_mat
#'
print.tbl_time <- function(x, ...) {

  # Original trunc_mat
  print_tbl <- tibble::trunc_mat(x, ...)

  # Save summary[[1]] containing "A tibble" and dims
  summary <- print_tbl$summary[[1]]
  names(summary) <- "A time tibble"

  # Overwrite "A tibble" and dims with the index
  print_tbl$summary[[1]] <- get_index_char(x)
  names(print_tbl$summary)[[1]] <- "Index"

  # Print
  cat("# ", names(summary), ": ", summary, "\n", sep = "")
  print(print_tbl)
}
