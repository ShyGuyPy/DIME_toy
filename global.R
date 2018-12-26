#source("code/functions/...R", local=TRUE)

source("code/global/load_packages.R", local = TRUE)

#functions
source("code/functions/clean_up_func.R", local = TRUE)
source("code/functions/clean_string_func.R", local = TRUE)
source("code/functions/cedr_func.R", local = TRUE)
source("code/functions/station_func.R", local = TRUE)

project.dir <- rprojroot::find_rstudio_root_file()
url.root <- "http://datahub.chesapeakebay.net/api.JSON"
todays.date <- format(Sys.Date(), "%m-%d-%Y")
station.vec <- file.path(url.root,
                         "LivingResources",
                         "TidalPlankton",
                         "Reported",
                         "1-01-1970",
                         todays.date,
                         "17",
                         "Station") %>% 
  fromJSON() %>% 
  pull(unique(MonitoringLocationId))

# green <- "background-color:#5CC33D"
# yellow <- "background-color:yellow"
# orange <- "background-color:orange"
# red <- "background-color:red"
# navy <- "background-color:navy"
# black <- "background-color: black"

