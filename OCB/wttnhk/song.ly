\version "2.18.2"

#(set-global-staff-size 16)

\header {
  title = "Welcome to the NHK"
  composer = "Open Casket Bukkake"
}

%% A terrible conspiracy to hurt me
%% A terrible conspiracy to push me out
%% A terrible conspiracy to lock me in
%% Welcome, to the, N. H. K.

%%
%% VOCALS
%%

vocals_verse = \relative c {
  \repeat unfold 4 {
    \repeat unfold 4 {
      r1
    }
  }
}

vocals_chorus = \relative c {
}

%%
%% BASS
%%

bass_verse = \relative c, {
  \repeat unfold 4 {
    e16 e e e e e e e  \relative c { e e e e  e e e e } |
    fis fis fis fis fis fis fis fis  g g g g g g g g |
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
  \repeat unfold 8 {
    e8 e e16 e e e e8 e e16 e e e |
    c8 c c16 c c c d8 d d16 d d d |
  }
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
  \repeat unfold 8 {
    e16  g' fis g e, g' fis g e, g' fis g e, g fis g |
    c  g' fis g c g fis g d g fis g d g fis g |
  }
}

%%
%% Drums
%%

drums_verse = \drummode {
  \repeat unfold 4 {
    \repeat unfold 3 { <hh bd>16 hh hhho hh } <hh bd>16 hhho hhho hhho |
    \repeat unfold 3 { <hh bd>16 hh hhho hh } <hh bd >16 hhho <hhho> hhho |
  }
}

drums_chorus = \drummode {
  \repeat unfold 3 {
    <crashcymbal bd>16 bd bd bd~ bd bd bd bd  <crashcymbal bd>16 bd bd bd~ bd bd bd bd |
    <crashcymbal bd>16 bd bd bd~ bd bd bd bd  <crashcymbal bd>16 bd bd bd~ bd bd bd bd |
  }

  <bd sn crashcymbal>8. <bd sn crashcymbal>16~ <bd sn crashcymbal>4 <bd sn crashcymbal>8. <bd sn crashcymbal>16~ <bd sn crashcymbal>4 |
  <bd sn crashcymbal>8. <bd sn crashcymbal>16~ <bd sn crashcymbal>4 <bd sn crashcymbal>2 |
}

drums_interlude = \drummode {
  \repeat unfold 16 { bd4 <bd sn crashcymbal> bd8 bd <bd sn> bd | }
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
      midiInstrument = #"electric guitar (jazz)"
    }
    {
      \key e \minor
      r1 \bar "||"

      \vocals_verse
      \vocals_chorus
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

      \mark "Verse I"
      \bass_verse \bar "||"
      \mark "Chorus"
      \bass_chorus \bar "||"
      \mark "Interlude"
      \bass_interlude
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

  \layout {
    %% \set Score.markFormatter = #format-mark-box-letters
  }

  \midi {
    \tempo 4 = 100
  }
}
