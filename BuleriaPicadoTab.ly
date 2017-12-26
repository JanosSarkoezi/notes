\version "2.18.2"

upper = \relative c {
  \key c \major
  \time 12/4
  \voiceOne
  % 1. Zeile
  a'8 [_(bes)] _(a) [_(g)] fis [g] a [bes] c [bes] a [g]
  a8 [_(bes)] _(a) [_(g)] fis [g] a [bes] c [_(cis)] _(c) [bes] \break
  % 2. Zeile
  a8 [_(bes)] _(a) [_(g)] fis [g] a [bes] c [bes] a [g] a4
  r8 <cis e> r8 <cis e> \tuplet 3/2 {<a, e' a cis e> [<a e' a cis e> <a e' a cis e>]}
  <a e' a cis e>4 r4  \break
  % 3. Zeile
  a'8 [_(bes)] _(a) [_(g)] fis [g] a [bes] c [bes] a [g]
  a8 [_(bes)] _(a) [_(g)] fis [g] a [bes] c [_(cis)] _(c) [bes] \break
  % 4. Zeile
  a8 [_(bes)] _(a) [_(g)] fis [g] a bes e [cis] _(c) [bes] a4
  r8 <cis e> r8 <cis e> \tuplet 3/2 {<a, e' a cis e> [<a e' a cis e> <a e' a cis e>]}
  <a e' a cis e>4 r4  \break
  % 5. Zeile
  f''8 [_(e)] d [e] f [g] a [g] f [e] d [f]
  e [d] c [d] e [f] g [f] e [d] c [e] \break
  % 6. Zeile
  d [_(c)] bes [c] d [e] f [_(e)] d [_(cis)] _(c) [bes] a4
  r8 <cis e> r8 <cis e> \tuplet 3/2 {<a, e' a cis e> [<a e' a cis e> <a e' a cis e>]}
  <a e' a cis e>4 <a e' a cis e>  \break
  % 7. Zeile
  f''8 [_(e)] d [e] f [g] a [g] f [e] d [f]
  e [d] c [d] e [f] g [f] e [d] c [e] \break
  % 8. Zeile
  d [_(c)] bes [c] d [e] g [_(f)] _(e) [d] _(cis) [bes] a4
  r8 <cis e> r8 <cis e> \tuplet 3/2 {<a, e' a cis e> [<a e' a cis e> <a e' a cis e>]}
  <a e' a cis e>4 <a e' a cis e>  \bar "|."
}

lower = \relative c {
  \key c \major
  \voiceTwo
  % 1. Zeile
  a2 s1
  a2 s1
  % 2. Zeile
  a2 s1
  a4 s8 <e' a> s8 <e a> s2.
  % 3. Zeile
  a,2 s1
  a2 s1
  % 4. Zeile
  a2 s1
  a4 s8 <e' a> s8 <e a> s2.
  % 5. Zeile
  d2 s1
  c2 s1
  % 6. Zeile
  g2 s4 bes'2 s4 a,
  s8 <e' a> s8 <e a> s2.
  % 7. Zeile
  d2 s1
  c2 s1
  % 8. Zeile
  g2 s4 bes'2 s4 a,
  s8 <e' a> s8 <e a> s2.
}

\score {
  <<
    \new StaffGroup = "tab with traditional" <<
      \new Staff = "guitar" <<
        \clef "treble_8"
        \context Voice = "upper" \upper
        \context Voice = "lower" \lower
      >>
      \new TabStaff = "guitar tab" <<
        \context TabVoice = "upper" \upper
        \context TabVoice = "lower" \lower
      >>
    >>
  >>
}
