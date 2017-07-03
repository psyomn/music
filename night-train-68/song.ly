\version "2.18.2"

#(set-global-staff-size 16)

\header {
  title = "Night Train 68"
  composer = "Simon Symeonidis"
}

lower = \relative c {
  \clef bass
  \time 4/4

  \repeat unfold 2 {
    <a e>1
    r1
    <a e>1
    r1
  
    <c g>1
    <c g>1
    
  
    <d a>1
    <d a>1
  }
}

upper = \relative c'' {
  \clef treble
  \time 4/4


  \repeat unfold 2 {
    r1
    r4 <a e c>4 <a e b>2
    r1
    r4 <a e c>4 <c, e g>2
  
    <c e>16 <d b> r <c e> <b d> r <c e> <c e>
    <d f>16 <c e> r <d f> <c e> r <d f> <f a> |
    b4 c8 b16 c e4 f |
  
    f8 d f g f d g f |
    f8 d f d f d f d |
  }
}


\score {
<< 
  \new ChordNames \with {
    midiInstrument = "pad 2 (warm)"
    midiMinimumVolume = #0.0
    midiMaximumVolume = #0.0
  }
  {
    \chordmode {
      c2:6 a2:min
      c2:6 a2:min
      c2:6 a2:min
      c2:6 a2:min

      c1
      c1

      d1:min
      d1:min
    }
  }
  \new Staff \with {
    instrumentName = #"5str Bass"
    midiInstrument = #"electric bass (finger)"
  }
  {
    \clef bass
    \time 4/4

    \repeat unfold 2 {
      \repeat unfold 4 { a,8 a, a16 g r a ~ a g a b c' b a g }
  
      c8 d e4 d'8 e ~ e4|
      c8 d e4 d'8 e ~ e4|

      d8 a b a d' cis d' d' |
      d8 d d d d d d d | \bar "||"
    }

    \repeat unfold 2 {
      \repeat unfold 4 { a,8 a, a16 g r a ~ a g a b c' b a g }
  
      c8 d e4 d'8 e' ~ e'4|
      c8 d e4 d'8 e' ~ e'4|

      d8 a b a d' cis d' d' |
      d8 a b a d' cis d' d' | \bar "||"
    }
  }

  \new Staff \with {
    instrumentName = #"Elec Gtr (jazz)"
    midiInstrument = #"electric guitar (jazz)"
  }
  {
    \clef treble
    \time 4/4

    \repeat unfold 2 {
      <a' e' c' g' >1
      a'8 b' a'16 b' c'' d'' e'' d'' c'' b' a'4
      <a' e' c' g' >1
      a'8 b' a'16 b' c'' d'' e'' d'' c'' b' a'4

      c'4. e'4. g'4
      c'4. e'4. g'4 

      d8 f a d' d f a d
      d8 f a d' d f a d
    }

    \repeat unfold 1 {
      <a' e' c' g' >1
      a'8 b' a'16 b' c'' d'' e'' d'' c'' b' a'4
      <a' e' c' g' >1
      a'8 b' a'16 b' c'' d'' e'' d'' c'' b' a'4

      c'4. e'4. g'4
      c'4. e'4. g'4 

      d4 d d d
      d4 d d d
    }
  }

  \new PianoStaff \with {
    instrumentName = "Hammond"
    midiInstrument = "rock organ"
  }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>

  \new DrumStaff \with {
    instrumentName = #"Drums"
  }
  {
    \drummode {
      \repeat unfold 2 {
        \repeat unfold 4 {
          \repeat unfold 3 { <hh bd>16 hh hhho hh }
          <hh bd>16 hhho hhho hhho
        }
      }

      \repeat unfold 4 {
        <cymch bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
        <bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
      }
      \alternative {
        { <bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh | }
        { <bd hh tomfh>8 <hh tomfl> <sn bd hh> <hh tomh> <bd hh tomfh> hh <hh sn bd tomh> <hh tomfl> | }
      }

      \repeat unfold 4 {
        <cymch bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
        <bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh |
      }
      \alternative {
        { <bd hh>8 hh <sn bd hh> hh <bd hh> hh <hh sn bd> hh | }
        { <bd hh tomfh>8 <hh tomfl> <sn bd hh> <hh tomh> <bd hh tomfh> hh <hh sn bd tomh> <hh tomfl> | }
      }

    }
  }
  >>

  \layout { } 

  \midi {
    \tempo 4 = 100
  }
}

       
