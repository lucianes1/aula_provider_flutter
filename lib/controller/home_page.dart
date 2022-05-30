import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_aula/controller/inc_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeNotifier'),
      ),
      body: Center(
        child: Text((context.select((IncController value) => value.number.toString()))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<IncController>(context, listen: false).incNumber();
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
