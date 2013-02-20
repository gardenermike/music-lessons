\header {
  title = \markup \center-align { "No Revolution on the TV" }
  composer =  "Mike Challis"
  meter = "Andante"
  tagline = \markup \center-column {"This work is public domain and may be freely copied or modified." "Engraving by LilyPond -- www.lilypond.org"}
}

global = {
  \key a \minor
  \time 4/4
  \tempo 4=80
}


upper = \relative c' {
  \clef treble

  r2. r8. e16
  f8 f f e f16 e8 f8 e8.
  f8 f f e f16 e8 g8 d8.
  f8 f f e f16 e8 f8 e8.
  f8 f f e f16 e8 f8 aes8.

  <f a>8. a16 <e a>8 e <d a'>16 g8 a8. g8
  <f a>8. a16 <e a>8 e <d a'>16 g8 a8. g8
  <f a>8. a16 <e a>8 e <d a'>16 g8 a8. g8
  <f a>8. a16 <e a>8 e <d a'>16 g8 a8. aes8

  << {\stemDown e4 f g8. a16 ~ a4 \stemNeutral} \\ {\stemUp e'8 d e b16 b e8 d16 e8 b16 aes aes \stemNeutral} >>
  << {\stemDown e4 f g8. a16 ~ a4 \stemNeutral} \\ {\stemUp e'8 d e b16 b e8 d16 e8 b16 aes aes \stemNeutral} >>
  << {\stemDown e4 f g8. a16 ~ a4 \stemNeutral} \\ {\stemUp e'8 d e b16 b e8 d16 e8 b16 aes aes \stemNeutral} >>
   << {\stemDown e4 f g8. a16 ~ a4 \stemNeutral} \\ {\stemUp e'8 d e b16 b e8 d16 e8 b16 aes aes \stemNeutral} >>

    << {\stemDown e4 f g8. a16 ~ a4 \stemNeutral} \\ {\stemUp e'8 d e b16 b e8 d16 e8. b16 aes16 \stemNeutral} >>

 \bar "|."
}

lower = \relative c {
  \clef bass

  r1
  f4 g a16 d,8 b'8. e,8
  f4 g a16 d,8 b'8. e,8
  f4 g a16 d,8 b'8. e,8
  f4 g a16 d,8 b'8. e,8

  f4 g a16 d,8 b'4 e,16
  f4 g8. g16 a16 d,8 b'4 e,16
  f4 g8. g16 a16 d,8 b'4 e,16
  f4 g8. g16 a16 d,8 b'4 e,16

  <e a>4 <e g> <e f>8. e16 ~ e4
  <e a>4 <e g> <e f>8. e16 ~ e4
  <e a>4 <e g> <e f>8. e16 ~ e4
  <e a>4 <e g> <e f>8. e16 ~ e4

  <e a>1

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

