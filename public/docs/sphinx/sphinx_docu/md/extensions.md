# Nützliche Extensions für Markdown-Dateien in Sphinx

Sphinx unterstützt mehrere Extensions, die die Arbeit mit Markdown-Dateien erleichtern und zusätzliche Funktionen bereitstellen. Hier sind einige nützliche Extensions und wie man sie einbindet.

## 1. `recommonmark`

`recommonmark` ermöglicht die Verwendung von Markdown-Dateien in Sphinx. Es unterstützt die Konvertierung von Markdown in reStructuredText, was die Integration von Markdown-Dateien in Sphinx-Dokumentationen erleichtert.

### Installation

Installieren Sie `recommonmark` mit pip:

```bash
pip install recommonmark
```

## Einbinden in Sphinx

Fügen Sie in Ihrer `conf.py`-Datei die folgende Zeile hinzu, um recommonmark zu aktivieren:

```python
extensions = [
    'recommonmark',
]
```

Damit Sphinx Ihre Markdown-Dateien erkennt, fügen Sie außerdem diesen Abschnitt in die `conf.py`-Datei ein:

```python
source_suffix = {
    '.rst': 'restructuredtext',
    '.md': 'markdown',
}
```

## 2. `myst-parser`

Der `myst-parser` ist eine leistungsstarke Alternative zu recommonmark. Er bietet umfangreichere Unterstützung für Markdown und zusätzliche Features wie erweiterte Syntax für Referenzen, Tabellen und mehr.

### Installation my-parser

```bash
pip install myst-parser
```

```python
extensions = [
    'myst-parser',
]
```

Dieser muss dann auch wieder in die extensions eingebundne werden.

Falls Sie erweiterte MyST-Syntax verwenden möchten, können Sie in der conf.py auch noch zusätzliche Konfigurationen vornehmen:

```python
myst_enable_extensions = [
    "deflist",
    "colon_fence",
]
```

#### "deflist" - Definition Lists (Definitionslisten)

Die `"deflist"`-Erweiterung ermöglicht die Verwendung von Definitionslisten in Markdown. Definitionslisten bestehen aus Begriffen und deren zugehörigen Definitionen. Diese Listen sind in einigen Markdown-Implementierungen nicht standardmäßig verfügbar, aber durch die Aktivierung dieser Erweiterung können sie in Ihrer Sphinx-Dokumentation genutzt werden.

```markdown
Begriff
:   Definition für den Begriff.

Ein weiterer Begriff
:   Die Definition für diesen weiteren Begriff.
```

Dieses Beispiel würde folgendermaßen gerendert:

- **Begriff**: Definition für den Begriff.
- **Ein weiterer Begriff** : Die Definition für diesen weiteren Begriff

#### 2. "colon_fence" - Kolon-Zäune

Die `"colon_fence"`-Erweiterung ermöglicht es, Blöcke von Inhalt, wie zum Beispiel Code-Blöcke oder Zitate, mit doppelten Doppelpunkten `(::)` einzuschließen, anstatt der standardmäßigen Backticks (```) oder anderer Markdown-Syntax. Diese Erweiterung bietet mehr Flexibilität bei der Gestaltung von Inhalten.

```markdown
:::
   Dies ist ein Block, der von Kolon-Zäunen umschlossen ist.
:::
```

Dieses Beispiel erstellt einen Block, der sich deutlich vom restlichen Text abhebt.

## 3. `sphinx_markdown_tables`

`recommonmark` und `myst-parser` haben grundlegende Unterstützung für Tabellen, aber wenn Sie komplexere Tabellenstrukturen benötigen, ist `sphinx_markdown_tables` eine hervorragende Ergänzung.

### Installtion Tabelles

```bash
pip install sphinx-markdown-tables
```

```python
extensions = [
    'sphinx_markdown_tables',
]
```

## 4. `sphinx.ext.autosectionlabel`

Diese Extension ermöglicht es Ihnen, automatisch Labels für Ihre Überschriften zu generieren, was die Verlinkung innerhalb der Dokumentation vereinfacht.

Installation
Diese Extension ist bereits in Sphinx integriert, Sie müssen sie also nicht separat installieren. Aktivieren Sie sie einfach in Ihrer `conf.py`:

```python
extensions = [
    'sphinx.ext.autosectionlabel',
]

# Um die Labelerzeugung für alle Abschnitte zu aktivieren, können Sie folgendes hinzufügen:
autosectionlabel_prefix_document = True
```

## 5. `sphinx_rtd_theme`

Wenn Sie eine gut aussehende und benutzerfreundliche Oberfläche für Ihre Dokumentation wünschen, ist das `sphinx_rtd_theme` (Read the Docs Theme) eine der beliebtesten Optionen.

### Installation rtd_theme

```bash
pip install sphinx_rtd_theme
```

Um dies einzubinden setzen Sie in der `config.py`

```python
html_theme = "sphinx_rtd_theme"
```

[Hier](https://sphinx-themes.org/#themes) sehen sie auch noch viele andere Themes

## Noch andere Extensions

[Hier](https://www.sphinx-doc.org/en/master/usage/extensions/index.html)
