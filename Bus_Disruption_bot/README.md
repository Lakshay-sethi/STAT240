# Bus Diruption Bot
A twitter bot that outputs the bus routes that were late / cancelled on a given data and time.

## Build status
[![Build Status](https://travis-ci.org/akashnimare/foco.svg?branch=master)](https://travis-ci.org/akashnimare/foco)
[![Windows Build Status](https://ci.appveyor.com/api/projects/status/github/akashnimare/foco?branch=master&svg=true)](https://ci.appveyor.com/project/akashnimare/foco/branch/master)

## Code style
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)
 
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
