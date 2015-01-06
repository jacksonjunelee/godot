INCR:
> set mykey "15" --> ok
>INCR mykey --> 16

DECR: counting down from mykey start value

INCRBY: sets the count you want
  ex: > set mykey "10"
      > INCRBY mykey 5
      15

APPEND:

>adds charactes to the end of a string; returns integer length of string
