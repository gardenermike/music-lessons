\header {
  title = \markup \center-align { "Wet Green Grass" }
  composer =  "Mike Challis"
  meter = "Adagio sostenuto"
  tagline = \markup \center-column {"This work released to the public domain and may be freely copied or modified." "Engraving by LilyPond -- www.lilypond.org"}
}

global = {
  \key a \major
  \time 6/8
  \tempo 4=70
}


upper = \relative c' {
  \clef treble
  
  r4 <e cis'>2
  r4 <fis a>2
  r4 <e cis'>8 b' <cis, cis'> a'
  d, fis a4 gis
  cis,2. ~
  cis2. ~
  cis2.
  r2.
  \bar "|."
}

lower = \relative c {
  \clef bass

  a8 e' a2
  d,8 a' e'2
  a,,8 e' a2
  d,8 a' e'2
  a,,8 e' a2
  d,8 a' e'2
  a,,8 e' a2
  d,8 a' e'2
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