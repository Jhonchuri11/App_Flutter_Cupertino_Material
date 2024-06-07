import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cupertino vs Material',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cupertino vs Material'),
        ),
        body: ButtonComparison(),
      ),
    );
  }
}

class ButtonComparison extends StatelessWidget {
  void _showMaterialDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Material Alert'),
          content: const Text('This is a Material styled alert dialog.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Cupertino Alert'),
          content: const Text('This is a Cupertino styled alert dialog.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('OKI'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () => _showMaterialDialog(context),
            child: const Text('Material Button 1'),
          ),
          CupertinoButton(
            color: CupertinoColors.activeBlue,
            onPressed: () => _showCupertinoDialog(context),
            child: const Text('Cupertino Button 2'),
          ),
        ],
      ),
    );
  }
}