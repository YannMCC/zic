\version "2.18.2"

\header {
  title = "micro-suite 4/5"
  subtitle = "pour hautbois et violoncelle"
  subsubtitle = " "
  instrument = " "
  composer = "Yann Cornet"
  arranger = " "
  opus = "opus 1"
  piece = "numéro 4"
  poet = " "
}

global = {
  \key a \minor
  \numericTimeSignature
  \time 3/8
  \tempo "vif" 8=130
}

oboe = \relative c'' {
  \global
  % En avant la musique !
  %----A----
  a16 c e f e8     gis,16 b e f e8
  a,16 c e d c a     b a gis fis e8
  a16 c e f e8	     gis,16 b e f e8
  c16 e a c, b e     a,4. \breathe
  %----B----
  f16 a c a f8	     g16 b c e c8
  d16 e f d b d      e4.
  %----A'----
  a,16 c e f e8	     gis,16 b e f e8
  a,16 c e d c a     b a gis fis e8
  a16 c e f e8	     gis,16 b e gis e8
  c16 e a c, b e     a,4. \breathe
  %----B----
  f16 a c a f8	     g16 b c e c8
  d16 e f d b d      e4.
  %----C---- 
  \key a \major
  cis16 d e fis e8   b16 cis d e d8
  cis16 e a gis b a  gis a fis gis e d
  cis d e fis e8     b16 cis d e d8  
  cis16 e a cis, b gis' a4.
  %----C'----   
  cis,16 d e fis e8   b16 cis d e d8
  e16 a d cis b a    gis fis e d cis b
  cis16 d e fis e8   b16 cis d e d8 
  cis16 e a cis, b e a,4.
  %----A''----
  \key a \minor
  a16 c e f e8		gis,16 b e f e8
  a,16 c e d c a	b a gis fis e8
  a16 c e f e8		gis,16 b e gis e8
  c 16 e a c, b gis' 	a4. \bar "|."
}

cello = \relative c {
  \global
  % En avant la musique !
  
  %----A----
  a8-. c4 b8-.  e4
  a,8 c a   b d e
  a, c4 b8   e4
  a,8 e' e, a4 g8
  %----B----
  f4 g8     c4.
  f,8 b d   e b e,
  
  %----A----
  a8 c4 b8  e4
  a,8 c a   b d e
  a, c4 b8   e4
  a,8 e' e, a4 g8
  %----B----
  f4 g8     c4.
  f,8 b d e4.   %e b e,
  
  \key a \major
  a,8 a'4 e8 b'4
  a8 cis a b gis fis
  e8 a4 e8 b'4 
  d,8 e e, a cis d
  
  e8 a4 e8 b'4
  e,16 a d cis b a  gis fis e d cis b
  a8 a'4 e8 b'4
  d,8 e e, a4.
  \key a \minor
  a8 c4 b8 e4
  a,8 c a b d e
  a,8 c4 b8 e4
  a,8 e' e, a4.
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
    \tempo 4=130
  }
}
