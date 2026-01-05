\version "2.24.3"

\header {
  title = "holy night"
}

global = {
  \key c \major
  \time 4/4
}
songTwo = \relative c' {
  \global
  a4 cis8 e4 cis8 a4 gis4. b8 e2 
  
    a,8 a cis e4 cis a8 gis4 b8 e4. r4 

  fis4 fis8 a4 fis8 dis4 e4. gis8 (gis2) 
  \break
  b4 b8 cis4 b8 gis4 e1
  
  
      b4 e8 e4. r4 b4 e8 e4. r4 
      b4 fis8 fis4. r4 gis4 b8 b4. r4 
      cis4 cis8 a4. r4 b4 b8 gis4. r4 
            d4 d8 a4. dis8 fis4 e1 


}
songOne = \relative c'' {
  \global
  % En avant la musique.
  a4 a8 cis4 a8 fis4 gis8 (g) gis e'4. r4 
  
  b4 b8 cis4 b8 gis4 e1
  
  a4 a8 cis4 a8 a4 gis2 e'2
  b4 gis8 a4 gis8 e4 e1 
  \break     e4 gis8 gis4. r4 e4 gis8 gis4. r4 

}


sopranoOne = \relative c'' {
  \global
  % En avant la musique.
    a4 a8 a4 a4 e8 e4 gis8 b4. r4
 cis8 cis cis cis4 cis cis4 b4 b8 e4. r4
 b4 b8 cis4 b8 gis4 e1
 
  a4 a8 cis4 a8 a4 gis2 e'2 
  r4 r8 r4. r4 r4 r8 r4. r4 
}

sopranoTwo = \relative c' {
  \global
  % En avant la musique.
  e4 fis8  cis'4 cis4 cis8 b4 gis8 e4. r4 
 fis8 fis fis e'4 cis ais8 b4 e8 gis4. r4
 e4 cis8 cis4. b4 cis4. b4. gis4
 
   b4 gis8 a4 gis8 e4 e1 
  r4 r8 r4. r4 r4 r8 r4. r4 

}

alto = \relative c' {
  \global
  % En avant la musique.
  cis4 cis8 cis4 cis8 cis4 b8 gis4. b4 r4
  cis8 cis cis cis4 cis8 cis4 b4 gis8 b4. r4
  cis4 cis8 cis4 cis8 b4 b1
  e4 e8 fis4 e8 cis4 b1
  

    gis4 b8 b4. r4 gis4 b8 b4. r4        
    gis4 b8 b4. r4 cis4 e8 e4. r4        
    e4 e8 cis4. r4 dis4 dis8 b4. r4        
  dis4 dis8 cis4 b8 a4 gis1

}

tenor = \relative c' {
  \global
  % En avant la musique.
  e4 e8 e4 e4 e8 e4 e8 e4. r4 
    e8 e e e4 e e8 e4 e8 gis4. r4 fis fis8 fis4 fis8 fis4 fis1 gis4 gis8 gis4 fis8 fis4 fis2 (gis2)
        b4 b8 b4. r4 b4 b8 b4. r4

    cis4 cis8 cis4. r4 b4 b8 b4. r4
     dis4 dis8 dis4 dis8 dis4 dis1

}

bass = \relative c {
  \global
  % En avant la musique.
  r1 r1 r1 r1 gis4 gis8 gis4 gis8 gis4 gis1 fis4 fis8 fis4 fis8 fis4 gis1
  b4 b8 b4. r4  b4 b8 b4. r4 
}

verse = \lyricmode {
  % Ajouter ici des paroles.
  round you vir gin mo ther and child
  ho ly in fant so ten der and child
  slee pin hea ven ly peace sleep in hea ven ly peace
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "fondamentale1"
      instrumentName = \markup \center-column { "fonda" "mentale" }
    } <<
       \new Voice = "song2" { \voiceOne \songTwo }
        \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "song2" \verse

    >>


    \new Staff \with {
      midiInstrument = "fondamentale"
      instrumentName = \markup \center-column { "fonda" "mentale" }
    } <<
       \new Voice = "song1" { \voiceOne \songOne }
       
           \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "song1" {
     sleep in hea ven ly peace slee pin hea ven ly peace   slee pin hea ven ly peace slee pin hea ven ly peace
    }

    >>

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Soprano I" "Soprano II" }
    } <<

      \new Voice = "soprano1" { \voiceOne \sopranoOne }
      \new Voice = "soprano2" { \voiceTwo \sopranoTwo }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano1" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Ténor"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Basse"
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
