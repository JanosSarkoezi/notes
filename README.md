# notes

Noten für die Gitarre. Kann mit Lilypond in ein PDF Dokument umgewandelt werden.
Durch ein Trick mit entr kann das Bearbeiten und Anschauen eines Dokuments wie
folgt agekürzt werden:

    ls [doc].ly | entr /bin/sh -c "lilypond [doc].ly && pkill -HUP mupdf"

Dabei wird mupdf als PDF-Betrachter genutzt.
