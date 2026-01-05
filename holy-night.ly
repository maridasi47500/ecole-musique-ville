\version "2.24.3"

\header {
  title = "holy night"
}

global = {
  \key e \major
  \time 4/4
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % En avant la musique.
  
}

verseSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
  
}
silentnightA= { b4 e16 e8. r4 r4 }
silentnightB= { b4 fis'16 fis8. r4 r4 }
silentnightC= { gis4 b16 b8. r4 r4 }
silentnightD= { cis4 cis16 a8. r4 r4 }
silentnightE= { b4 b16 gis8. r4 r4 }
silentnightF= { b4 b8 a4 dis,8 fis4 e4 r4 r4 r4 }

silentnightAA= { cis4 e8 e8 r4 r4 }
silentnightBB= { r4 cis4 b8 b8 r4 r4 }
silentnightCC= { r4 gis8 fis8 e4  r4 }
silentnightDD= { r4 gis4 b8 b8 r4 r4 }
silentnightEE= { b4 b16 gis8. r4 r4 }
silentnightFF= { b4 b8 a4 dis,8 fis4 e4 r4 r4 r4 }
roundA={ a8 cis4 e4 cis4 a8( a8) gis4 b8 e4 r4 }
roundB={ a8 a8  cis8 e4 cis8 a4 gis4 b8 e4 r4 r4 }

roundC={ fis8 eis8 fis4 \tuplet 3/2 {a4 fis4 dis4} e8 dis8 e8 gis4. r4 r4 }
peace={b4 b8 cis8 (cis8) b8 gis4 e4 r8 r4 r4 }

mezzoSopranoVoice = \relative c' {
  \global
  \dynamicUp
  % En avant la musique.
  \silentnightA \silentnightA \silentnightB \silentnightC \silentnightD \silentnightE \silentnightF
   \relative c' {
  \roundA 
   }
      \relative c' {
  \roundB 
   }
   
   \roundC
         \relative c' {
  \peace 
   }
  \silentnightAA 
  \silentnightAA
   

}

verseMezzoSopranoVoice = \lyricmode {
  % Ajouter ici des paroles.
  si lent night ho ly night al is calm al is bright all is calm all is bright si lent night ho ly night round you vir gin mo ther and child ho ly in fant so ten der and mild slee ee p'in hea ven ly pea ea ea  eace sleep in hea ven ly peace si lent night ho ly night
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % En avant la musique.
    \compressEmptyMeasures
  R1*8 R1*8
  \silentnightBB \silentnightBB
}

verseAltoVoice = \lyricmode {
  % Ajouter ici des paroles.
  si lent night ho ly night
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % En avant la musique.
    R1*8 R1*8
  \silentnightCC \silentnightCC

}

verseTenorVoice = \lyricmode {
  % Ajouter ici des paroles.
  si lent night ho ly night
}

bassVoice = \relative c {
  \global
  \dynamicUp
  % En avant la musique.
    R1*8 R1*8
  \silentnightDD \silentnightDD

}

verseBassVoice = \lyricmode {
  % Ajouter ici des paroles.
  si lent night ho ly night
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

mezzoSopranoVoicePart = \new Staff \with {
  instrumentName = "Mezzo-soprano"
  midiInstrument = "choir aahs"
} { \mezzoSopranoVoice}
\addlyrics { \verseMezzoSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Ténor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Basse"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

\score {    

  <<
    \sopranoVoicePart
    \mezzoSopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
  >>
  \layout {     
}
  \midi {
    \tempo 4=100
  }
}
