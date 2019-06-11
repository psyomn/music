\include "articulate.ly"
\version "2.18.2"
#(set-global-staff-size 16)

\header {
  title = "FU"
  subtitle = "Little Above Zero"
  composer = "Simon Symeonidis"
}

bass_verse_common = \repeat volta 2 {
  e8 e e e  e e e e |
  e  e e e  g g a a |
  e8 e e e  e e e e |
  e  e e e  g g a a |
}

bass_verse_melody = \repeat volta 2 {
  r4 g''8 fis d2 |
  cis8 d e a, r2 |
  r4 g'8 fis d2 |
  cis8 d e a, r2 |
}

bass_chorus = \repeat volta 4 {
  e8 e  e'16 d e8  e,8 e  e'16 d e8 |
  e,8 e  e'16 d e8  g fis d d |
  e,8 e  e'16 d e8  e,8 e  e'16 d e8 |
  e,8 e  e'16 d e8  g, g' fis d |
}

bass_intermission = \repeat volta 4 {
  e,8 e e e  d' e, e'4  |
  e,8 e e e  g e fis4  |
  e8 e e e  d' e, e'4  |
  g,4 g'8 g, fis'4 d |
}

bass_preverse = \repeat volta 4 {
  e,8 e r e a d a'4 |
  e,8 e r e a d g4 |
  e,8 e r e a d a'4 |
  g8 fis g fis cis d e a, |

}

vocals_verse = \repeat volta 2 {
  r4 e4 e r8 e |
  e8 e d8 e r2 |
  r4 e4 e r8 e |
  e8 e d4 e r4 |
}

vocals_chorus = \repeat volta 4 {
  \repeat unfold 3 { e4\staccato e\staccato e\staccato e\staccato | }
  e2 e2 |
}

vocals_intermission = \repeat volta 4 {
  r2 d,4 e |
  r2 g4 fis |
  r2 d4 e |
  g4 g fis fis |
}

vocals_preverse = \repeat volta 4 { \repeat unfold 4 { r1 | } }

music = {
  <<
 \new Staff \with {
    instrumentName = #"vocals"
    midiInstrument = #"choir aahs"
  }{
    \clef treble
    \time 4/4
    \tempo 4 = 160

    \relative c'' {
      \mark \default
      r1 |

      \vocals_verse
      \vocals_verse
      \vocals_chorus
      \vocals_intermission
      \vocals_preverse
      \vocals_verse
    }

  } \addlyrics {
      %% verse
    <<
      { a a a a a a a a a a a a a a }
      \new Lyrics { b b b b b b b b b b b b b b }
    >>

    <<
      { a a a a a a a a a a a a a a }
      \new Lyrics { b b b b b b b b b b b b b b }
    >>

      %% chorus
      I may be an
      a -- ni -- mal but
      who are you who
      are you

      %% intermission
      fuck you
      I'm true
      and I
      won't -- be a -- lie
  }

  \new Staff \with {
    instrumentName = #"dist bass 2"
    midiInstrument = #"overdriven guitar"
  }{
    \clef bass
    \time 4/4
    \tempo 4 = 160

    \relative c,, {
      \mark \default
      r2 <d' a>4 <e b>4 |

      \mark "Verse"
      \bass_verse_common

      \mark "Verse I"
      \bass_verse_melody

      \mark "Chorus I"
      \bass_chorus

      \mark "Intermission I"
      \bass_intermission

      \mark "Preverse"
      \bass_preverse

      \mark "Verse II"
      \relative c, {
        \bass_verse_common
      }
      \bass_verse_common

    }
  }

  \new Staff \with {
    instrumentName = #"dist bass 1"
    midiInstrument = #"overdriven guitar"
  }{
    \clef bass
    \time 4/4
    \tempo 4 = 160

    \relative c,, {
      r2 <d' a>4 <e b>4 |

      \bass_verse_common
      \bass_verse_common

      \bass_chorus
      \bass_intermission
      \bass_preverse

      \relative c, {
        \bass_verse_common
      }
      \bass_verse_common
    }
  }


  \new DrumStaff \with {
    instrumentName = #"Drums"
  }
  {
    \drummode {
      \time 4/4

      r2 <bd sn>4 <bd sn>4 |

      %% verse
      \repeat volta 2 {
        bd4 <bd sn> bd8 bd <sn bd>4 |
        bd4 <bd sn> bd8 bd <sn bd> bd |
        bd4 <bd sn> bd8 bd <sn bd>4 |
        bd4 <bd sn> bd8 bd <sn bd> bd |
      }

      \repeat volta 2 {
        bd4 <bd sn> bd8 bd <sn bd>4 |
        bd4 <bd sn> bd8 bd <sn bd> bd |
        bd4 <bd sn> bd8 bd <sn bd>4 |
        bd4 <bd sn> bd8 bd <sn bd> bd |
      }

      \repeat volta 4 {
        \repeat unfold 4 { <cymch sn bd>16 bd bd bd } |
        \repeat unfold 4 { <cymch sn bd>16 bd bd bd } |
        \repeat unfold 4 { <cymch sn bd>16 bd bd bd } |
        \repeat unfold 4 { <cymch sn bd>16 bd bd bd } |
      }

      \repeat volta 4 {
        <bd sn cymch>8 bd bd bd <bd sn cymch> bd <bd sn cymch>4 |
        <bd sn cymch>8 bd bd bd <bd sn cymch> bd <bd sn cymch>4 |
        <bd sn cymch>8 bd bd bd <bd sn cymch> bd <bd sn cymch>4 |
        <bd sn cymch>4 <bd sn cymch>8 <bd sn cymch> <bd sn cymch>4 <bd sn cymch>4 |
      }

      %% preverse
      \repeat  volta 4 {
        <bd sn>8 bd r bd <bd sn> bd bd bd |
        <bd sn>8 bd r bd <bd sn> bd bd bd |
        <bd sn>8 bd r bd <bd sn> bd bd bd |
        <bd sn>8 bd r bd <bd sn> bd bd bd |
      }

      %% verse
      \repeat volta 2 {
        bd4 <bd sn> bd8 bd <sn bd>4 |
        bd4 <bd sn> bd8 bd <sn bd> bd |
        bd4 <bd sn> bd8 bd <sn bd>4 |
        bd4 <bd sn> bd8 bd <sn bd> bd |
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