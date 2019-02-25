import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: true,
        home: MainApp(),
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      ),
    );

class MainApp extends StatelessWidget {
  var androidVersionNames = [
    "Cupcake",
    "Donut",
    "Eclair",
    "Froyo",
    "Gingerbread",
    "Honeycomb",
    "Ice Cream Sandwich",
    "Jellybean",
    "Kitkat",
    "Lollipop",
    "Marshmallow",
    "Nougat",
    "Oreo",
    "Pie"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RecyclerView Flutter"),
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
                child: Text(
                  androidVersionNames[position],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
              )
            ],
          );
        },
        itemCount: androidVersionNames.length,
      ),
    );
  }
}
