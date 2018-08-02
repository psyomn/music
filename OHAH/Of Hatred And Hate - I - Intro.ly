\version "2.19.49"
\header {
  title = "I - Intro"
  composer = "Lethal Jelly Bean (Simon Symeonidis)"
  copyright = "Lethal Jelly Bean (Simon Symeonidis)"
  subtitle = "Of Hatred and Hate"
  tagline = ""
}

%% A: Intro

%% Chords for section 0
chordsA = \chords {    }

%% Notes for section 0, staff 0
staffAxA = {
  <e>1~ e~ e~ e
}

%% Notes for section 0, staff 1
staffAxB = \drummode {
  bd8 bd r bd16 bd bd8 r8 r4 |
  r1 |
  bd8 bd r bd16 bd bd8 r8 r4 |
  r1 |
}

%% Staff 3 is sleeping
staffAxC = {
  \repeat unfold 4 { r1 | }
}

%% Chords for section 1
chordsB = \chords {e1:m/+g  e1:m/+g  }

%% Notes for section 1, staff 0
staffBxA = { <<
  \new Voice = "first"  {
    \voiceTwo e1 e e  e2. e8 g16 fis
  }

  \new Voice = "second" {
    \voiceOne <e'' ais'>1 g'  <e'' ais'> fis'
  }
  >>
}

%% Notes for section 1, staff 1
staffBxB = \drummode {
  \repeat unfold 4 {
    <bd tomfl>8 <bd tomfl> bd <bd>16 bd
    \tuplet 3/2 {<bd tomfl>8 <bd tomfl> <bd tomfl>}
    bd <bd tomfl>16 <bd tomfl> | }
}

%% Notes for section 1, staff 2
staffBxC = {
  %% used to be second strings voice
}

%% B: Theme

%% Chords for section 2
%% chordsC = \chords {e2:m/+g e2:m/+fis g2 _UNKNOWN_CHORD_2/+g e2:m/+g e2:m/+fis g2 _UNKNOWN_CHORD_2/+g }

%% Notes for section 2, staff 0
staffCxA = {
  <>2
  <e'' ais' g'> <e'' ais'  fis'> |
  <g'' d''  g'> <g'' dis'' g'>   |
  <e'' ais' g'> <e'' ais'  fis'> |
  <g'' d''  g'> <g'' dis'' g'>   |
}

%% Notes for section 2, staff 1
staffCxB = {
  \repeat unfold 4 { <e>16 e r8 \tuplet 3/2 { <e>16 e e}  \tuplet 3/2 { e e e}  e e r8 r4 | }
}

%% Notes for section 2, staff 2
staffCxC = {
  <e''>2 ais' g' cis' e'' ais' g' cis'
}

%% Chords for section 3
%% chordsD = \chords {e2:m/+g e2:m/+fis g2 _UNKNOWN_CHORD_2/+g fis2/+g f2/+g c1/+f }

%% Notes for section 3, staff 0
staffDxA = {
  <e'' ais' g'>2  <e'' ais' fis'> |
  <g'' d'' g'>  <g'' dis'' g'> |
  <fis'' cis'' g'>  <f'' c'' g'>  |
  <c'' g' f'>1 |
}

%% Notes for section 3, staff 1
staffDxB = {
  \repeat unfold 4 { <e>16 e r8 \tuplet 3/2 { <e>16 e e}  \tuplet 3/2 { e e e}  e e r8 r4 | }
}

%% Notes for section 3, staff 2
staffDxC = {
  e''2 ais' |
  g' cis'  |
  fis''8 cis'' a' cis'' f'' c'' a' c'' |
  \tuplet 3/2 {e''16 f'' e''~} e''8~  e''2. |
}

%% C: Outro
%% endmark: \bar ".|:" 0 times

%% Chords for section 4
chordsE = \chords {c1/+f c1/+f c1/+f c1/+f }

%%
%% OUTRO: 4 * 4/4
%%

%% OUTRO
%% Notes for section 4, staff 0
staffExA = {
  <c'' g' f'>1 |
  <c'' g' f'>  |
  <c'' g' f'>  |
  <c'' g' f'>2  r |
}

%% OUTRO
%% Notes for section 4, staff 1
staffExB = \drummode {
  \repeat unfold 3 { <bd>16 bd r8 bd32 bd bd bd bd bd bd bd  bd16 bd r8 r4 | }
  bd16 bd r8 bd32 bd bd bd bd bd bd bd  <tomfl bd>16-> <tomfl bd>-> r8 r4 |
}

%% OUTRO
%% Notes for section 4, staff 2
staffExC = {
  c''4. c''8 g'4 f'' |
  c''4. c''8 g'4 f'' |
  c''4. c''8 g'4 f'' |
  c''4. c''8 r2 |
  \repeat unfold 4 { r1 | }
}

\score {
  <<
  \new DrumStaff \with {
    instrumentName = #"Timp."
    midiInstrument = #"timpani"
  }{ %% our tips are touching <3
    \set Score.markFormatter = #format-mark-box-alphabet

    \mark \default
    \staffAxB \bar "||"

    \mark \default
    \staffBxB \bar "||"

    \mark \default
    \staffCxB \bar "||"

    \mark \default
    \staffDxB \bar "||"

    \mark \default
    \staffExB \bar "|."
  }

  \new Staff \with {
    instrumentName = #"Str.Ens."
    midiInstrument = #"strings"
  }{
    \staffAxA
    \staffBxA
    \staffCxA
    \staffDxA
    \staffExA
  }

  \new Staff \with {
    instrumentName = #"Glocken."
    midiInstrument = "glockenspiel"
  }{
    \staffAxC
    \staffBxC
    \staffCxC
    \staffDxC
    \staffExC
  }
  >>

  \layout { }
}
