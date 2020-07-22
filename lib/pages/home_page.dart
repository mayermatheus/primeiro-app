import 'package:flutter/material.dart';
import 'package:primeiro_app_renato_mota/pages/item_add_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute<String>(builder: (context) {
              return ItemAddPage();
            }),
          );

          setState(() {
            texto = result;
          });
        },
      ),
      appBar: AppBar(
        title: Text('Primeiro App'),
      ),
      body: Center(child: Text(texto)),
    );
  }
}
