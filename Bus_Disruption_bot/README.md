# Bus Diruption Bot
A twitter bot that outputs the bus routes that were late / cancelled on a given data and time.

## Build status
[![Build Status](https://travis-ci.org/Lakshay-sethi/STAT240.svg?branch=master)](https://travis-ci.org/Lakshay-sethi/STAT240)

## Code style
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)
 
## Pre-requisites 
1. Installation of R (Version 3.3.1) 
2. Twitter Authentication to access API

## Dependencies
- twitteR 
- stringr 
 
## Interface

### Parameters

1. Year (a numeric value such as 2020)
2. Month (a numeric value between 1 and 12, inclusive with 1 indicating January)
3. Day of the month
4. Hour of the day (in 24 hour time)

### Return 

start or stop would represent either NULL or an character 

### For example 

An input of (2020, 1, 26, 3) should return "401" "406" and NULL or An input of (2020,1,15) should return **to be filled**

```R
disruptions$start
# [1] "401" "406"

``` 


## Tech/framework used
<b>Built with</b>
- [R](https://www.r-project.org/about.html)

## Credits
**Dr. Lloyd Elliott**  

#### Anything else that seems useful
