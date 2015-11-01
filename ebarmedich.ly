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

%guide = #(define-music-function (parser location shift pad) (pair? number?) #{
% 	\once \override TextSpanner.dash-period = #1.5
%    \once \override TextSpanner.bound-details.left.padding = #'1
%    \once \override TextSpanner.bound-details.right.padding = #1
%    \once \override TextSpanner.extra-offset = #shift 
%    \override TextSpanner.bound-details.right.Y = #pad
%    \once \override TextSpanner.bound-details.right.text = #'()
%#})

guitarUpperVoice = \relative c {
	\set Staff.instrumentName = "Guitar"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\voiceOne 
	\clef "G_8"
	\key b \minor
	\time 12/8
	
	\partial 8 fis8
	\acciaccatura { b16[ cis] } d8. \stemUp cis16 b8 \appoggiatura cis-2 b8. ais16-2 b8-0 b4. ~ b4 b8 \break
	\slurUp g'8. [( fis32 g a8] ~ a8.) g16 fis8 \appoggiatura fis-1 e4. ~ e8. g16 e8 \break
	\appoggiatura d c!8. g'16 e8 \appoggiatura c! b8. g'16 e8 \appoggiatura b-3 ais8.[-1 \slurUp e'32(-0 fis-1 g8]-1 ~ g8.) fis16 e8 \break
	d8.( \trill cis32-1 d  e8-4 ~ e8.) d16-2 cis8-1 \appoggiatura b-4 ais4.-2 ~ ais8. fis16-4 ais?-2 cis \break
	\bbarre #"II" { e32[( d cis16) b8( ais16) b-.] cis32[( b ais?16) g!8( fis16) g] g32[( fis e16) ais?8.( g32 fis)] g[( fis e16) cis'8.( fis,32 e)] } \break
	\bbarre #"II" { fis32[( e dis16) c8( b16) } a'32( g)] a[( g fis16) e8( dis?16) c'32-1( b)] c[( b a16) g8( fis16) fis'32( e)] fis[( e) dis16) c?8( b16 fis')] \break
	g32[( a b8) a32( g a g fis16)] e32[( fis g8) fis32( e fis e d16)] c32[( d e8) d32( c d c b16)] ais32[( b cis8) b32(ais? b-0\rightHandFinger #4 ais-3\rightHandFinger #3 gis16\rightHandFinger #2)]-1 \break
	fis8.-3 gis32(-1 ais-3 b-0 cis-2 d-3 cis) e8-.-0 d-.-3 cis \trill b4. ~ b4 fis'8  \break
	% bar 9
	d'8.-4 cis16 b8 b8. ais16-1 [(b8)] b4.-4 ~ b4. 
	% bar 10
	r4 e,8-4 e8 dis8 a'8 g4 e8 g4 b8 
	% bar 11
	c4 (b8) b4 (ais8-3) \glissando ais4 b8 \glissando cis4.~ |
	% bar 12
	cis8.  ais16 b8 cis16 (d16) e8 cis8 ais4 gis8 fis4 \breathe e8
	% bar 13
        \bbarre #"II" {dis8 fis16 a16 } c8 (c8.) b16 (a8 ) \appoggiatura a8 g4. (g4) \breathe fis8 
        % bar 14
        \bbarre #"IV" { eis8 gis16 b16 } d8 (d8.)cis16 (b8) a4-4 gis8 [a8.] \breathe cis16 (b8)
        % bar 15
        cis4. (cis 4. cis8.) b16 \slurDown ais8 ais8. [b16] cis8 \slurUp
        % bar 16
        d8. cis32 d32 e8 (e8.) d16 [(cis8)] \appoggiatura cis8 b4. (b4) \breathe a8 % \bbarre #"IV" { a8 } 
        % bar 17
        \autoBeamOff g4 (fis8) fis4 (eis8)  eis8. [b'32 cis32 d8] (d8.) cis16 b8 
        a8. gis16 b8 (b8.) a16 [(gis8)] eis4 (dis8 cis4) r8
        % bar 19
        b32 [ a32 gis16 fis8 eis16. fis32] gis32 [fis32 eis16 d8 cis16. d32] 
        b''8. [cis16 d8] (d8.) cis16 [(b8)]
        % bar 20
        ais4 cis8 \appoggiatura {cis16 [d16]}  e8. cis16 [(ais16 b16)]  e,8. [fis16 g8]  g8. fis16 [e8]
        % bar 21
         d8 [e8 fis8] (fis8) [gis8 ais8] b8 [cis8 d8] (d8) cis16 [b16] a16 [gis16] 
        % bar 22
        cis8  [b8] a8 \appoggiatura cis8 b8 [a8]  gis8 fis4. fis4 r8 \bar "|."

}

guitarMiddleVoice = \relative c {     
  % bar 9
  s4. s4. b'4. dis4. b4 % a8\rest  
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
        d-4 cis-4 b-1 fis'-4 fis, fis b4. ~ b4 b'8-2 
        % bar 9
        << { \voiceTwo s4. s4. b4. dis4. } \\ { b8-2 b8 b8 \glissando a a a g g g \bbarre #"IV" { fis fis fis } } >> |
        % bar 10
        << { \voiceTwo b4. a4. b4. b4. } \\ { e,8 e  \bbarre #"II" { e e e e e e e e e } \set stringNumberOrientations = #'(right) e\5 }  >> |
        % bar 11
        e e e d-0 d d \bbarre #"IV" { cis8 cis8 cis8 } \bbarre #"VI" { \set stringNumberOrientations = #'(right) ais\6 ais ais } |
        % bar 12
        b8 b8 b8  g'8 g8 g8 \bbarre #"IV" { fis8 fis8 fis8 } \bbarre #"II" { fis,4 ais'8 }
        % bar 13
        << { \voiceTwo b4 b8 ( b4. )  b4 a8 [b8 cis8] e8 } \\ { b,4 r8  r4 r8 e4 r8 r4 b8 \glissando } >> |
        % bar 14
        <cis cis'>4 r8 r4. fis8-1 fis8 fis8 fis8 s4
        % bar 15
        fis8 fis8 fis8 e8 e8 e8 d8 d8 d8 cis8-3\6 cis8 cis8
        % bar 16
        \bbarre #"VII" { b8 b8 b8 } \bbarre #"IX" { cis8 cis8 cis8 } d8 b8\6 d8 fis8\5 d8 fis8\4
        % bar 17
        b8 b8 b8a8 a8 a8 \bbarre #"VI" { gis8 gis8 gis8 eis8-3 eis8 } eis8 
        % bar 18
        \bbarre #"IV" { fis8 fis8 fis8 } d8 d8 d8 \bbarre #"IV" { cis8 gis8 b8 b8 } eis,8-1 gis8-3
        % bar 19
        % cis4 r8 r4 r8  cis8 (cis8 cis8 ) cis8 (cis8 cis8 )
        cis4-4 r8 r4 r8  \bbarre #"VII" { cis8-2 cis8 cis8  cis8 cis8 cis8 }
        % bar 20
        fis4 r8  r4. \bbarre #"II" { fis,8 fis8 fis8 fis8 fis8 fis8 }
        % bar 21
        b8-1 b8 b8 b8 b8 b8 \bbarre #"VII" { b8 b8 b8 b8 b8 b8 }
        % bar 22
        a8-0 \bbarre #"IV" gis8 \bbarre #"II" fis8 
        \bbarre #"IV" { cis'8 cis8 cis8 } \bbarre #"II" { fis8 fis,8  a8 cis8 a8 cis8 } 
}

#(set-global-staff-size 19)

guitar = \simultaneous {
        \accidentalStyle modern
        \tempo 4. = 32
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
