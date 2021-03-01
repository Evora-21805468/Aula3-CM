import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:f_calculator/data/datasource.dart';

class HistoricScreen extends StatelessWidget {

  final samples = DataSource.getInstance().getAll();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Histórico"),
          ),
          body: ListView.builder(
            itemCount: samples.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset('lib/assets/logo.jpg'),
                title: Text(samples[index]),
              );
            },
          ),
        )
    );
  }
}