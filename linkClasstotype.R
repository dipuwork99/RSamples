
x <- seq( as.Date("2011-07-01"), by=1, len=3)
# this is the main bit to specify the class type.
class(x) <- "Date"

start <- as.POSIXct("2022-03-21")
weeks[1] = start +  lubridate::days(14)
class(weeks) = "POSIXct"
for (i in 2:7) { 
  weeks[i]=as.Date(weeks[i-1]) + lubridate::days(14)
}
class(weeks) = "POSIXct"

