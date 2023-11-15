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
      \break
      b4 e2 ~			| %7
      e4 d2 ~			| %8
      d4. e8 cis4 ~		| %9
      cis8 b b4. \trill a8	| %10
      a2 \oneVoice r4 \voiceOne	| %11
      
    }
    \new Voice \relative c' {
      \voiceTwo
      s2.			| %1
      b'4 gis <a cis>		| %2
      <a fis'>4 <d fis> <b gis'>	| %3
      e4 cis <cis e>		| %4
      cis4 b2 ~			| %5
      b4 a a			| %6
      gis4. b8 a [ gis ]		| %7
      fis4. a8 gis [ fis ]	| %8
      e4 gis a ~			| %9
      a4 a gis			| %10
      a2 s4			| %11
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
      e2.			| %7
      cis4 d2			| %8
      b2 a4			| %9
      fis'4 e2 			| %10
      cis2 \oneVoice r4 \voiceOne	| %11
    }
    \new Voice \relative c {
      \voiceTwo
      a2 a'4			| %1
      gis4 e a			| %2
      d4 b e			| %3
      cis4 a cis			| %4
      fis,4 gis e		| %5
      a4 a, cis			| %6
      e2 cis'4			| %7
      a4 fis b			| %8
      gis4 e fis			| %9
      d4 e e,			| %10
      a2 s4			| %11
    }
  >>
}
