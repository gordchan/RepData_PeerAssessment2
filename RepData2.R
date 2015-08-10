## Loading library

library(dplyr)


## Loading dataset

storm <- read.csv("repdata-data-StormData.csv.bz2")

storm <- group_by(storm, EVTYPE)

health <- select(storm, BGN_DATE, EVTYPE, FATALITIES, INJURIES)

econ <- select(storm, BGN_DATE, PROPDMG, PROPDMGEXP, CROPDMG, CROPDMGEXP)
