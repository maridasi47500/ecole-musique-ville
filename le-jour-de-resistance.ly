\version "2.24.3"

\header {
  title = "le jour de resistance"
}

global = {
  \key c \major
  \numericTimeSignature
  \time 6/8
  \partial 8
  \tempo 4=100
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % En avant la musique.
  c8 f4. f8 g a bes4. d,8 d g f4 e8 f g c a4.  g4 c8
    f,4. f8 g a bes8 d4 d,8 d g f4. e8 f g e f4.  
\break
e4 b8 b2.
\time 4/4 
e8 b b b b b b b gis4. e8 (e2) a2 cis a4 e2. r4 r8 b b b dis dis b b b r2. cis'4 e,2 b'8 a g fis e1


\break
\time 3/4 
c'8. c16 a8 f c'4 
\time 5/4 
c4 d8. c16 a8 f c' bes r4
\time 3/4 

d8. d16 bes8 g d'4 
\time 5/4
d4 e8. d16 c8 a e d 

\time 8/4
c'8. c16 a8 f c'4 c8 f e d c a d c

b8. b16 gis8 e b'4 b8 e dis cis8 b gis cis b 

}

verse = \lyricmode {
  % Ajouter ici des paroles.
  
}

\score {
  \new Staff \with {
    instrumentName = "Soprano"
    midiInstrument = "choir aahs"
  } { \sopranoVoice }
  \addlyrics { \verse }
  \layout { }
  \midi { }
}
