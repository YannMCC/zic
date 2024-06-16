\version "2.18.2"

\header {
  title = "micro-suite 2/5"
  subtitle = "pour hautbois et violoncelle"
  subsubtitle = " "
  instrument = " "
  composer = "Yann Cornet"
  arranger = " "
  opus = "opus 1"
  piece = "numéro 2"
  poet = " "
}

global = {
  \key d \minor
  \numericTimeSignature
  \time 6/8
}

oboe = \relative c''' {
  \global
  % En avant la musique !
  f,4\( e8 d4\) d8(
  f4 d8 e4)  \breathe a,8
  d4\( c8 bes4 a8
  bes4 g8 a4.\) \breathe
  f'8( e f d4) d8
  f8( e d) e4 a,8
  d4 c8 bes4 a8
  bes4 g8 a4 r8 \breathe
  a'8( d, a' bes f bes)
  g( c, g' a c, a') \breathe
  f( e f a d a  f e d a4) r8 
  a'8( d, a') bes( c bes)
  g( c, g') a( bes a) 
  f( a d) a( g f) e( f d) e4 r8 \breathe
  f4\( e8 d4\) d8(
  f4 d8 e4)  \breathe a,8
  d4\( c8 bes4 a8
  bes4 g8 a4.\) \breathe
  f'8( e f d4) d8
  f8( e d) e4 a8
  bes( a g) f a d
  e, f e d4.
  \bar "|."
}

cello = \relative c' {
  \global
  % En avant la musique !
  r4.	d,8 f a
  d, f a  cis, e a
  bes, d f  g, bes d
  g, bes d  a cis e
  r4.	d8 f a
  d, f a cis, e a
  bes, d f  g, bes d
  g, bes d  a cis e
  f4. g c, f d f d e
  f4 f8 g4 g8 e4 e8 f4 f8
  f4. e d a4 r8 \breathe
  r4.	d8 f a
  d, f a  cis, e a
  bes, d f  g, bes d
  g, bes d  a cis e
  r4. d8 f a d, f a cis, e a
  g4 e8 f a4 e8 a4 d,4. 
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
  \midi {
    \tempo 4.=50
  }
}
