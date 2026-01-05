\version "2.24.3"

\header {
  title = "moi aussi chanter cette melodie"
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

scoreAChordNames = \chordmode {
  \global
  % Ajouter ici des chiffrages.
  
}

scoreAMelody = \relative c'' {
  \global
  % En avant la musique.
  r4 c8 c d c a g f4 a g r2 
  r4  c8 c d c a g  bes a g f e4 g a
  c8 a bes a g e f4 a g2
  c8 a c bes a g f4 a g r4
  
}

scoreAVerseLeadSheet = \lyricmode {
  % Ajouter ici des paroles.
  
}

scoreASopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % En avant la musique.
  
}

scoreAVerseSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
  
}

scoreASopranoChoirI = \relative c'' {
  \global
  % En avant la musique.
  
}

scoreAAltoChoirI = \relative c' {
  \global
  % En avant la musique.
  
}

scoreATenorChoirI = \relative c' {
  \global
  % En avant la musique.
  
}

scoreABassChoirI = \relative c {
  \global
  % En avant la musique.
  r2 c8 c r4 c8 c r4 c8 c
}

scoreASopranoVerse = \lyricmode {
  % Ajouter ici des paroles.
  
}

scoreAAltoVerse = \lyricmode {
  % Ajouter ici des paroles.
  
}

scoreATenorVerse = \lyricmode {
  % Ajouter ici des paroles.
  
}

scoreABassVerse = \lyricmode {
  % Ajouter ici des paroles.
  
}

scoreASopranoChoirII = \relative c'' {
  \global
  % En avant la musique.
  
}

scoreAAltoChoirII = \relative c' {
  \global
  % En avant la musique.
  
}

scoreATenorChoirII = \relative c' {
  \global
  % En avant la musique.
  
}

scoreABassChoirII = \relative c {
  \global
  % En avant la musique.
  
}

scoreAVerseChoirII = \lyricmode {
  % Ajouter ici des paroles.
  
}

scoreALeadSheetPart = <<
  \new ChordNames \scoreAChordNames
  \new Staff { \scoreAMelody }
  \addlyrics { \scoreAVerseLeadSheet }
>>

scoreASopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \scoreASopranoVoice }
\addlyrics { \scoreAVerseSopranoVoice }

scoreAChoirIPart = \new ChoirStaff \with {
  \consists "Instrument_name_engraver"
} <<
 
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Basse"
  } { \clef bass \scoreABassChoirI }
  \addlyrics { \scoreABassVerse }
>>

scoreAChoirIIPart = \new ChoirStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Chœur II"
} <<
  
    \new Voice = "bass" { \voiceTwo \scoreABassChoirII }
  >>
>>

\score {
  <<
    \scoreALeadSheetPart
    \scoreAChoirIPart
  >>
  \layout { }
  \midi { }
}
