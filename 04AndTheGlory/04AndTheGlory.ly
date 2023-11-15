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

tempoI = 144
global = {
  \key a \major
  \time 3/4
}

rh = \relative c' {
  \global
  \tempo Allegro 4=#tempoI
  <<
    \new Voice \relative c' {
      \voiceOne
      r4 <e cis'> \mf <e a>	| %1
      e'4. d8 s4			| %2
      s2.			| %3
      <a a'>2 s4			| %4
      d4. fis8 e [d]		| %5
      cis4. e8 d [cis]		| %6
    }
    \new Voice \relative c' {
      \voiceTwo
      s2.			| %1
      b'4 gis <a cis>		| %2
      <a fis'>4 <d fis> <b gis'>	| %3
      e4 cis <cis e>		| %4
      cis4 b2 ~			| %5
      b4 a a			| %6
    }
  >>
}

lh = \relative c {
  \global
  \clef bass
  <<
    \new Voice \relative c {
      \voiceOne
      r4 a' cis			| %1
      e2.			| %2
      fis4 d e			| %3
      e2.			| %4
      fis4 e2			| %5
      e2.			| %6
    }
    \new Voice \relative c {
      \voiceTwo
      a2 a'4			| %1
      gis4 e a			| %2
      d4 b e			| %3
      cis4 a cis			| %4
      fis,4 gis e		| %5
      a4 a, cis			| %6
    }
  >>
}

\paper {
  #(set-paper-size "letter")
  top-margin = 1\cm
  left-margin = 2\cm
  right-margin = 2\cm
}

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