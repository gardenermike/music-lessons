\header {
  title = \markup \center-align { "Maybe Not" }
  composer =  "Mike Challis"
  meter = "Andante"
  tagline = \markup \center-column {"This work is released to the public domain and may be freely copied or modified." "Engraving by LilyPond -- www.lilypond.org"}
}

global = {
  \key c \major
  \time 2/4
  \tempo 2=70
}


upper = \relative c' {
  \clef treble

  d4( g4 ~
  g2
  f2)
  e4( d
  e c)
  d( c
  c2) ~
  c2

  e4( g4 ~
  g2
  f2)
  e4( d
  e c)
  d( g
  g2) ~
  g2

  e4( g4 ~
  g2
  f2)
  e4( d
  e a)
  g( c,
  c2) ~
  c2

  d4( g4 ~
  g2
  f2)
  e4( d
  e c)
  d( c
  c2) ~
  c2

  \bar "|."
}

lower = \relative c {
  \clef bass

  <c g'>2 ~
  <c g'>2
  <d a'>2 ~
  <d a'>2
  <e a>2
  <d b'>2 ~
  <d b'>2 ~
  <d b'>2

  <c g'>2 ~
  <c g'>2
  <d a'>2 ~
  <d a'>2
  <e a>2
  <d b'>2 ~
  <d b'>2 ~
  <d b'>2

  <c g'>2 ~
  <c g'>2
  <d a'>2 ~
  <d a'>2
  <e a>2
  <d b'>2 ~
  <d b'>2 ~
  <d b'>2

  <c g'>2 ~
  <c g'>2
  <d a'>2 ~
  <d a'>2
  <e a>2
  <d b'>2 ~
  <d b'>2 ~
  <d b'>2
}

dynamics = {
}

pedal = {
  % s2\sustainOn s\sustainOff
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \override PianoStaff.InstrumentName #'self-alignment-Y = #-5.5
    \set PianoStaff.instrumentName = #"Piano "
    \new Staff = "Staff_pfUpper" << \global \upper >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "Staff_pfLower" << \global \lower >>
    \new Dynamics = "pedal" \pedal
  >>
  \layout { }
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "Staff_pfUpper" << \global \upper \dynamics \pedal >>
    \new Staff = "Staff_pfLower" << \global \lower \dynamics \pedal >>
  >>
  \midi { }
}



\version "2.14.2"  % necessary for upgrading to future LilyPond versions.

