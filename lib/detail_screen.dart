import 'package:flutter/material.dart';
import 'package:flutter_layout/model/campus.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.campus}) : super(key: key);

  final Campus campus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(campus.imageAsset),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  campus.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0, 
                    fontFamily: 'Lobster',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text(campus.openDays)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        Text(campus.openTime)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.star),
                        Text(campus.accreditation)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  campus.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen'
                  ),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          campus.imageNetwork,
                          height: 150,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          campus.imageAsset,
                          height: 150,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          campus.imageAsset2,
                          height: 150,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          campus.imageAsset3,
                          height: 150,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
