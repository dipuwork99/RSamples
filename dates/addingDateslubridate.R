library(lubridate)

# note the format option to get it correct
input_time = as.POSIXct("2018-05-05T14:14:05", format = "%Y-%m-%dT%H:%M:%OS")
input_time + lubridate::days(1)

# with date format
input_time <- lubridate::ymd_hms("2018-05-05T14:14:05")
input_time + lubridate::days(1)

# add seconds
as.POSIXct("2018-05-05T14:14:05", format="%Y-%m-%dT%T") + 1*60*60*24

#try as.POSIXlt instead of as.POSIXct. POSIXlt stores data/time as a list of element:

new_date<-input_time
new_date$mday<-input_time$mday+1
new_date

#formatting input_time as below and adding the timezone (for example, GMT):
input_time = as.POSIXlt("2018-05-05T14:14:05", format='%Y-%m-%dT %H:%M:%S', tz="GMT")


library(lubridate)
dmy("1/1/2001") + days(45)


seq.Date( Sys.Date(), length=2, by='3 months' )[2]
