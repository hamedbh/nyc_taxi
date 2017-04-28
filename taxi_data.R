# Get the taxi data
taxi_urls <- c("https://archive.org/download/nycTaxiTripData2013/trip_data.7z",
               "https://archive.org/download/nycTaxiTripData2013/trip_fare.7z")

purrr::walk(taxi_urls, function(x) {
        download.file(url = x, destfile = basename(x))
})