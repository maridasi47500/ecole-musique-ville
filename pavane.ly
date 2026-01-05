\version "2.24.3"

\header {
  title = "pavane"
  instrument = "violon"
}

global = {
  \key g \major
  \time 4/4
}

violin = \relative c'' {
  \global
  % En avant la musique.
  g'2 g8 a8 f8 e8 d4 e8 f8 f8 e8 e4 b2 b8 c8 a8 g8 f4 g8 a8 a8 b8 g8 f8 e4 f8 g8 g8 a8 f8 e8 f1 f4 b2 b4 b2 b8 a8 d8 b8 b4 a4 g4 a4 e2 e8 d8 g8 f8 e4 b4 d4 c8 b8 a8 b1
}

\score {
  \new Staff \with {
    instrumentName = "Violon"
    midiInstrument = "violin"
  } \violin
  \layout { }
  \midi {
    \tempo 4=100
  }
}
