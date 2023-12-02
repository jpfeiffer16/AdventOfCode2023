/*  input  %txt  /input/day1_example/txt
:: /*  input  %txt  /input/day1/txt

:-  %say
|=  *
:-  %noun
%+  roll
:: ^-  (list @ud)
:: %-  zing
%+  turn  input
  |=  line=@tas
=/  tape  (trip line)
  =/  nums
  %+  skim
    tape
  |=  t=@t  &((gte t 48) (lte t 57))
  (add (mul (sub (head nums) 48) 10) (sub (rear nums) 48))
add
