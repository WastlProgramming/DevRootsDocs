# Installieren von Sphinx

## Voraussetzungen

Stellen Sie sicher, dass Sie Python installiert haben. Sie können dies überprüfen, indem Sie folgendes in Ihrem Terminal oder in Ihrer Eingabeaufforderung eingeben:

```bash
python --version
```

Falls Python nicht installiert ist, können Sie es [hier](https://www.python.org/downloads/) herunterladen und installieren.

## Installation von Sphinx

Sphinx wird mit pip installiert.

```bash
pip install sphinx 
```

## Überprüfen ob Sphinx installiert wurde

```bash
sphinx.build --version
```

Das sollte Ihnen die installierte Version von Sphinx anzeigen.

## Erstellen eines Sphinx projekt

Um ein neues Sphinx-Dokumentationsprojekt zu starten, navigieren Sie zu dem gewünschten Verzeichnis und führen folgenden befehl aus.

```bash
sphinx-quickstart
```

### Auswahl meine Config

1. No
2. Name Project
3. Version
4. Sprache

## Erstellen einer Markdown-Datei

Es wird empfohlen, einen Ordner zu erstellen, in dem alle Markdown-Dateien organisiert werden, z.B. einen Ordner namens `Markdown`. In diesem Ordner können Sie dann alle Ihre Markdown-Dateien ablegen.

### Einbinden der Startdatei als Markdown

Um eine bestimmte Markdown-Datei als Startdatei festzulegen, müssen Sie diese in der **index.rst**-Datei einbinden. Dies geschieht mit dem Befehl `toctree` oder `include`. Zum Beispiel:

```rst
.. include:: your_startfile.md
```

Oder, wenn Sie eine Datei in die `toctree` aufnehmen möchten:

```rst
.. toctree::
   :maxdepth: 2
   :caption: Inhaltsverzeichnis

   your_startfile.md
```

Dabei ersetzt your_startfile.md den Namen der gewünschten Markdown-Datei, die als Startdatei dienen soll.

## Die Ordner struktur

- _build: fertige HTML datei wird hier rein gespeichert
- static: hier werden bilder und co gespeichert die in die Md eingebunden werden

## Erstellen der Datei

Die datei kann nun mit den befehl `./make.bat html` (statt html auch xml etc) erstellt werden beachte das du die extensions auch brauchen wirst.
