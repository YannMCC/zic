\version "2.18.2"
 
\header {
title = "micro-suite 3/5"
  subtitle = "pour hautbois et violoncelle"
  subsubtitle = " "
  instrument = " "
  composer = "Yann Cornet"
  arranger = " "
  opus = "opus 1"
  piece = "numéro 3"
  poet = " "
}
global = {
  \key a \minor
  \time 4/4
  \tempo 4=72
}

oboe = \relative c'' {
  \global
  % En avant la musique !
  r8 a-> r a8-> b16( a b8 c4)
  d c b8( e c16 b a8) \breathe
  r8 a r a8( b cis) d4
  f8-. f-. e-. e-. d16( c b e) a,4 \breathe
  c4. c8 b16( a b8) c4
  g8\( a f e f g e4\)
  c'4. c8 b16( a b8) c4
  a8( g f a) c( \mark "rit." a b gis) \breathe
  r8 \mark "tempo" a-> r a8-> b16( a b8) c4
  d c b8( e c16 b a8) \breathe
  r8 a r a( b cis) d4
  f8-. f-. e-. e-. d16( c b e) a,4 \bar "|."
}

cello = \relative c {
  \global
  % En avant la musique !
  a8-. a'-. a,-. a'-. e,-. e'-. a,-. a'-.
  f, f' e, e' e, b' a r
  c8 a' d, a' e a f a
  d,4 e e, a
  c g' f e
  d g b, c8 d
  c4 g' f e
  d b dis e
  a,8-. a'-. a,-. a'-. e,-. e'-. a,-. a'-.
  f, f' e, e' e, b' a r
  c4 d e 
  f d e e, a \bar "|."
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
    \tempo 4=72
  }
}
