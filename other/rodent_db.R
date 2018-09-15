rodents_path <- file.path(getwd(), 'rodents')
if (!dir.exists(rodents_path)) {
  dir.create(rodents_path)
}
library(restez)
# set the restez path to a memorable location
restez_path_set(rodents_path)
# download for domain 15
dwntm <- system.time(db_download(preselection = '15'))
restez_connect()
crttm <- system.time(db_create())
# always disconnect
restez_disconnect()