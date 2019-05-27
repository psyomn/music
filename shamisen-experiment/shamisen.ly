\version "2.18.2"
#(set-global-staff-size 16)

\header {
  title = "Shamisen Experiment"
  subtitle = "Studies in Asian Sounding Scales"
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
    \time 4/4
  }

  \new Staff \with {
    instrumentName = #"sham"
    midiInstrument = #"shamisen"
  }
  {
    \clef treble
    \time 4/4

    \relative c' {
      des8 des c c des16 c bes ges f4 |
      des'8 des c c des16 c bes ges f4 | \bar "||"
      c'16 des f des f ges bes ges bes c des c bes ges f8 |
      c16 des f des f ges bes ges bes c des c bes ges f8 | \bar "||"
    }
  }

  \new RhythmicStaff \with {
    instrumentName = #"taik"
    midiInstrument = #"taiko drum"
  }
  {
    \time 4/4
    \relative c' {
      c4 c c c |
      c4 c c c | \bar "||"
      c4 c c c |
      c4 c c c | \bar "||"
    }
  }

  %% \new DrumStaff \with {
  %%   instrumentName = #"Drums"
  %% }
  %% {
  %%   \drummode {
  %%       \repeat unfold 3 { <hh bd>16 hh hhho hh }
  %%       <hh bd>16 hhho hhho hhho
  %%       <cymch bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
  %%       <bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
  %%       <cymch bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
  %%       <bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
  %%   }
  %% }
  >>

  \layout { }

  \midi {
    \tempo 4 = 100
  }
}