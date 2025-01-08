DROP TABLE IF EXISTS BikeRoutes, StationInfo, BikeRides;

CREATE TABLE BikeRoutes(
segment_id INTEGER,
multiline PATH,
boro VARCHAR,
from_street VARCHAR,
to_street VARCHAR,
lane_count VARCHAR,
shape_length FLOAT,
PRIMARY KEY (segment_id)
);

CREATE TABLE StationInfo(
    station_id VARCHAR,
    coordinate POINT,
    capacity INT,
    PRIMARY KEY (station_id)
);

CREATE TABLE BikeRides (
    ride_id VARCHAR,
    bike_type CHAR(1),
    start_date DATE,
    start_time TIME,
    end_date DATE,
    end_time TIME,
    start_station_id VARCHAR,
    end_station_id VARCHAR,
    member_type CHAR(6),
    PRIMARY KEY (ride_id),
    FOREIGN KEY (start_station_id) REFERENCES StationInfo(station_id),
    FOREIGN KEY (end_station_id) REFERENCES StationInfo(station_id)

)