; https://www.autohotkey.com/docs/Hotstrings.htm
; https://www.autohotkey.com/docs/commands/Hotstring.htm

; TODO 
; when tere's available autocomplete, pop up a message saying: press 'tab' to complete char x

; C - case sensitive
; Z - reset recogniser after each hotstring
#Hotstring C Z

::msa::MS Access
::mse::MS Excel

:*O:fk@::filip.kraus@corporatesolutions.uk.net
:*O:scr::
FormatTime, TimeStr, A_Now, yyyy-MM-dd hhmmss
SendInput Screenshot %TimeStr%
return

/*
#Hotstring Z0
::--::{U+2013}		; En Dash
::---::{U+2014}		; Em Dash	; DOESN@T OWKR
#Hotstring Z
*/

; * - trigger hostring without ending character
#Hotstring *
::(c)::{U+00A9}		; ©
::(r)::{U+00AE}		; ®

::^x::{U+00D7}		; ×
::^/::{U+00F7}		; ÷
::<<::{U+00AB}		; «
::>>::{U+00BB}		; »
::->::{U+2192}		; Rightwards Arrow
::<-::{U+2190}		; Leftwards Arrow
::/\::{U+2191}		; Upwards Arrow
::\/::{U+2193}		; Downwards Arrow

::[v]::{U+1F5F9}	; Ballot Box with Bold Check
::[x]::{U+2612}		; Ballot Box with X
::[ ]::{U+2610}		; Ballot Box

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