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
%+  skim
  games
|=  =game
:: =/  limit  (malt `(list [@tas @ud])`~[[%red 12] [%green 13] [%blue 14]])
=/  counts  (malt `(list [@tas @ud])`~[[%red 0] [%green 0] [%blue 0]])
=/  revs  revs.game
=/  totals
|-  ?~  revs  counts
  =/  rev  -:revs
  %=  $
    revs    +:revs
    counts  |-  ?~  rev  counts
            =/  elem=rond  -:rev
            %=  $
              counts  (~(put by counts) colr.elem +((need (~(get by counts) colr.elem))))
              rev    +:rev
            ==
  ==
~&  totals
%&
:: ?!  ?|  (gth (need (~(get by totals) %red)) 12)
::         (gth (need (~(get by totals) %green)) 13)
::         (gth (need (~(get by totals) %blue)) 14)
::     ==
