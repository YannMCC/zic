\version "2.18.2"

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


\header {
  title = "micro-suite 5/5"
  subtitle = "pour hautbois et violoncelle"
  subsubtitle = " "
  instrument = " "
  composer = "Yann Cornet"
  arranger = " "
  opus = "opus 1"
  piece = "numéro 5"
  poet = " "
}

global = {
  \key g \minor
  \numericTimeSignature
  \time 3/4
  \tempo 4=100
}

oboe = \relative c' {
  \global
  % En avant la musique !
 
%A x 2
  \repeat volta 2 {
  g'8-. \mf bes-. d-. g-. fis-. g-.
  d\( g\) bes,-. d-. es-. c-.
  a\( c\) fis,-. a-. d,-. c'-.
  bes4 \trill\( a8 bes g4\) \decr  \breathe
  as8\p \( c\) c\( es\) es\( g,\) 
  fis\( a\) a\( d\) d\( c\)
  c\( bes a g a fis\) }  
  \alternative {
    {g2 r4}
    {g2 r4}
  }
%B
  a8\( \mf c\) fis,-. a-. d,-. c'-. bes\( d\) a-. d-. g,-. bes-.
  c8\( bes a g fis e\) fis4 \trill e8 fis d4 \breathe
  a'8 \< \( c\) fis,-. a-. d,-. c'-.
  bes \( a bes b c cis d \! \) \f \> r d  \( c! es cis d2\) r4 \! \p
%A1    
  g,8-. \mf bes-. d-. g-. fis-. g-.
  d\( g\) bes,-. d-. es-. c-.
  a\( c\) fis,-. a-. d,-. c'-.
  bes4 \trill\( a8 bes g4\) \breathe
%A2 
  as8\p \( c\) c\( es\) es\( g,\) 
  fis\( a\) a\( d\) d\( c\)
  c\( bes a g a fis\) g2 r4
%C    
  d'8\( b g d' g f\) es4 d es
  c8\( a f c' f es\) es\( d d cis d4\)
  c a d bes8\( c bes a bes4\) \breathe
  c8\( bes a g fis g a fis g a b c\)
%C'    
  d8\( b g d' g f\) es4 d es
  c8\( a f c' f a\) bes\( f d c bes4\)
  c a d bes8\( c bes a bes4\) \breathe
  c8\( bes a g fis g a bes a4\) r4
%A  
  g8-. \mf bes-. d-. g-. fis-. g-.
  d\( g\) bes,-. d-. es-. c-.
  a\( c\) fis,-. a-. d,-. c'-.
  bes4 \trill\( a8 bes g4\) \breathe
%A2
  as8 \( c\) c\( es\) es\( g,\) 
  fis\( a\) a\( d\) d\( c\)
  c\( bes a g a fis\)g2 r4
%A2bis
  as8\p \( c\) c\( es\) es\( g,\) 
  fis\( a\) a\( d\) d\( c\)
  c\( bes\) a\( g\) a\( fis\) g2. \fermata
 }

cello = \relative c {
  \global
  % En avant la musique !
%A x 2
  g4 bes a bes2 g4 c d a g4. a8 bes4
  as4. g fis c' d4 a d,
      c'4 bes a
      bes4 a g
%B
  d a' d, g bes g e a  e d a' fis
  d4 fis2 g4 bes2 es,2. d2 r4
%A  
  g4 bes a bes2 g4 c d a g4. a8 bes4
  as4 g2 fis4 c'2 d4 a d g,2 r4
%C  
  b g b c es c
  a f a bes d bes
  ees4 c2 bes4 g2
  a4 fis a c bes a
%C'  
   b g b c es c
  a c a bes d bes
  ees4 c2 bes4 g2
  a4 fis a c bes a  
%A  
  g4 bes a bes2 g4 c d a g4. a8 bes4
  as4 g2 fis4 c'2 d4 a d g,4. a8 bes4
%A2bis  
  as4 g2 fis4 c'2 d4 a d g,2. \fermata
  \bar "|."
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
