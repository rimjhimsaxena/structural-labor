rm(list = ls())

library(ncdf4)
library(lubridate)

nc_fname <- "~/OneDrive - UCB-O365/01CURRENT/Structural Transformation Climate Change India/Data/07Climate/monthly-means/adaptor.mars.internal-1677708203.1422405-5696-5-ae2404fa-30e8-44e3-b47a-89c0d8ce1351.nc"
nc_ds <- nc_open(nc_fname)
nc_ds

dim_lon <- ncvar_get(nc_ds, "longitude")
dim_lat <- ncvar_get(nc_ds, "latitude")
#dim_depth <- ncvar_get(nc_ds, "depth")
dim_time <- ncvar_get(nc_ds, "time")

t_units <- ncatt_get(nc_ds, "time", "units")
t_ustr <- strsplit(t_units$value, " ")
t_dstr <- strsplit(unlist(t_ustr)[3], "-")
date <- ymd(t_dstr) + dhours(dim_time)
date

coords <- as.matrix(expand.grid(dim_lon, dim_lat, date))


var1 <- ncvar_get(nc_ds, "skt", collapse_degen=FALSE)
#var2 <- ncvar_get(nc_ds, "var2", collapse_degen=FALSE)


nc_df <- data.frame(cbind(coords,var1))
names(nc_df) <- c("lon", "lat","date","temp")
head(na.omit(nc_df), 5)  # Display some non-NaN values for a visual check
nc_df$month = substr(nc_df$date,6,7)
csv_fname <- "~/OneDrive - UCB-O365/01CURRENT/Structural Transformation Climate Change India/Data/07Climate/monthly-means/monthly-mean-1965-1975.csv"
write.table(nc_df, csv_fname, row.names=FALSE, sep=";")
