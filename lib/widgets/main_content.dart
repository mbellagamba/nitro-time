import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  final String _title;
  MainContent(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$_title app bar title'),
      ),
        body: Center(
      child: Text(_title),
    ));
  }
}
