\version "2.18.2"

#(set-global-staff-size 16)

\header {
  title = "Heart"
  composer = "Simon Symeonidis"
}


\score {
<<

  \new Staff \with {
    instrumentName = #"5str Bass"
    midiInstrument = #"electric bass (finger)"
  }
  {
    \clef bass
    \time 15/8
    \tempo 4 = 100

    \relative c {
      \set Timing.beatStructure = 3,3,3,4,2
      a8 g' d' a, a' c a, g' d' a, g' c a c a |
      a,8 g' d' a, a' c a, g' d' a, g' c a c a |
      a,8 f' c' a, f' b a, f' c' a, f' b f b f |
      a,8 e' a a,  e' a a,  e' a a, a' d a d a |
    }
  }
>>

  \layout { }

  \midi {
    \tempo 4 = 100
  }
}
