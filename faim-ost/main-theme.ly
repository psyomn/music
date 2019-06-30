\include "articulate.ly"
\version "2.18.2"
#(set-global-staff-size 16)

\header {
  title = "Faim Main Theme"
  subtitle = "Game Jam 30"
  composer = "Simon Symeonidis"
}

music = {
  <<
  \new Staff \with {
    instrumentName = #"square"
    midiInstrument = #"lead 1 (square)"
  }{
    \clef treble
    \time 6/8

    \mark "intro"
    \repeat volta 2 {
      r4. r4. |
      r4. r4. |
      r4. r4. |
      r4. r4. |

      r4. r4. |
      r4. r4. |
      r4. r4. |
      r4. r4. |
    }

    \mark "main theme"
    \relative c''' {
      \repeat volta 2 {
        c4. g bes c bes a f~ f |
        c4. g bes c ees d f ees |
      }
    }

    \mark "intermission"
    \relative c''' {
      \repeat volta 2 {
        c4. bes |
        a bes |
        c4. bes |
        a  bes |
      }
    }

    \mark "build up"
    \transpose c ees {
      \relative c''' {
        \repeat volta 2 {
          c4. g bes c bes a f~ f |
          c4. g bes c ees d f ees |
        }
      }
    }

    \mark "main theme"
    \relative c''' {
      \repeat volta 2 {
        c4. g bes c bes a f~ f |
        c4. g bes c ees d f ees |
      }
    }
  }

  \new Staff \with {
    instrumentName = #"square"
    midiInstrument = #"lead 1 (square)"
  }{
    \clef treble
    \time 6/8

    \ottava #2

    \repeat volta 2 {
      r4. r4. |
      r4. r4. |
      r4. r4. |
      r4. r4. |

      r4. r4. |
      r4. r4. |
      r4. r4. |
      r4. r4. |
    }

    \relative c'''' {
      \repeat volta 2 {
        c8  \staccato c\staccato c  \staccato  c4. \staccato |
        c8  \staccato c\staccato c  \staccato  c4. \staccato |
        c8  \staccato c\staccato c  \staccato  c4. \staccato |
        ees8\staccato d\staccato ees\staccato  d   \staccato ees \staccato d \staccato |

        c8\staccato    c\staccato  c  \staccato  c4. \staccato |
        c8\staccato    c\staccato  c  \staccato  c4. \staccato |
        c8\staccato    c\staccato  c  \staccato  c4. \staccato |
        ees8\staccato  d\staccato  ees\staccato  d \staccato ees \staccato d \staccato |
      }
    }

    \repeat volta 2 {
      r4. r4. |
      r4. r4. |
      r4. r4. |
      r4. r4. |
    }

    \transpose c ees {
      \relative c'''' {
        \repeat volta 2 {
          c8\staccato c\staccato c\staccato c4.\staccato |
          c8\staccato c\staccato c\staccato c4.\staccato |
          c8\staccato c\staccato c\staccato c4.\staccato |
          ees8\staccato d\staccato ees\staccato d\staccato ees\staccato d\staccato |

          c8\staccato c\staccato c\staccato c4.\staccato |
          c8\staccato c\staccato c\staccato c4.\staccato |
          c8\staccato c\staccato c\staccato c4.\staccato |
          ees8\staccato d\staccato ees\staccato d\staccato ees\staccato d\staccato |
        }
      }
    }

    \relative c'''' {
      \repeat volta 2 {
        c8  \staccato c\staccato c  \staccato  c4. \staccato |
        c8  \staccato c\staccato c  \staccato  c4. \staccato |
        c8  \staccato c\staccato c  \staccato  c4. \staccato |
        ees8\staccato d\staccato ees\staccato  d   \staccato ees \staccato d \staccato |

        c8\staccato    c\staccato  c  \staccato  c4. \staccato |
        c8\staccato    c\staccato  c  \staccato  c4. \staccato |
        c8\staccato    c\staccato  c  \staccato  c4. \staccato |
        ees8\staccato  d\staccato  ees\staccato  d \staccato ees \staccato d \staccato |
      }
    }
  }

  \new Staff \with {
    instrumentName = #"bass"
    midiInstrument = #"lead 1 (square)"
  }{
    \clef bass
    \time 6/8

    \relative c, {
      \repeat volta 2 {
        c'4 c,8 c'4 c,8 |
        c'4 c,8 a'8 bes f |
        c'4 c,8 c'4 c,8 |
        c'4 c,8 d'8 ees bes  |

        c4 c,8 c'4 c,8 |
        c'4 c,8 a'8 bes f |
        ees8 ees ees ees' ees, ees |
        f f f f' f, f |
      }

      \repeat volta 2 {
        c'4 c,8 c'4 c,8 |
        c'4 c,8 a'8 bes f |
        c'4 c,8 c'4 c,8 |
        c'4 c,8 d'8 ees bes  |

        c4 c,8 c'4 c,8 |
        c'4 c,8 a'8 bes f |
        ees8 ees ees ees' ees, ees |
        f f f f' f, f |
      }

      \repeat volta 2 {
        c'4 c,8 c'4 c,8 |
        c'4 c,8 a'8 bes f |
        c'4 c,8 c'4 c,8 |
        c'4 c,8 d'8 ees bes  |
      }

      \transpose c ees {
        \repeat volta 2 {
          c'4 c,8 c'4 c,8 |
          c'4 c,8 a'8 bes f |
          c'4 c,8 c'4 c,8 |
          c'4 c,8 d'8 ees bes  |

          c4 c,8 c'4 c,8 |
          c'4 c,8 a'8 bes f |
          ees8 ees ees ees' ees, ees |
          f f f f' f, f |
        }
      }

      \repeat volta 2 {
        c'4 c,8 c'4 c,8 |
        c'4 c,8 a'8 bes f |
        c'4 c,8 c'4 c,8 |
        c'4 c,8 d'8 ees bes  |

        c4 c,8 c'4 c,8 |
        c'4 c,8 a'8 bes f |
        ees8 ees ees ees' ees, ees |
        f f f f' f, f |
      }
    }

  }

  \new DrumStaff \with {
    instrumentName = #"Drums"
  }
  {
    \time 6/8
    \tempo 4 = 200
    \drummode {
      \repeat volta 2 {
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |

      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      }

      \repeat volta 2 {
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |

      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      }

      \repeat volta 2 {
        bd4 bd8 sn4 bd8 |
        bd4 bd8 sn4 bd8 |
        bd4 bd8 sn4 bd8 |
        bd4 bd8 sn4 bd8 |
      }

      \repeat volta 2 {
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |

      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
    }


    \repeat volta 2 {
      sn8 sn sn bd sn sn|
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |

      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
      bd4 bd8 sn4 bd8 |
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
  \unfoldRepeats { \transpose c c { \music } }
  \midi { }
}