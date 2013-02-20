\header {
  title = \markup \center-align { "First Impression" }
  composer =  "Mike Challis"
  meter = "Andante"
  tagline = \markup \center-column {"This work is released to the public domain and may be freely copied or modified." "Engraving by LilyPond -- www.lilypond.org"}
}

global = {
  \key d \major
  \time 4/4
  \tempo 4=100
}


upper = \relative c' {
  \clef treble

  r1
  r1
  r1
  r1

  fis4-2( b2-5) e,4-1(
  cis-2 b'2-5) e,4-1(
  fis4 b2) e,4(
  cis b'2) e,4-1(
  b2.-2) cis4-3(
  b2.-2) cis4(
  b2.) cis4(
  b1)

  fis'4( b2) e,4(
  cis b'2) e,4(
  fis4 b <a b> e
  cis b'2) e,4(
  b2.) cis4(
  b2.) cis4(
  b2.) cis4(
  b1)

  <fis'-2 cis'-5>4( <e-1 b'-4>2.)
  <fis cis'>4( <e b'>2.)
  g4-4( fis-3 cis-2 d-1
  <b-2 cis-3 fis-5>1)
  <fis' cis'>4( <e b'>2.)
  <fis cis'>4( <e b'>2.)
  g4( fis cis d
  <b e>2.) cis4(
  b2.) cis4(
  b2.) cis4(
  b1)

  g'4-2( cis2-3) d8-4( b-1
  <cis-2 e-4>4 <cis e>2) fis8-5( d-3
  b-2 g-1 <fis-2 b-4>2) <e-1 a-3>4(
  <cis-2 fis-4>1)
  g'4( cis4) cis4( d8 b
  <cis e>4 <cis d e> fis,) fis'8( d
  b g <fis b>4 <fis b>4 <e a>
  <cis fis>2.) g'8-5( d-1
  <b-2 e-4>2.) cis4-3(
  b2.-2) cis4(
  b2.) cis4(
  b2.) cis4(
  d1) ~
  d1
  \bar "|."
}

lower = \relative c' {
  \clef bass

  \slurDown
  <g-2 a-1>4( ~ \set fingeringOrientations = #'(down) <fis-3 g a>2) ~ <d-5 fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(

  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(

  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(

  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(

  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2) ~ <d fis g a>4(
  <g a>4 ~ <fis g a>2.) ~
  <fis g a>1
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
