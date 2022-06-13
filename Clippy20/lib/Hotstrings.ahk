; https://www.autohotkey.com/docs/Hotstrings.htm
; https://www.autohotkey.com/docs/commands/Hotstring.htm

; TODO 
; when tere's available autocomplete, pop up a message saying: press 'tab' to complete char x

; C - case sensitive
; Z - reset recogniser after each hotstring
#Hotstring C Z

::msa::MS Access
::mse::MS Excel

/*
#Hotstring Z0
::--::{U+2013}		; En Dash
::---::{U+2014}		; Em Dash	; DOESN@T OWKR
#Hotstring Z
*/

; Omit ending character
#Hotstring O
::fk@::filip.kraus@corporatesolutions.uk.net
::scr@::
FormatTime, TimeStr, A_Now, yyyy-MM-dd hhmmss
SendInput % "Screenshot " . TimeStr
return

::bp@::	; BP ULSD Price
FormatTime, TimeStr, A_Now, YWeek
TimeStr := SubStr(TimeStr, 1, -2) . "-W" . SubStr(TimeStr, -1)
SendInput % "BP ULSD Price " . TimeStr
return

::wc@::	; Walkaround chekcs
FormatTime, TimeStr, A_Now, YWeek
TimeStr := SubStr(TimeStr, 1, -2) . "-W" . SubStr(TimeStr, -1)
SendInput % "Walkaround checks " . TimeStr
return

::fa@::	; Fleet analytics
FormatTime, TimeStr, A_Now, YWeek
TimeStr := SubStr(TimeStr, 1, -2) . "-W" . SubStr(TimeStr, -1)
SendInput % "Fleet analytics " . TimeStr
return

::ft@::	; Fuel transactions
FormatTime, Year, A_Now, yyyy
FormatTime, Month, A_Now, MM
TimeStr := Year . "-" . Month
SendInput % "Fuel transactions " . TimeStr
return

::ir@::	; Incident report
FormatTime, TimeStr, A_Now, yyyy-MM
SendInput % "Incident report " . TimeStr
return


::deg::{U+00B0}
::degc::{U+2103}
::degf::{U+2109}

#Hotstring O0

; * - trigger hostring without ending character
#Hotstring *
::(c)::{U+00A9}		; ©
::(r)::{U+00AE}		; ®

::<<::{U+00AB}		; «
::>>::{U+00BB}		; »

; Unicode - Simple arrows
::<-::{U+2190}		; Leftwards Arrow
::/\::{U+2191}		; Upwards Arrow
::->::{U+2192}		; Rightwards Arrow
::\/::{U+2193}		; Downwards Arrow
;::<>::{U+2194}		; Left Right Arrow
;::::{U+2195}		; Up Down Arrow
;::::{U+2196}		; North West Arrow
;::::{U+2197}		; North East Arrow
;::::{U+2198}		; South East Arrow
;::::{U+2199}		; South West Arrow

::[v]::{U+1F5F9}	; Ballot Box with Bold Check
::[x]::{U+2612}		; Ballot Box with X
::[ ]::{U+2610}		; Ballot Box

::v@::{U+2610}		; Check Mark
::x@::{U+2717}		; Ballot X

; https://unicode-table.com/en/sets/mathematical-signs/
; Ligatures
::^x::{U+00D7}		; ×

; Math
::=/=::{U+2260}		; Doesn't equal
::^/::{U+00F7}		; ÷


; ? - hostring will trigger even inside a word
#Hotstring ?
::^o::{U+00B0}		; °
::+-::{U+00B1}		; ±
::^1::{U+00B9}		; ¹
::^2::{U+00B2}		; ²
::^3::{U+00B3}		; ³

; * - trigger hostring without ending character
#Hotstring *0
::1/4::{U+00BC}		; ¼
::1/2::{U+00BD}		; ½
::3/4::{U+00BE}		; ¾

#Hotstring O


; Restore default behaviour
#Hotstring *0 ?0 C0 Z0 O0