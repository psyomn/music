\include "articulate.ly"
\version "2.18.2"
#(set-global-staff-size 16)

\header {
  title = "Silhouette"
  subtitle = "Little Above Zero"
  composer = "Simon Symeonidis"
}

lv =  \laissezVibrer

bass_begin = \repeat unfold 2 {
  e8\lv e'\lv e'\lv
  e,\lv e,\lv d'\lv
  d'\lv d,\lv |
  e,8 e' e' e, e, fis' fis' fis, |
}

bass_intro = \repeat volta 4 {
  e,8 e e'16 d e e,8 e16 e~ e e'8 d |
  \mark \markup {"x4"}
}

bass_verse_common = \repeat volta 4 {
  e,8 e e'16 d e e,8 e16 e~ e e'8 d |
  e,8 e fis'16 e fis e,8 e16 e~ e fis'8 e |
  e,8 e g'16 fis g e,8 e16 e~ e g'8 fis |
  d16 d d d d d d d  d cis cis cis cis cis cis cis | \mark \markup {"x4"}
}

bass_verse_melody = \repeat volta 2 {
  e,8 e e'16 d e e,8 e16 e~ e e16 g d' g, |
  e8 e e'16 d e e,8 e16 e~ e e16 g d' g, |
}

bass_chorus = \repeat volta 2 {
  \chordmode {
    \powerChords
    e,,4.:1.5.8
    e,,4:1.5.8
    e,,8:1.5.8
    e,,4:1.5.8 |

    g,,4.:1.5.8
    g,,4:1.5.8
    g,,8:1.5.8
    g,,4:1.5.8 |

    d,,4.:1.5.8
    d,,4:1.5.8
    d,,8:1.5.8
    d,,4:1.5.8 |

    a,,,8:1.5.8
    a,,,8:1.5.8
    a,,,8:1.5.8
    a,,,8:1.5.8
    a,,,8:1.5.8
    a,,,8:1.5.8
    a,,,8:1.5.8
    a,,,8:1.5.8 |

    e,,4.:1.5.8
    e,,4:1.5.8
    e,,8:1.5.8
    e,,4:1.5.8 |

    g,,4.:1.5.8
    g,,4:1.5.8
    g,,8:1.5.8
    g,,4:1.5.8 |

    d,,4.:1.5.8
    d,,4:1.5.8
    d,,8:1.5.8
    d,,4:1.5.8 |

    a,,8:1.5.8
    a,,8:1.5.8
    a,,8:1.5.8
    a,,8:1.5.8
    a,,8:1.5.8
    a,,8:1.5.8
    a,,8:1.5.8
    a,,8:1.5.8 |
  }
}

bass_interlude = \repeat volta 4 {
  e8 e e'16 d e e,8 e16 e~ e e' bes' e bes' |
  e,,,8 e e'16 d e e,8 e16 e~ e e f b e |
}

bass_preverse = \repeat volta 4 {
}

bass_two_verse = \repeat volta 4 {
  e8 b'8~ b2. |
  fis8 b8~ b2. |
  b4 a2. |
  d8 e a e d cis a4 |
}

bass_two_verse_melody = \repeat volta 2 {
  e'16 e e e e e e e e e e e e d d d |
  e e e e e e e e e e e e e d d d |
}

vocals_verse = \repeat volta 2 {
}

vocals_chorus = \repeat volta 4 {
}

vocals_intermission = \repeat volta 4 {
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
    \tempo 4 = 100

    %% \relative c'' {
    %%   \mark \default
    %%   r1 |

    %%   \vocals_verse
    %%   \vocals_verse
    %%   \vocals_chorus
    %%   \vocals_intermission
    %%   \vocals_preverse
    %%   \vocals_verse
    %% }

  } \addlyrics {
   %%   %% verse
   %% <<
   %%   { a a a a a a a a a a a a a a }
   %%   \new Lyrics { b b b b b b b b b b b b b b }
   %% >>

   %% <<
   %%   { a a a a a a a a a a a a a a }
   %%   \new Lyrics { b b b b b b b b b b b b b b }
   %% >>
  }

  << %% bass tab staff
  \new Staff \with {
    instrumentName = #"dist. bass 1"
    midiInstrument = #"distorted guitar"
  }{
    \clef "bass_8"
    \time 4/4
    \key e \minor

    \relative c,,{
      \mark "begin"

      %% e8\lv e'\lv e'\lv
      %% e,\lv e,\lv d'\lv
      %% d'\lv d,\lv |
      %% e,8 e' e' e, e, fis' fis' fis,|

      \bass_begin
      \bass_intro
      \bass_verse_common
      \bass_verse_melody
      \bass_chorus
      \bass_interlude

      %% \mark "Verse"
      %% \bass_verse_common

      %% \mark "Verse I"
      %% \bass_verse_melody

      %% \mark "Chorus I"
      %% \bass_chorus

      %% \mark "Intermission I"
      %% \bass_intermission

      %% \mark "Preverse"
      %% \bass_preverse

      %% \mark "Verse II"
      %% \relative c, {
      %%   \bass_verse_common
      %% }
      %% \bass_verse_common
    }
  }
  \new TabStaff \with {
    stringTunings = #bass-tuning
    midiInstrument = "none"
    midiMinimumVolume = #0.0
    midiMaximumVolume = #0.0
  }{
    \clef "bass_8"
    \relative c,, {

      \bass_begin
      \bass_intro
      \bass_verse_common
      \bass_verse_melody
      \bass_chorus
      \bass_interlude
    }
  }
  >> %% end bass tab staff

  \new Staff \with {
    instrumentName = #"dist. bass 2"
    midiInstrument = #"distorted guitar"
  }{
    \clef "bass_8"
    \time 4/4

    \relative c,, {
      %% begin
      e''2 d |
      e fis |
      e2 d |
      e fis |

      %% intro
      \repeat volta 4 { e,4 e e e }

      \bass_two_verse
      \bass_two_verse_melody
      \bass_chorus
      \transpose c c,, { \bass_interlude }
    }
  }


  \new DrumStaff \with {
    instrumentName = #"Drums"
  }
  {
    \drummode {
      \time 4/4

      %% begin
      r1 | r1 | r1 | r1 |

      %% intro
      \repeat volta 4 {
        <crashcymbal bd>4 <bd cymch> <bd cymch> <cymch sn bd>16 bd bd8 |
      }

      %% verse
      \repeat volta 4 {
        <crashcymbal sn bd hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh } |
        <cymch bd sn hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh }  |
        <crashcymbal sn bd hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh } |

        <cymch bd sn hh>16 <sn hh> hh <sn hh>
        <cymch bd sn hh> hh <sn hh> <sn hh>
        <cymch bd sn hh> <sn hh> <sn hh> <sn hh>
        <cymch bd sn hh> <sn hh> <sn hh> <sn hh> |
      }


      \repeat volta 2 {
        <crashcymbal bd>16 bd bd bd \repeat unfold 3 { <cymch bd> bd bd bd  } |
        <crashcymbal bd>16 bd bd bd \repeat unfold 3 { <cymch bd> bd bd bd  } |
      }

      \repeat volta 2 {
        %% TODO Be original here
        <crashcymbal sn bd hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh } |
        <cymch bd sn hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh }  |
        <crashcymbal sn bd hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh } |
        <cymch bd sn hh>16 <sn hh> hh <sn hh>
        <cymch bd sn hh> hh <sn hh> <sn hh>
        <cymch bd sn hh> <sn hh> <sn hh> <sn hh>
        <cymch bd sn hh> <sn hh> <sn hh> <sn hh> |

        <crashcymbal sn bd hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh } |
        <cymch bd sn hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh }  |
        <crashcymbal sn bd hh>16 hh hh hh \repeat unfold 3 { <bd hh sn> hh hh hh } |
        <cymch bd sn hh>16 <sn hh> hh <sn hh>
        <cymch bd sn hh> hh <sn hh> <sn hh>
        <cymch bd sn hh> <sn hh> <sn hh> <sn hh>
        <cymch bd sn hh> <sn hh> <sn hh> <sn hh> |
      }

      %% INTERLUDE
      \repeat volta 2 {
        <crashcymbal bd>16 bd bd bd \repeat unfold 3 { <cymch bd> bd bd bd  } |
        <crashcymbal bd>16 bd bd bd \repeat unfold 3 { <cymch bd> bd bd bd  } |
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