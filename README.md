# train-challenge

[![Test Coverage](https://codeclimate.com/github/chandley/train-challenge/badges/coverage.svg)](https://codeclimate.com/github/chandley/train-challenge)
[![Code Climate](https://codeclimate.com/github/chandley/train-challenge/badges/gpa.svg)](https://codeclimate.com/github/chandley/train-challenge)

## Summary

### Problem

* There will be a number of trains inside the system.
* Trains will travel from station to station.
* Inside of a station, when the train stops, passengers will alight and enter the carriages of the train.
* A Passenger will touch in at the station and touch out at the destination station.
* Each coach of a train can hold up to 40 passengers.
* Each train is made of a number of coaches.
* Optional - Charging system where the passengers can only touch in a station (and access the train) if their account has more than 2 GBP

### Languages/Platforms/Tools

| Languages | Technologies  | Testing Frameworks| Misc
| :-------------------------------------------- |:--------------|:-----------|:----|
| Ruby      |               | Rspec             |               |
|           |               |                   |               |
|           |               |                   |  
|           |               |

### Solution

* Passenger, Coach, Train and Station classes.
* Passengers are passive, but know their destination
* Stations move passengers not at destination onto trains
* Stations move passengers at destination out of system

### Setup

### Tests

### Images

### To do



### Learning points

*



Not implemented

It seems logical to extend by

add lines linking the stations together, 
train chooses a line  when entering system from depot. One special station on each line is connected to depot.
Train can leave line and return to depot from special station.
Train chooses a direction on line when entering system 
Train can only move to next station in direction on line
train can change direction at special stations stations.
train is forced to change direction at terminus station

These are all out of scope of the defined problem, but should be discussed with the customer 