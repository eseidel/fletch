# fletch
 Experimenting building a code editor in Flutter

"Fletch v. provide (an arrow) with feathers for flight."

Motivation
* Why not VSC?  Doesn't work on iPad (yet).  Uses lots of ram.
* Intuitively I know making a code editor is hard.  But I'd like
to experiance it first hand to understand how-hard.

Target
* iPad-like devices.
* Dart
* Only code-editing (only fixed-width fonts)
* Protocols, not plugins.

Design
* Draw/layout text directly? https://github.com/flutter/flutter/issues/58478
* How to handle arrow key movement?
* How to handle emoji?  (don't)
* Line numbering

Milestones

1. MVP
* Loads and displays a single file for editing
* Not necessarily a cursor.
* Able to edit and save.

1. Self-hosting
* Loads and displays directory for editing
* Able to switch between files.


Misc Features
* Syntax Hylighting
* Auto-complete 
* Undo/Redo
* Analyzer
* Click to place cursor
* Multi-line selection
* Vertical selection.
* Moving cursor by word/paragraph.
* End-bracket indicators.
* Link handling
* Auto-import
* Swiggles to show analyzer errors.
* Jump to definition
* File list tree view e.g. https://pub.dev/packages/flutter_treeview/example or https://pub.dev/packages/flutter_simple_treeview
* Split view between views: https://pub.dev/packages/split_view/example
* auto-intent when hitting return between lines.

