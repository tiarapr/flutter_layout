import 'package:flutter/material.dart';
import 'package:flutter_layout/detail_screen.dart';
import 'package:flutter_layout/model/campus.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguruang Tinggi di Surabaya'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Campus campus = campusList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(campus: campus);
              }));
            },
            child: ListItem(campus),
          );
        },
        itemCount: campusList.length,
      ),
    );
  }
}

Widget ListItem(Campus campus) {
  return Card(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Expanded(
          flex: 1,
          child: Image(
            image: AssetImage(campus.imageAsset),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  campus.name,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text(campus.location),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}