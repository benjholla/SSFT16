#ifndef __MACROS_H__
#define __MACROS_H__

// absolute difference function:
// takes two numbers a,b and returns their
// difference in absolute value
#define abs_diff(a,b) ((a >=b) ? (a - b) : (b - a))

// returns the maximum between two values
#define max(a,b) (a>b ? a : b)

#endif
