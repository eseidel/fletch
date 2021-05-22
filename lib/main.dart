import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'codeview.dart';

void main() async {
  runApp(FletchApp());
}

class FileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('FileList'));
  }
}

class FletchChrome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SizedBox(child: FileList()),
        Expanded(child: CodeView()),
      ],
    ));
  }
}

class FletchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fletch',
      theme: ThemeData.dark().copyWith(
          textTheme:
              GoogleFonts.robotoMonoTextTheme(ThemeData.dark().textTheme)),
      home: FletchChrome(),
    );
  }
}
