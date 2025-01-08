# Data Sources
https://data.cityofnewyork.us/resource/mzxg-pwib.json
https://gbfs.lyft.com/gbfs/2.3/bkn/en/station_information.json

# Database
## Possible Tables
Each table will be written in pascal case.
- __BikeRides__ - table for bike rides
- __StationInfo__ - Table for station information
- __BikeRoutes__ - Table for routes

## Table Schemas
All attributes will follow a snake case.

### BikeRides
- __ride_id__  - unique ID for ride `PRIMARY KEY` `CHAR`
- __bike_type__ - type of bike used (E for electric, M for mechanical) `CHAR(1)`
- __start_date__ - Date ride started `DATE`
- __start_time__ - Time ride started `TIME`
- __end_date__ - Date ride ended `DATE`
- __end_time__ - Time ride ended `TIME`
- __strt_station_id__ - ID for start station `FOREIGN KEY` `CHAR`
- __end_station_id__ - ID for end station `FOREIGN KEY`
- __member_type__ - Membership type (Member or Casual) `CHAR`

### BikeRoutes
- __segment_id__ - The UNIQUE ID for each route `PRIMARY KEY` `CHAR`
- __multiline__ - multiline containing coordinates of the route `PATH`
- __Borough__ - The borough in which the left side of the street segment is located. `VARCHAR`
- __from_street__ - The street, when available, or where no street is present a park, waterfront line, land mark, or nearest street adjacent to the beginning of the facility route. `VARCHAR`
- __to_street__ - The street, when available, or where no street is present a park, waterfront line, land mark, or nearest street adjacent to the end of the facility route. `VARCHAR`
- __lane_count__ - The number of bike lanes in the route `INT`
- __shape_length__ - The distance of the route in feet `FLOAT`

### StationInfo
- __station_id__ - The unique identifer of a station `PRIMARY KEY` `CHAR`
- __coordinate__ - The coordinates of the station in the form (latitude, longitude) `POINT`
- __capacity__ - The number of bikes that can be held at the station `INT`