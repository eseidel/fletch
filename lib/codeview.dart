import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';

import 'package:flutter_highlight/themes/dark.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:highlight/languages/all.dart';

class CodeView extends StatefulWidget {
  final String filePath =
      'C:\\Users\\micro\\Documents\\GitHub\\fletch\\lib\\main.dart';

  const CodeView({Key? key}) : super(key: key);

  @override
  _CodeViewState createState() => _CodeViewState();
}

class SaveIntent extends Intent {
  const SaveIntent();
}

class _CodeViewState extends State<CodeView> {
  late File _file;
  late CodeController _codeController;

  @override
  void initState() {
    super.initState();
    _file = File(widget.filePath);
    _codeController = CodeController(
      text: _file.readAsStringSync(),
      language: allLanguages['dart'],
      theme: darkTheme,
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <ShortcutActivator, Intent>{
        SingleActivator(LogicalKeyboardKey.save): const SaveIntent(),
      },
      child: Actions(
        actions: <Type, Action<Intent>>{
          SaveIntent: CallbackAction<SaveIntent>(onInvoke: (SaveIntent intent) {
            _file.writeAsStringSync(_codeController.text);
            // Show some indication?
          }),
        },
        child: CodeField(
          controller: _codeController,
          textStyle: TextStyle(fontFamily: 'SourceCode'),
        ),
      ),
    );
  }
}
