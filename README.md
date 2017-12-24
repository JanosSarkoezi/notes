# notes

Noten für die Gitarre. Kann mit Lilypond in ein PDF Dokument umgewandelt werden.
Durch ein Trick mit entr kann das Bearbeiten und Anschauen eines Dokuments wie
folgt agekürzt werden:

    ls [Dokunent].ly | entr /bin/sh -c "lilypond [Dokument].ly && pkill -HUP mpdf"

Dabei wird mupdf als PDF-Betrachter genutzt.
