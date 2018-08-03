\version "2.18.2"

\include "articulate.ly"

#(set-global-staff-size 16)

\header {
  title = "Welcome to the NHK"
  subtitle = "Open Casket Bukkake: Thick and Chunky"
  composer = "Open Casket Bukkake"
}

%% Chorus
%% A terrible conspiracy to push me out
%% A terrible conspiracy to lock me in
%% A terrible conspiracy to hurt me
%% Welcome, to the, N. H. K.

%%
%% VOCALS
%%

vocals_verse = \relative c'' {
  \repeat unfold 2 {
    e8 e e d e4. g16 g |
    g4 fis d2 |
    e8 e e d e4. g16 g |
    g4 fis a2 |
  }
}

vocals_chorus = \relative c'' {
  %% \repeat unfold 4 { r1 | }
  e8 e4 e8~ e4 e16 e e e |
  g4 fis4  d2 |

  e8 e4 e8~ e4 e16 e e e |
  g4 fis4  a2 |

  e8 e4 e8~ e4 e16 e e e |
  g4 fis4  d2 |

  e8. e16~ e4  e'8. e16~ e4 |
  d8. d16~ d4  a2 |
}

vocals_interlude = \relative c {
  \repeat unfold 8 { r1 | }
}

%%
%% BASS
%%

bass_verse = \relative c, {
  \repeat unfold 4 {
    e16 e e e e e e e \relative c { e e e e  e e e e } |
    d d d d d d d d  g g g g g g g g |
  }
}
bass_chorus = \relative c, {
  \repeat unfold 3 {
    e16 e e e~ e  e e e   e' e e e~ e e e e |
    d16 d d d~ d  d d d   a a a a~ a a a a |
  }

  e8. e16~ e4  e'8. e16~ e4 |
  d8. d16~ d4  a2 |
}
bass_interlude = \relative c, {
  \repeat unfold 4 {
    e8 e \staccato b'16 a g fis e8 e \staccato b'16 a g fis |
    c8 c \staccato g'16 fis d c d8 d \staccato d16 d d d |
  }
}

%%
%% KEYBOARDS
%%

keyboard_verse = \relative c {
  \repeat unfold 4 {
    <e b>2  <e' b'> |
    <d fis> <g d>  |
  }
}

keyboard_chorus = \relative c' {
  \repeat unfold 3 {
    e'16 e, e' e, e' e, e' e, e' e, e' e, e' e, e' e, |
    d'16  d, d' d, d' d, d' d, a' a, a' a, a' a, a' a, |
  }

  e''16 f e e,
  e'16 f e e,
  e'16 f e e,
  e'16 f e e, |

  %% d'16  d, d' d, d' d, d' d, a' a, a' a, a' a, a' a, |

  d'16 e d d,
  d'16 e d d,
  e' a  e e,
  e' a  e e, |
}

keyboard_interlude = \relative c' {
  <e b>1 |
  <c g>2 <d a> |
}

%%
%% GUITAR
%%

guitar_verse = \relative c {
  \repeat unfold 4 {
    \repeat unfold 8 { <e b>16  } \repeat unfold 8 { <e' b'>16 } |
    \repeat unfold 8 { <fis d> } \repeat unfold 8 { <g d> }     |
  }
}

guitar_chorus = {
  \repeat unfold 3 {
    <e b>16 <e b> <e b> <e b>~ <e b> <e b> <e b> <e b> <e' b'> <e' b'> <e' b'> <e' b'>~ <e' b'> <e' b'> <e' b'> <e' b'> |
    <d' a'>16 <d' a'> <d' a'> <d' a'>~ <d' a'> <d' a'> <d' a'> <d' a'> <a e> <a e> <a e> <a e>~ <a e> <a e> <a e> <a e> |
  }

  <e b>8. <e b>16~ <e b>4 <e' b'>8. <e' b'>16~ <e' b'>4 |
  <d' a'>8. <d' a'>16~ <d' a'>4 <a e>2 |
}

guitar_interlude = \relative {
  \repeat unfold 4 {
    e16  g' fis g e, g' fis g e, g' fis g e, g fis g |
    c  g' fis g c g fis g d g fis g d g fis g |
  }
}

%%
%% Drums
%%

drums_verse = \drummode {
  \repeat unfold 3 {
    \repeat unfold 3 { <hh bd>16 hh hhho hh } <hh bd>16 hhho hhho hhho |
    \repeat unfold 3 { <hh bd>16 hh hhho hh } <hh bd >16 hhho <hhho> hhho |
  }

  \repeat unfold 3 { <hh bd>16 hh hhho hh } <hh bd>16 hhho hhho hhho |
  \repeat unfold 2 { <hh bd>16 hh hhho hh }
    <hh bd sn>16 <sn hhho> <sn hhho> <sn hhho>
    <hh bd sn>16 <sn hhho> <sn hhho> <sn hhho> |
}

drums_chorus = \drummode {
  \repeat unfold 3 {
    <cymc bd sn>16 bd bd <sn bd>~ <sn bd> bd bd bd  <sn cymc bd>16 bd bd <sn bd>~ <sn bd> bd bd bd |
    <cymc bd sn>16 bd bd <sn bd>~ <sn bd> bd bd bd  <sn cymc bd>16 bd bd <sn bd>~ <sn bd> <sn bd> <sn bd> <sn bd> |
  }

  <bd sn cymc>8. <bd sn cymc>16~ <bd sn cymc>4 <bd sn cymc>8. <bd sn cymc>16~ <bd sn cymc>4 |
  <bd sn cymc>8. <bd sn cymc>16~ <bd sn cymc>4 <bd sn cymc>2 |
}

drums_interlude = \drummode {
  \repeat unfold 7 { bd4 <bd sn> bd8 bd <bd sn>16 bd bd bd | }
  bd4 <bd sn> bd8 bd <bd sn>16 <sn bd> <sn bd> <sn bd> |
}

%%
%% SONG
%%

\score {
  <<
    %% \new ChordNames \with {
    %%   midiInstrument = "pad 2 (warm)"
    %%   midiMinimumVolume = #0.0
    %%   midiMaximumVolume = #0.0
    %% }
    %% {
    %%
    %% }

    \new Staff \with {
      instrumentName = #"Vocals"
      midiInstrument = #"choir aahs"
    }
    {
      \key e \minor
      r1 \bar "||"

        \vocals_verse
        \vocals_chorus
        \vocals_interlude
    }

    \new Staff \with {
      instrumentName = #"5str Bass"
      midiInstrument = #"electric bass (finger)"
    }
    {
      \key e \minor
      \clef bass
      \time 4/4

      r1 \bar "||"

      \tempo 4 = 100
      \mark "Verse I"
      \bass_verse \bar "||"

      \mark "Chorus"
      \bass_chorus \bar "||"

      \mark "Interlude"
      \bass_interlude \bar "||"
    }

    \new Staff \with {
      instrumentName = #"ovrdrv. gtr."
      midiInstrument = #"overdriven guitar"
    }
    {
      \key e \minor
      \clef treble
      \time 4/4

      r1 \bar "||"

        \guitar_verse
        \guitar_chorus
        \guitar_interlude
    }

    \new Staff \with {
      instrumentName = #"keys saw."
      midiInstrument = #"vibraphone"
    }
    {
      \key e \minor
      r1 \bar "||"

        \keyboard_verse
        \keyboard_chorus
        \keyboard_interlude
    }

    \new DrumStaff \with {
      instrumentName = #"Drums"
    }
    {
      r1 \bar "||"
        \drums_verse
        \drums_chorus
        \drums_interlude
    }
  >>

  \layout { }

  \midi {
    \tempo 4 = 100
  }
}
