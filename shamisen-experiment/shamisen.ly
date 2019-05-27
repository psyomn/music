\include "articulate.ly"
\version "2.18.2"
#(set-global-staff-size 16)

\header {
  title = "Shamisen Experiment"
  subtitle = "Asian Sounding Scales n Stuff"
  composer = "Simon Symeonidis"
}

music = {
  <<
  \new RhythmicStaff \with {
    instrumentName = #"taik"
    midiInstrument = #"taiko drum"
  }
  {
    \time 4/4
    \tempo 4 = 140
    \relative c' {
      \repeat volta 2 {

        \mark \default
        <c c>8-> c c c <c c>8-> c c c |
        <c c>8-> c c c <c c>8-> c c c |

        \mark \default
        c16 c c c  c c c c  c c c c c8 c |
        c16 c c c  c c c c  c c c c c8 c |
      }

      \repeat volta 2 {
        \mark \default
        r1 |
        r1 |
        r1 |
        r4 \repeat unfold 3 { c16 c c c } |
      }

      \repeat volta 2 {
        \mark \default
        \repeat unfold 2 { <c c'>16-> c c <c c'>-> c c <c c'>-> c } |
        <c c'>16-> c c <c c'>-> c c <c c'>-> c <c c'>-> c <c c'>-> c <c c'>-> c <c c'>-> c |
        \repeat unfold 2 { <c c'>16-> c c <c c'>-> c c <c c'>-> c } |
        <c c'>16-> c c <c c'>-> c c <c c'>-> c \repeat unfold 8 { <c c'>-> } |
      }
    }
  }


  \new RhythmicStaff \with {
    instrumentName = #"bells"
    midiInstrument = #"tubular bells"
  }
  {
    \repeat volta 2 { r1 | r1 | r1 | r1 | }
    \repeat volta 2 {
      \relative c''' { c1~ | c1 | c1~ | c1 | }
    }
    \repeat volta 2 { r1 | r1 | r1 | r1 | }
  }

  \new Staff \with {
    instrumentName = #"elec.bass"
    midiInstrument = #"electric bass (pick)"
  }
  {
    \clef bass
    \time 4/4
    \repeat volta 2 {
      des8 des c c c16 des f8 ges4 |
      des8 des c c c16 des f8 ges4 |
      c4 des c des |
      c4 des c des |
    }

    \repeat volta 2 {
      <c ges>1 |
      <c f>1 |
      <c ges>1 |
      <c f>1 |
    }

    \repeat volta 2 {
      <c ges>1 |
      <c f>1 |
      <c ges>1 |
      <c f>1 |
    }
  }

  \new Staff \with {
    instrumentName = #"sham"
    midiInstrument = #"shamisen"
  }
  {
    \clef treble
    \time 4/4

    \relative c' {
      \repeat volta 2 {
        des8 des c c des16 c bes ges f4 |
        des'8 des c c des16 c bes ges f4 |
        c'16 des f des f ges bes ges bes c des c bes ges f8 |
        c16 des f des f ges bes ges bes c des c bes ges f8 |
      }

      \repeat volta 2 {
        des4 c des f |
        des4 c bes ges |
        des'4 c des f |
        des4 c bes ges |
      }

      \repeat volta 2 {
        des4 c des f |
        des4 c bes ges |
        des'4 c des f |
        des4 c bes ges |
      }
    }
  }

  \new Staff \with {
    instrumentName = #"strings"
    midiInstrument = #"string ensemble 1"
  }
  {
    \clef treble
    \time 4/4

    \ottava #+2

    \relative c'''' {
      \repeat volta 2 {
        <c f>1~\ppp |
        <c f>1|
        <c ges>1~ |
        <c ges>1 |
      }

      \repeat volta 2 {
        \repeat unfold 4 { des16 c bes ges } |
        \repeat unfold 4 { des16 c bes ges } |
        \repeat unfold 4 { des'16 c des f } |
        \repeat unfold 4 { f16 des f ges } |
      }

      \repeat volta 2 {
        \repeat unfold 4 { des16 c bes ges } |
        \repeat unfold 4 { des16 c bes ges } |
        \repeat unfold 4 { des'16 c des f } |
        \repeat unfold 4 { f16 des f ges } |
      }
    }
  }
  >>
}

\score {
  \music
  \layout { }
}

\score {
  \unfoldRepeats { \music }
  \midi { }
}