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
	
	\set Score.markFormatter = #format-mark-circle-numbers
	\override TrillSpanner.to-barline = ##t
}

\layout
{
	\context
	{
		% Enables the ability to count out the multi-measure repeats
		\Staff
		\consists #Measure_counter_engraver
	}
	\context
	{
		% Makes it so that I EXPLICITLY declare every single line and page break
		\Score
		\override NonMusicalPaperColumn.line-break-permission = ##f
		\override NonMusicalPaperColumn.page-break-permission = ##f
	}
}

#(set-default-paper-size "letter")
\pointAndClickOff

forcedBreaks =
{
	% First page
	\repeat unfold 5 { s1 * 5/4 * 5 \break }
	\pageBreak
	
	% Second page
	\repeat unfold 6 { s1 * 5/4 * 5 \break }
	\pageBreak
	
	% Third page
	s1 * 5/4 * 5 \break
	s1 * 5/4 * 6 \break
	s1 * 5/4 * 14 \break
	s1 * 5/4 * 14 \break
	s1 * 5/2 * 10 \break
	s1 * 5/2 * 5 \break
	\pageBreak
	
	% Fourth page
	\repeat unfold 6 { s1 * 5/4 * 5 \break }
	\pageBreak
	
	% Fifth page
	s1 * 5/4 * 6 \break
	s1 * 5/4 * 6 \break
	s1 * 5/4 * 6 \break
	s1 * 5/4 * 9 \break
	s1 * 5/2 * 5 s1 * 3/4 * 6 \break
	s1 * 3/4 * 8 \break
	\pageBreak
}


%%%%%%%%%%%%%%
% PLAYER ONE %
%%%%%%%%%%%%%%

playerOneNotes =
\relative c,
{
	\global
	\tuplet 3/2 { f8\p^"Wooden sticks" f f } f4 f f8 f f4 | % 1
	\override Staff.MeasureCounter.count-from = #2
	\startMeasureCount
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 2
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 3
	\tuplet 3/2 { f8\< f f } f4 f f8 f f4 | % 4
	\tuplet 3/2 { f8\> f f } f4 f f8 f f4 | % 5
	\tuplet 3/2 { f8\! f f } f4 f f8 f f4 | % 6
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 7
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 8
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 9
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 10
	\tuplet 3/2 { f8\cresc f f } f4 f f8 f f4 | % 11
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 12
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 13
	\tuplet 3/2 { f8\mf\dim f f } f4 f f8 f f4 | % 14
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 15
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 16
	
	%% 1 %%
	\mark \default
	
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
	\mark \default
	
	R1 * 5/4 * 17 | % 40-56
	
	<<
		{
			r2.^"Felt sticks" es'2\<\startTrillSpan | % 57
			
			%% 3 %%
			\mark \default
			
			f,2.\! f2 | % 58
			f2. f2\<\startTrillSpan | % 59
			es'8->\!\stopTrillSpan r r4 r r2 | % 60
		}
		{
			s2. s2\startTrillSpan | s2. s2 | s2 s4\stopTrillSpan s2\startTrillSpan | s\stopTrillSpan
		}
	>>
	r2. as,2\<\startTrillSpan | % 61
	f8->\!\stopTrillSpan r r4 r as2\<\startTrillSpan | % 62
	f8->\!\stopTrillSpan r r4 r as2\<\startTrillSpan | % 63
	f8->\!\stopTrillSpan r r4 r r2 | % 64
	r2. f2\<\startTrillSpan | % 65
	as4->\!\stopTrillSpan r r r2 | % 66
	R1 * 5/4 | % 67
	
	%% 4 %%
	\mark \default
	
	R1 * 5/4 * 12 | % 68-79
	es'2.:16\f es2: | % 80
	es4 es es es es | % 81
	R1 * 5/4 | % 82
	r4 es es es es | % 83
	
	%% 5 %%
	\mark \default
	
	R1 * 5/4 * 11^\markup { \concat { B \flat } to \concat { B \natural } } | % 84-94
	\bar "||"
	\time 5/2
	R1 * 5/2^\markup \fermata | % 95
	
	%% 6 %%
	\mark \default
	
	R1 * 5/2 * 8 | % 96-103
	
	%% 7 %%
	\mark \default
	
	\tuplet 3/2 { a,?8\p a a } a4 r2 r a4 a a8 a a4 | % 104
	\tuplet 3/2 { a8 a a } a4 r2 r a4 a a8 a a4 | % 105
	\tuplet 3/2 { a8\cresc a a } a4 r2 r a4 a a8 a a4 | % 106
	\tuplet 3/2 { a8 a a } a4 r2 r a4 a a8 a a4 | % 107
	\tuplet 3/2 { a8 a a } a4 r2 r a4 a a8 a a4\! | % 108
	R1 * 5/2 | % 109
	\bar "||"
	\time 5/4
	\tuplet 3/2 { f8\fff f f } f4 f f8 f f4 | % 110
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 111
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 112
	\override Staff.MeasureCounter.count-from = #1
	\startMeasureCount
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 113
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 114
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 115
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 116
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 117
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 118
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 119
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 120
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 121
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 122
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 123
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 124
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 125
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 126
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 127
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 128
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 129
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 130
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 131
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 132
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 133
	
	%% 8 %%
	\mark \default
	
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 134
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 135
	\stopMeasureCount
	f->^\markup { \concat { B \natural } to \concat { B \flat } } r r r2 | % 136
	R1 * 5/4 * 9 | % 137-145
	
	%% 9 %%
	\mark \default
	
	R1 * 5/4 * 13 | % 146 - 158
	
	%% 10 %%
	\mark \default
	
	R1 * 5/4 | % 159
	r2. \once \override Hairpin.minimum-length = #4 as2\f\<\startTrillSpan | % 160
	R1 * 5/4\!\stopTrillSpan | % 161
	r2. es'2\<\startTrillSpan | % 162
	f,8->\!\stopTrillSpan r r4 r es'2\<\startTrillSpan | % 163
	f,8->\!\stopTrillSpan r r4 r es'2\<^\startTrillSpan | % 164
	f,2.\!\startTrillSpan f2 | % 165
	f2. f8->\stopTrillSpan r r4 | % 166
	\bar "||"
	\time 5/2
	f1.\ffff\startTrillSpan f1 | % 167
	f1. r2\stopTrillSpan r | % 168
	R1 * 5/2 * 3 | % 169-171
	
	%% 11 %%
	\mark \default
	
	\bar "||"
	\time 3/4
	f2.\p\startTrillSpan | % 172
	f | % 173
	f | % 174
	f | % 175
	f\cresc | % 176
	f\< | % 177
	
	%% 12 %%
	\mark \default
	
	\tuplet 3/2 { f8->\ffff\stopTrillSpan f-> f-> } f4-> r | % 178
	r f8-> f-> f4-> | % 179
	r^\markup \italic "Rall. al Fine" f8-> f-> f4-> | % 180
	\tuplet 3/2 { f8-> f-> f-> } f4-> r | % 181
	r f-> f-> | % 182
	r r f-> | % 183
	f-> f-> r | % 184
	f2.\startTrillSpan\fermata | % 185
	
	\bar "|."
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
	R1 * 5/4 | % 59
	g,2.->\startTrillSpan g2 | % 60
	g2. r2\stopTrillSpan | % 61
	bes2.->\startTrillSpan r2\stopTrillSpan | % 62
	bes2.->\startTrillSpan r2\stopTrillSpan | % 63
	<<
		{
			bes2.-> bes2 | % 64
			bes2.-> bes2\< | % 65
			des4->\! r r r2 | % 66
		}
		{
			s2.\startTrillSpan s2 | s2 s4\stopTrillSpan s2\startTrillSpan | s\stopTrillSpan
		}
	>>
	R1 * 5/4 | % 67
	
	%% 4 %%
	
	R1 * 5/4 * 7 | % 68-74
	g,4\f g g g g | % 75
	g g g g g | % 76
	R1 * 5/4 * 2 | % 77-78
	r4 g g g g | % 79
	R1 * 5/4 * 2 | % 80-81
	g2.: g2: | % 82
	R1 * 5/4_\markup { A to \concat { G \sharp } } | % 83
	
	%% 5 %%
	
	R1 * 5/4 * 9 | % 84-92
	fis8->\f r r4 r r2 | % 93
	R1 * 5/4 | % 94
	\time 5/2
	r2 fis1\ff\>\startTrillSpan fis\fermata
	
	%% 6 %%
	
	R1 * 5/2 * 4\!\stopTrillSpan | % 96-99
	fis1.\p\<\startTrillSpan fis1\> | % 100
	fis1.\< fis1\> | % 101
	fis1.\< fis1\> | % 102
	fis1.\< fis1\> | % 103
	
	%% 7 %%
	
	R1 * 5/2 * 6\!\stopTrillSpan_\markup { \concat { G \sharp } to \concat { G \natural } } | % 104-109
	\time 5/4
	\tuplet 3/2 { f?8\fff f f } f4 f f8 f f4 | % 110
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 111
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 112
	R1 * 5/4 * 20 | % 113-132
	r2. f2\f\<\startTrillSpan | % 133
	
	%% 8 %%
	
	f4->\!\stopTrillSpan r r r2 | % 134
	r2. f2\<\startTrillSpan | % 135
	\tuplet 3/2 { f8->\f\stopTrillSpan f f } f4 f f8 f f4 | % 136
	\override Staff.MeasureCounter.count-from = #2
	\startMeasureCount
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 137
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 138
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 139
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 140
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 141
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 142
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 143
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 144
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 145
	
	%% 9 %%
	
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 146
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 147
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 148
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 149
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 150
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 151
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 152
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 153
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 154
	\tuplet 3/2 { f8\cresc f f } f4 f f8 f f4 | % 155
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 156
	\tuplet 3/2 { f8 f f } f4 f f8 f f4 | % 157
	\stopMeasureCount
	\tuplet 3/2 { f8 f f } f4 f bes2\<\startTrillSpan | % 158
	
	%% 10 %%
	
	f8->\!\stopTrillSpan r r4 r r2 | % 159
	R1 * 5/4 | % 160
	bes8-> r r4 r r2 | % 161
	R1 * 5/4 * 5 | % 162-166
	\time 5/2
	bes1.\ffff\startTrillSpan bes1 | % 167
	bes1. r2\stopTrillSpan r | % 168
	R1 * 5/2 * 3 | % 169-171
	
	%% 11 %%
	
	\time 3/4
	R1 * 3/4 * 6 | % 172-177
	
	%% 12 %%
	
	\tuplet 3/2 { bes8->\ffff\stopTrillSpan bes-> bes-> } bes4-> r | % 178
	r bes8-> bes-> bes4-> | % 179
	r bes8-> bes-> bes4-> | % 180
	\tuplet 3/2 { bes8-> bes-> bes-> } bes4-> r | % 181
	r bes-> bes-> | % 182
	r r bes-> | % 183
	bes-> bes-> r | % 184
	bes2.\startTrillSpan\fermata | % 185
}


%%%%%%%%%
% SCORE %
%%%%%%%%%

\score
{
	\new PianoStaff
	<<
		\new Staff \with { instrumentName = \markup \center-column { F \concat { B \flat } G } }
		<<
			\transpose c d \playerOneNotes
			\forcedBreaks
		>>
		\new Staff \with { instrumentName = \markup \center-column { \concat { E \flat } C A } }
		<<
			\transpose c d \playerTwoNotes
		>>
	>>
}
