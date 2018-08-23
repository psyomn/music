\version "2.18.2"

#(set-global-staff-size 16)

\header {
  title = "Studies in Melding"
  subtitle = "Making weird things weirder"
  composer = "Simon Symeonidis"
}

lower = \relative c {
  \clef bass

  \repeat unfold 2 {
    \time 5/8
    \set Staff.beatStructure = 3,2
    a8 g a e' d |
    \time 7/8
    \set Staff.beatStructure = 3,2,2
    a8 g a e' d f e |
    \time 9/8
    \set Staff.beatStructure = 3,2,2,2
    a8 g a e d c b d c |
  } \bar "|."
}

upper = \relative c'' {
  \clef treble
  \time 4/4
  \tempo 4 = 120

  \repeat unfold 2 {
    \time 5/8
    \set Staff.beatStructure = 3,2
    a4. f8 g8 |

    \time 7/8
    \set Staff.beatStructure = 3,2,2
    f4. e4 f8 g8 |

    \time 9/8
    \set Staff.beatStructure = 3,2,2
    b4. c4 d e |
  }
}

\markup { 3*8+2(2*8n), n={1,2,3} }
\score {
  \header {
  }
  \new PianoStaff \with {
    % instrumentName = "grnd.pns"
    midiInstrument = "acoustic grand"
  }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

  \layout { }
  \midi { }
}

\markup { Kolakoski/Oldenburger Sequence }
\score {
  \header {
    title = "test"
  }
  \new PianoStaff \with {
    % instrumentName = "grnd.pns"
    midiInstrument = "acoustic grand"
  }
  <<
    \new Staff = "upper" {
      \clef treble
      \time 4/4
      \tempo 4 = 120

      a1 \bar "|."
    }
    \new Staff = "lower" {
      \clef bass
      \time 4/4

      a,1 \bar "|."
    }
  >>

  \layout { }
  \midi { }
}
