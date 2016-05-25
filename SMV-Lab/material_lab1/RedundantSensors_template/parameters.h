// include macros.h for using max
#include "macros.h"

// these constants represent the upper and lower bounds
// of the input given from the environment
// and every component exchanging data in the model has values
// within this range
#define upper_bound  15
#define lower_bound -15

// macro for the values domain
#define value_domain lower_bound..upper_bound

// the maximum error that a sensor introduces
// to its input when correctly working
// this value has to be positive because it is the absolute
// value or intensity of the maximum sensor error
#define max_sensor_error 2
// macro for the domain error
#define sensor_error_domain -max_sensor_error..max_sensor_error

// the maximum variance accepted
// for the input from the environment
#define max_variance 1

// the maximum system error is the guaranteed limit
// under which the error of the system is bounded
// within the assumptions
#define max_sys_error max(max_variance+max_sensor_error, 2*max_sensor_error)
