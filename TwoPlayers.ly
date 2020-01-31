\version "2.18.2"


%%%%%%%%%%
% GLOBAL %
%%%%%%%%%%

\header
{
	title = "The Planets"
	subtitle = "1st Movement - Mars"
	composer = "Gustav Holst"
	%tagline = \markup { \column { \line { "Transcribed by Terry Hearst - Engraved using Lilypond" } } } 
	instrument = "Timpani"
}

global =
{
	\clef bass
	\time 5/4
	\tempo Allegro
	\compressFullBarRests
}

\layout
{
	\context
	{
		\Staff
		\consists #Measure_counter_engraver
	}
}

#(set-default-paper-size "letter")
\pointAndClickOff

forcedBreaks =
{
	% First page
	\repeat unfold 5
	{
		s1 * 5/4 \noBreak
		s \noBreak
		s \noBreak
		s \noBreak
		s \break
	}
	
	\pageBreak
	
	\repeat unfold 6
	{
		s1 * 5/4 \noBreak
		s \noBreak
		s \noBreak
		s \noBreak
		s \break
	}
	
	\pageBreak
}


%%%%%%%%%%%%%%
% PLAYER ONE %
%%%%%%%%%%%%%%

playerOneNotes =
\relative c,
{
	\global
	\tuplet 3/2 { f8\p-"Wooden sticks" f f } f4 f f8 f f4 | % 1
	\override Staff.MeasureCounter.count-from = #2
	\startMeasureCount
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 2
	\tuplet 3/2 { f8\< f f } f4 f f8 f f4 | % 3
	\tuplet 3/2 { f8\> f f } f4 f f8 f f4 | % 4
	\tuplet 3/2 { f8\! f f } f4 f f8 f f4 | % 5
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 6
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 7
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 8
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 9
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 10
	\tuplet 3/2 { f8\cresc f f } f4 f f8 f f4 | % 11
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 12
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 13
	\tuplet 3/2 { f8\mp\dim f f } f4 f f8 f f4 | % 14
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 15
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 16
	
	%% 1 %%
	\mark \markup { \circle \bold 1 }
	
	\tuplet 3/2 { f8\p f f } f4 f f8 f f4 | % 17
	\tuplet 3/2 { f8\< f f } f4 f f8 f f4 | % 18
	\tuplet 3/2 { f8\> f f } f4 f f8 f f4 | % 19
	\tuplet 3/2 { f8\! f f } f4 f f8 f f4 | % 20
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 21
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 22
	\tuplet 3/2 { f8\cresc f f } f4 f f8 f f4 | % 23
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 24
	\tuplet 3/2 { f8\mf\cresc f f } f4 f f8 f f4 | % 25
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 26
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 27
	\tuplet 3/2 { f8 f f } f4 f f8\< f f4 | % 28
	\tuplet 3/2 { f8\f f f } f4 f\> f8 f f4 | % 29
	\tuplet 3/2 { f8\! f f } f4 f f8\< f f4 | % 30
	\tuplet 3/2 { f8\f f f } f4 f f8\> f f4 | % 31
	\tuplet 3/2 { f8\! f f } f4 f f8\< f f4 | % 32
	\tuplet 3/2 { f8\f\> f f } f4\! f f8\< f f4 | % 33
	\tuplet 3/2 { f8\f\cresc f f } f4 f f8 f f4 | % 34
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 35
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 36
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 37
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 38
	\tuplet 3/2 { f8 f f } f4 f f8 f f4\! | % 39
	\stopMeasureCount
	
	%% 2 %%
	\mark \markup { \circle \bold 2 }
	
	R1 * 5/4 * 17 | % 40-56
	
	r2.-"Felt sticks" es'2:16 | % 57
	
	%% 3 %%
	\mark \markup { \circle \bold 2 }
	
	f,2.: f2: | % 58
}


%%%%%%%%%%%%%%
% PLAYER TWO %
%%%%%%%%%%%%%%

playerTwoNotes =
\relative c
{
	\global
	R1 * 5/4 * 16 | % 1-16
	
	%% 1 %%
	
	R1 * 5/4 * 21 | % 16-37
	des2.:16\p\cresc-"Felt sticks" des2: | % 38
	des2.: des2:\< | % 39
	
	%% 2 %%
	
	\tuplet 3/2 { bes8\fff bes bes } bes4 bes bes8 bes bes4 | % 40
	\override Staff.MeasureCounter.count-from = #2
	\startMeasureCount
	\repeat unfold 16 { \tuplet 3/2 { bes8 bes bes } bes4 bes bes8 bes bes4 } | % 41-56
	\stopMeasureCount
	\tuplet 3/2 { bes8 bes bes } bes4 bes r2 | % 57
	
	%% 3 %%
	
	des8-> r8 r4 r4 r2 | % 58
}


%%%%%%%%%
% SCORE %
%%%%%%%%%

\score
{
	<<
		\new PianoStaff
		<<
			\new Staff
			<<
				\playerOneNotes
				\forcedBreaks
			>>
			\new Staff
			<<
				\playerTwoNotes
			>>
		>>
	>>
}
