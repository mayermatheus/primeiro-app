import 'package:flutter/material.dart';

class ItemAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controlerText = TextEditingController();

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: () {
            Navigator.pop(context, _controlerText.text);
          },
          child: Icon(Icons.done),
        ),
        appBar: AppBar(
          title: Text('Novo Item'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Descrição do Item',
                ),
                TextField(
                  controller: _controlerText,
                )
              ],
            )));
  }
}
