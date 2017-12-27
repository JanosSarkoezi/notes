\version "2.18.2"

upper = \relative c {
  \key c \major
  \time 12/4
  \voiceOne
  % 1. Zeile
  a'8 [a,] bes [a'] a, [bes] a' [a,] bes [bes'] a, [g']~ g [a,] bes [g'] a, [bes] g' [a,] bes [a'] a, [fis']~ \break
  % 2. Zeile
  fis [a,] bes [fis'] a, [bes] fis ' [a,] bes [g'] a, [e']~ e [a,] g [e'] a, [g] e' [a,] g [e'] a, [g] \break
  % 3. Zeile
  a'8 [a,] bes [a'] a, [bes] a' [a,] bes [bes'] a, [g']~ g [a,] bes [g'] a, [bes] g' [a,] bes [a'] a, [fis']~ \break
  % 4. Zeile
  fis [a,] bes [fis'] a, [bes] fis ' [a,] bes [g'] a, [e']~ e [a,] g [e'] a, [g] e' [a,] g [e'] a, [g] \break
  % 5. Zeile
  d'' [bes] e, [d'] bes e, d' [bes] e, [e'] d [c]~ c [bes] e, [c'] bes [e,] c' [bes] e, [d'] c <bes gis,>~\break
  % 6. Zeile
  bes [f] e [bes'] f [e] bes' [f] d [cis'] f, [a]~ a [e] a, [a'] e [a,] a' [e] a, [g'] d <a a'>~ \break
  % 7. Zeile
  a' [e] a, [a'] e [a,] a' [e] a, [g'] d <a a'>~ <a' a,>4 g,8 [_(a)] (a) [g] _(a2) r4 \bar "|."
}

lower = \relative c {
  \key c \major
  \voiceTwo
  % 1. Zeile
  s1 s1 s1
  % 2. Zeile
  s1 s1 s1
  % 3. Zeile
  s1 s1 s1
  % 4. Zeile
  s1 s1 s1
  % 5. Zeile
  a2 s2 s4. c2 s2 s2 s8
  % 6. Zeile
  gis2 s2 s4. a2 s2 s4 g4 s8
  % 7. Zeile
  a2 s2 s1 s1
}

\score {
  \new Staff = "guitar" <<
    \clef "treble_8"
    \context Voice = "upper" \upper
    \context Voice = "lower" \lower
  >>
}

