\header {
  title = \markup \center-align { "Flamenco Uno" }
  composer =  "Mike Challis"
  meter = "Allegro"
  tagline = \markup \center-column {"This work is public domain and may be freely copied or modified." "Engraving by LilyPond -- www.lilypond.org"}
}

global = {
  \key d \minor
  \time 4/4
  \tempo 4=130
}


upper = \relative c'' {
  \clef treble
  r1
  r1
  r1
  r1
  <g-2 bes-4>1 ~
  <g bes>
  <g c> ~
  <g c>
  <g a>2 <g a>
  <g bes> d-1
  g1-4 ~
  g1
  r1
  r1 \bar "|."
}

lower = \relative c {
  \clef bass

  <d-5 g-2>2 \times 2/3 {<d-5 f-3>4( <d e-4> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <g c>2 \times 2/3 {<g bes>4( <g a> g)}
  <g c>2 \times 2/3 {<g bes>4( <g a> g)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d)}
  <d g>2 \times 2/3 {<d f>4( <d e> d ~)}
  d1
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