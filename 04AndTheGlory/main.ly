\version "2.22.1"

#(ly:set-option 'midi-extension "mid")

\include "header.ly"
\include "paper.ly"
\include "globals.ly"
\include "soprano.ly"
\include "alto.ly"
\include "tenor.ly"
\include "bass.ly"
\include "orch.ly"

\score {
  \new GrandStaff <<
    \new ChoirStaff <<
      
      \new Staff \with { midiInstrument = "choir aahs" instrumentName = \markup \smallCaps Soprano}
      \new Voice = "soprano" \soprano
      \new Lyrics \lyricsto "soprano" \soplyrics
      
      \new Staff \with { midiInstrument = "choir aahs" instrumentName = \markup \smallCaps Alto}
      \new Voice = "alto" \alto
      \new Lyrics \lyricsto "alto" \altolyrics
      
      \new Staff \with { midiInstrument = "choir aahs" instrumentName = \markup \smallCaps Tenor}
      \new Voice = "tenor" \tenor
      \new Lyrics \lyricsto "tenor" \tenorlyrics
      
      \new Staff \with { midiInstrument = "choir aahs" instrumentName = \markup \smallCaps Bass}
      \new Voice = "bass" \bass
      \new Lyrics \lyricsto "bass" \basslyrics
    >>
    \new PianoStaff \with {
      instrumentName = "Orchestra"
    }
    <<
      \new Staff \rh
      \new Staff \lh
    >>
  >>
  \layout {
    \context {
      \Staff
      \RemoveAllEmptyStaves
    }
  }
  \midi {
  }
}