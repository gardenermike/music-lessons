\header {
  title = "Monster Under the Bed"
  composer = "Mike Challis (inspired by John Schaum)"
  meter = ""
}

global = {
  \key c \major
  \time 3/4
  \tempo 4 = 120
}

upper = \relative c'' {
  \clef treble

  \slurUp
  \partial 4 g4( |
  e4 g g |
  g4 f e |
  f4 d2 ~ |
  d4) d( d | \break
  d4 f f |
  f4 e d |
  e4 c2 ~ |
  c2) g'4( | \break
  e4 g g |
  g2) r4 |
  r2. |
  r4 r4 d4( | \break
  g4 g g |
  g4 f8 f8 d4 |
  e4 c2 ~ |
  c2.) |
  \slurNeutral

  \bar "|."
}

lower = \relative c {
  \clef bass

  \partial 4 r4 |
  c2. |
  e2. |
  g2 d4 |
  g2. |

  g2. |
  g2. |
  c,2 g'4 |
  c,2. |
  c2. |
  r4 r4 e4( |
  g4 d d |
  d2) r4 |
  g2. |
  g2. |
  c,2 g'4 |
  c,2. |

  \bar "|."
}

aligner = \relative {
  \partial 4 g4 |
  e4 g g |
  g4 f e |
  f4 d2 ~ |
  d4 d d |
  d4 f f |
  f4 e d |
  e4 c2 ~ |
  c2 g'4 |
  e4 g g |
  g2 e4 |
  g4 d d |
  d2 d4 |
  g4 g g |
  g4 f8 f8 d4 |
  e4 c2 ~ |
  c2.
}

words = \lyricmode {
  The mon- ster with mer- ci- less toes _ snarled,
  and o- ver the bed- side he rose. _
  I gave him a smack:
  he fell on his back,
  and rubbed on his poor ach- _ ing nose.
}

wordsLower = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  He fell on his back,
}

\score {
  <<
    \new PianoStaff = "PianoStaff" \with {\accepts NullVoice} <<
      \new Staff = "Piano_Treble" <<
        \new Voice = "melody" {
          \global \upper
        }
      >>
      \new NullVoice = "aligner" \aligner
      \new Lyrics \lyricsto "aligner" { \words }
      \new Staff = "Piano_Bass" <<
        \new Voice = "melodyII" {
          \global \lower
        }
      >>
      %\new Lyrics \with { alignAboveContext = "staff" } {
      %  \lyricsto "melodyII" { \wordsLower }
      %}
    >>
  >>
}

\version "2.20.0"
