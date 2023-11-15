\version "2.22.1"

#(ly:set-option 'midi-extension "mid")

\header {
  title = "Messiah"
  subtitle = "4. And the Glory of the Lord"
  composer = "G. F. Handel"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\paper {
  #(set-paper-size "letter")
  top-margin = 1\cm
  left-margin = 2\cm
  right-margin = 2\cm
}

tempoI = 144
global = {
  \key a \major
  \time 3/4
}

\include "orch.ly"

\score {
  \new GrandStaff <<
    \new ChoirStaff <<
    >>
    \new PianoStaff <<
      \new Staff \rh
      \new Staff \lh
    >>
  >>
  \layout {
  }
  \midi {
  }
}