import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Shishyathwa Jayamaga',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: Text('Shishyathwa Jayamaga'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        // body is the majority of the screen.
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 175,
                child: Card(
                    child: Center(
                  child: Text("Grade 03",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold)),
                ))),
            Container(
                height: 175,
                child: Card(
                    child: Center(
                  child: Text("Grade 04",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold)),
                ))),
            Container(
                height: 175,
                child: Card(
                    child: Center(
                  child: Text("Grade 05",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold)),
                )))
          ],
        ));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}
