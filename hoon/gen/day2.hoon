/*  input  %txt  /input/day2_example/txt
:: /*  input  %txt  /input/day2/txt

:-  %say
|=  *
:-  %noun
=>  |%
      +$  rond
          $:  numr=@ud
              colr=?(%red %green %blue)
          ==
      +$  game
          $:  id=@ud
            revs=(list (list rond))
          ==
    --
=/  games
%+  turn  input
|=  line=@t
^-  game
%+  scan
  (trip line)
;~  plug
  ;~   pfix  (jest 'Game')
             ;~(pfix ace dem)
  ==
  ;~  pfix  col
            %+  more  mic
            %+  more  (jest ',')
            ;~  plug
              ;~(pfix ace dem)
              ;~(pfix ace (perk ~[%red %green %blue]))
            ==
  ==
==
games
