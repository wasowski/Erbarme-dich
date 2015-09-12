\include "bbarred.ly"
\include "fbarred.ly"
%\version "2.12.3-1"
\version "2.16.2"
\paper {
        ragged-right = ##f
        left-margin = 16\mm
        right-margin = 16\mm
        top-margin = 12\mm
        bottom-margin = 16\mm
} 
\header {
  title = "Erbarme dich"
  subtitle = \markup \center-column { "from St. Matthew's Passion" } 
  composer = "Johann Sebastian Bach"
  arranger = "arr. Joseph R. Lewis, A. Wąsowski"
  copyright = \markup { \fontsize #-1.5 "License: http://creativecommons.org/licenses/by-sa/3.0/" }
  tagline = "" %remove
} %end header


guitarUpperVoice = \relative c {
	\set Staff.instrumentName = "Guitar"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\voiceOne 
	\clef "G_8"
	\key b \minor
	\time 12/8
	
	\partial 8 fis8
	\acciaccatura { b16[ cis] } d8. \stemUp cis16 b8 \appoggiatura cis-2 b8. ais16-2 b8-0 b4. ~ b4 b8
	\slurUp g'8. [( fis32 g a8] ~ a8.) g16 fis8 \appoggiatura fis-1 e4. ~ e8. g16 e8
	\appoggiatura d c!8. g'16 e8 \appoggiatura c! b8. g'16 e8 \appoggiatura b-3 ais8.[-1 \slurUp e'32(-0 fis-1 g8]-1 ~ g8.) fis16 e8
	d8.( \trill cis32-1 d  e8-4 ~ e8.) d16-2 cis8-1 \appoggiatura b-4 ais4.-2 ~ ais8. fis16-4 ais?-2 cis
	\bbarre #"II" { e32[( d cis16) b8( ais16) b-.] cis32[( b ais?16) g!8( fis16) g] g32[( fis e16) ais?8.( g32 fis)] g[( fis e16) cis'8.( fis,32 e)] }
	\bbarre #"II" { fis32[( e dis16) c8( b16) } a'32( g)] a[( g fis16) e8( dis?16) c'32-1( b)] c[( b a16) g8( fis16) fis'32( e)] fis[( e) dis16) c?8( b16 fis')]
	g32[( a b8) a32( g a g fis16)] e32[( fis g8) fis32( e fis e d16)] c32[( d e8) d32( c d c b16)] ais32[( b cis8) b32(ais? b-0\rightHandFinger #4 ais-3\rightHandFinger #3 gis16\rightHandFinger #2)]-1
	fis8.-3 gis32(-1 ais-3 b-0 cis-2 d-3 cis) e8-.-0 d-.-3 cis \trill b4. ~ b4 r8 
        
\bar "|."

}
guitarLowerVoice = \relative c {
	\voiceTwo 
	\partial 8 r8
	\override Fingering #'staff-padding = #'()
	b b b a a a g g g fis fis fis | 
	  \bbarre #"II" { << \new VoiceA {
	     e
	     }
	     \new VoiceB {
	     e'
	     }
	  >>  e, e } \bbarre #"II" { fis fis fis } g e g b g b
	e e e d d d cis-2 \glissando cis \glissando cis ais-4 \glissando ais \glissando ais 
	\bbarre #"II" { b b b g g g fis cis' e e } ais,-1 cis-3 
	fis,4 r8 r4 r8 fis fis fis fis fis fis 
	b4 r8 r4 r8 b-2 \glissando b \glissando b \glissando b \glissando b \glissando b
	e, e e e e e e e e e e e'-2
   d-4 cis-4 b-1 fis'-4 fis, fis b4. ~ b4 r8 
}
guitar = \simultaneous {
        \accidentalStyle modern
        \tempo 4. = 38
	\context Voice="guitarUpperVoice" \guitarUpperVoice
	\context Voice="guitarLowerVoice" \guitarLowerVoice
}
\score {
	\simultaneous {
		\context Staff="guitar" \guitar
}

\midi	{
	tempoWholesPerMinute = #(ly:make-moment 84 8)

} % end midi

\layout {
	
	}

}
