\header {
  title = \markup \center-align { "Hilly Land" }
  composer =  "Mike Challis"
  meter = "Adagio"
  tagline = \markup \center-column {"This work is released to the public domain and may be freely copied or modified." "Engraving by LilyPond -- www.lilypond.org"}
}

global = {
  \key ees \major
  \time 4/4
  \tempo 4=60
}


upper = \relative c'' {
  \clef treble

  r1
  r1
  aes8-2( des4.) ees4( g,?4)
  ges8-2( bes8-3 <ees, bes'>4) des'4-4( <ees, des' ees>4)
  bes'8( ees,8 ees4) \shape Slur #'((0 . -4.5) (1 . -6) (2 . -6) (2.5 . -8)) aes8( <>)  r4.
  \slurDown \shape Slur #'((0 . 0) (3 . -3) (-3 . 2) (0 . -3))
  ees8( r4 ees8 <>) r2

  aes8( des4.) ees4( g,4)
  ges8( bes8 <ees, bes'>4) des'4( <ees, des' ees>4)
  bes'8( ees,8 ees4) \shape Slur #'((0 . 0) (1 . -2) (2 . -2) (2.5 . -4)) aes8( <>)  r4.
  \slurDown \shape Slur #'((0 . 0) (3 . -3) (-3 . 2) (0 . -3))
  ees8( r4 ees8 <>) r2

  f8 des8 des8 aes'8 <bes, ees>8 aes8 bes8 des'8 ~

  des1
  r1

  aes8( des4.) ees4( g,4)
  ges8( bes8 <ees, bes'>4) des'4( <ees, des' ees>4)
  bes'8( ees,8 ees4) \shape Slur #'((0 . 0) (1 . -2) (2 . -2) (2.5 . -4)) aes8( <>)  r4.
  \slurDown \shape Slur #'((0 . 0) (3 . -3) (-3 . 2) (0 . -3))
  ees8( r4 ees8 <>) r2

  aes8( des4.) ees4( g,4)
  ges8( bes8 <ees, bes'>4) des'4( <ees, des' ees>4)
  bes'8( ees,8 ees4) \shape Slur #'((0 . 0) (1 . -2) (2 . -2) (2.5 . -4)) aes8( <>)  r4.
  \slurDown \shape Slur #'((0 . 0) (3 . -3) (-3 . 2) (0 . -3))
  ees8( r4 ees8 <>) r2

  f8 des8 des8 aes'8 <bes, ees>8 aes8 bes8 des'8 ~

  des1
  r1
  r1

  \bar "|."
}

lower = \relative c {
  \clef bass

  \slurDown
  <ees g bes>2( <ges bes des>2)
  <ees g bes>2( <ges bes des>2)
  <ees g bes>2( <ges bes des>2)
  <ees g bes>2( <ges bes des>2)
  <<
  {
    \slurDown \stemDown
    <ees g bes>2( <ges des'>2)
  }
  \\
  {
    s2 \stemUp bes8 bes8 bes4
  }
  >>
  <<
  {
    \slurDown \stemDown
    <ees, g >2( <ges bes des>2)
  }
  \\
  {
   \stemUp
    bes8\noBeam bes8 bes8 s8 s2
  }
  >>

  <ees, g bes>2( <ges bes des>2)
  <ees g bes>2( <ges bes des>2)
  <<
  {
    \slurDown \stemDown
    <ees g bes>2( <ges des'>2)
  }
  \\
  {
    s2 \stemUp bes8 bes8 bes4
  }
  >>
  <<
  {
    \slurDown \stemDown
    <ees, g >2( <ges bes des>2)
  }
  \\
  {
   \stemUp
    bes8\noBeam bes8 bes8 s8 s2
  }
  >>

  <des, f aes>2 <b dis fis>2

  <ees g bes>2( <ges bes des>2)
  <ees g bes>2( <ges bes des>2)
  <ees g bes>2( <ges bes des>2)
  <ees g bes>2( <ges bes des>2)
  <<
  {
    \slurDown \stemDown
    <ees g bes>2( <ges des'>2)
  }
  \\
  {
    s2 \stemUp bes8 bes8 bes4
  }
  >>
  <<
  {
    \slurDown \stemDown
    <ees, g >2( <ges bes des>2)
  }
  \\
  {
   \stemUp
    bes8\noBeam bes8 bes8 s8 s2
  }
  >>

  <ees, g bes>2( <ges bes des>2)
  <ees g bes>2( <ges bes des>2)
  <<
  {
    \slurDown \stemDown
    <ees g bes>2( <ges des'>2)
  }
  \\
  {
    s2 \stemUp bes8 bes8 bes4
  }
  >>
  <<
  {
    \slurDown \stemDown
    <ees, g >2( <ges bes des>2)
  }
  \\
  {
   \stemUp
    bes8\noBeam bes8 bes8 s8 s2
  }
  >>

  <des, f aes>2 <b dis fis>2

  <ees g bes>2( <ges bes des>2)
  <des f aes>2 <b dis fis>2 ~
  <b dis fis>1
}

dynamics = {
  s1\mp
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



\version "2.16.2"  % necessary for upgrading to future LilyPond versions.
