\version "2.18.2"

\header {
title = "micro-suite 1/5"
  subtitle = " "
  subsubtitle = " "
  instrument = "pour hautbois et violoncelle"
  dedication = "à Stéphanie & the Barock Street band"
  composer = "Yann Cornet"
  arranger = " "
  opus = " "
  piece = " "
  poet = " "
  tagline = " "
  % Pas de mention spéciale pour cet ouvrage
  %  tagline = ##f
}

global = {
  \key g \minor
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 72
}

oboe = \relative c'' {
  \global
  % En avant la musique !
 %\partial 2
 r8 d ees g, fis4 c' c8( bes) r4 
 a8 g g fis d \breathe d'ees g,
 fis4 c' c8( bes) r4 a8 g a fis g \breathe g( bes d
 ees2)
 %r8 g( bes d es2)
 r8 f,( a c d2)
 r8 es,( g cis) d2
 
g,8 d'4\( bes8\)  a8 d4\( a8\) bes4-. g-.d' a

g8 d'4\( bes8\)  a8 d4\( a8\) bes4-. g-.d'2 \breathe
 
r8 d8 ees g, fis4 c' c8( bes) r4
  a8( g) g fis d \breathe d'ees g,
 fis4 c' c8( bes) r4 a8 g a fis g2 \fermata r2
 \bar "|."
}

cello = \relative c {
  \global
  % En avant la musique !
  %\partial 2 
r2
d8 fis4 d8 g4 c8( bes) es,2 d8 r4.
d8 fis4 d8 g4 c d d, g4 r
g8 bes d g,
f r8 r4 r8 f8 a c es,2 d


 g,8 a bes c a bes c d bes c d es d e fis g
 
 g,8 a bes c a bes c d bes c d es d e fis g

fis4 r4

d,8 fis4 d8 g4 c8( bes) es,2 d8 r4.

d8 fis4 d8 g4 c d d, g2 \fermata r2

}
oboePart = \new Staff \with {
  instrumentName = "Hautbois"
  midiInstrument = "oboe"
} \oboe

celloPart = \new Staff \with {
  instrumentName = "Violoncelle"
  midiInstrument = "cello"
} { \clef bass \cello }

\score {
  <<
    \oboePart
    \celloPart
  >>
  \layout { }
  \midi { }
}
