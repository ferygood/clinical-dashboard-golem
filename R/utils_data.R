read_stdm <- function(domain){
  path <- file.path("inst/extdata/dummy_sdtm", paste0(domain, ".csv"))
  read.csv(path, stringsAsFactors = FALSE)
}

# dm <- read_stdm("DM")
