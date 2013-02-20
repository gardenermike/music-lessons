\header {
  title = \markup \center-align { "Surprise Discovery" }
  composer =  "Mike Challis"
  meter = "Andante"
  tagline = \markup \center-column {"This work is public domain and may be freely copied or modified." "Engraving by LilyPond -- www.lilypond.org"}
}

global = {
  \key ees \major
  \time 4/4
  \tempo 4=120
}


upper = \relative c'' {
  \clef treble
  ees8-4-^( d-3 b2-2) g4( ~
  g4 b2 d4)
  r4 << {g,2} \\  {\slurUp ees'4( ees4 d ~)
  d1 \slurNeutral} >>

  ees8-4( d-3 b2-2) g4( ~
  g4 b2 d4 ~
  d4 ees2 f4-1 ~
  f g2 b,4)

  r4 <d, d'>( <ees ees'> <d d'>
  <f f'> <ees ees'> <ees ees'> <g g'>)
  r4 a2. ~
  a1

  r4 d,-2( ees d
  f ees b d)
  r8 \slurUp ees8( <ees f>2.) ~ \slurNeutral
  <ees f>2. \slurUp g4-1(

  <g b>1) ~
  <g b> \slurNeutral
  \grace bes8( <d ees>1) ~
  <d ees>1

  <g, d'>2. ees4 ~
  ees1 ~
  ees1 \bar "|."
}

lower = \relative c {
  \clef bass

  d4( <g b>) d4( <g b>)
  d4( <g b>) d4( <g b>)
  ees( <g ees'>) ees( <g d'>)
  ees( <g c>) ees( <g d'>)

  d4( <g b>) d4( <g b>)
  d4( <g b>) d4( <g b>)
  ees( <g ees'>) ees( <g d'>)
  ees( <g c>) ees( <g d'>)

  d4( <g b>) d4( <g b>)
  d4( <g b>) d4( <g b>)
  ees( <g ees'>) ees( <g d'>)
  ees( <g c>) ees( <g d'>)

  d4( <g b>) d4( <g b>)
  d4( <g b>) d4( <g b>)
  ees( <g \parenthesize ees'>) ees( <g d'>)
  ees( <g c>) ees( <g d'>)

  d4( <g b>) d4( <g b>)
  d4( <g b>) d4( <g b>)
  ees( <g ees'>) ees( <g d'>)
  ees( <g c>) ees( <g d'>)

  d4( <g b>) d4( <g b>)
  d4( <g b>) d4( <g b> ~)
  <g b>1
}

dynamics = {
 s1\p
 s1
 \override TextSpanner #'(bound-details left text) = "rit."
 s2 s2\startTextSpan
 s2. s8\stopTextSpan s8
 s1-"a tempo"
 s1
 s1
 s2.\startTextSpan s8\stopTextSpan s8
 s4-"a tempo" s2. \mf
 s1
 s4 s4 \p s2\startTextSpan
 s2. s8\stopTextSpan s8
 s1-"a tempo"
 s1
 s1
 s2.\startTextSpan s8\stopTextSpan s8
 s1-"a tempo"
 s1
 s1
 s1
 s2 s2\startTextSpan
 s1
 s2. s4\stopTextSpan
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
