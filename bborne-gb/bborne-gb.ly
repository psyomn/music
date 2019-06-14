\include "articulate.ly"
\version "2.18.2"
#(set-global-staff-size 16)

\header {
  title = "Dreadful Gameboy Theme"
  subtitle = "Interpretations of Dark Souls and Bloodborne in 4 channels"
  composer = "Simon Symeonidis"
}

music = {
  <<
  \new Staff \with {
    instrumentName = #"square"
    midiInstrument = #"lead (square)"
  }{
    \clef treble
    \time 4/4

    \relative c'''' {
      \repeat volta 2 {
        g4 fis2. |
        g4 e2. |
        g4 fis2. |
        g4 gis2. |
      }
    }

    \relative c''' {
      \repeat volta 2 {
        g4 fis2. |
        r1 |
        g4 fis2. |
        r1 |
      }
    }
  }

  \new Staff \with {
    instrumentName = #"square"
    midiInstrument = #"lead (square)"
  }{
    \clef treble
    \time 4/4

    \relative c'' {
      \repeat volta 2 {
        e,4 g'8 e g e g e |
        e,4 fis'8 e fis e fis e |
        e,4 g'8 e g e g e |
        e,4 g'8 ees g ees g ees |
      }

      \repeat volta 2 {
        \relative c''' { e1 | f | fis | g | }
      }

      \repeat volta 2 {
        b4 a'8 ees a ees a ees |
        b4 b'8 ees, b' ees, b' ees, |
        b4 a'8 ees a ees a ees |
        c'8 ees, c' ees, b' ees, b' ees, |
      }

      \repeat volta 2 {
        e,4 g'8 e g e g e |
        e,4 fis'8 e fis e fis e |
        e,4 g'8 e g e g e |
        e,4 g'8 ees g ees g ees |
      }
    }
  }

  \new Staff \with {
    instrumentName = #"bass"
    midiInstrument = #"acoustic grand"
  }{
    \clef bass
    \time 4/4

    \relative c, {
      \repeat volta 2 {
        e8 f e fis e g gis16 g fis8 |
        e8 f e fis e g gis16 g fis8 |
        e8 f e fis e g gis16 g fis8 |
        e8 f e fis e g gis16 g fis8 |
      }

      \repeat volta 2 {
        e8 f e fis e f e fis |
        e8 f e fis e f fis g |
        e8 f e fis e f e fis |
        e8 f e fis e f fis g |
      }

      \repeat volta 2 {
        \repeat unfold 4 { b4 b b b | }
      }
    }
  }

  \new DrumStaff \with {
    instrumentName = #"Drums"
  }
  {
    \time 4/4
    \tempo 4 = 140
    \drummode {
      \repeat volta 2 {
          bd4 bd bd bd |
          bd4 bd bd bd |
          bd4 bd bd bd |
          bd4 bd bd bd |
      }

      \repeat volta 2 {
          bd4 bd bd bd |
          bd4 bd bd bd |
          bd4 bd bd bd |
          bd4 bd bd bd |
      }

      \repeat volta 2 {
          bd4 bd bd bd |
          bd4 bd bd bd |
          bd4 bd bd bd |
          bd4 bd bd bd |
      }


      %% \repeat unfold 3 { <hh bd>16 hh hhho hh }
      %% <hh bd>16 hhho hhho hhho

      %% <cymch bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
      %% <bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
      %% <cymch bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
      %% <bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
    }
  }
  >>
}

\score {
  \music
  \layout { }
}

\score {
  \unfoldRepeats { \transpose c c { \music } }
  \midi { }
}