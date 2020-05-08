import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final double letterSpacingHeader = 4;
  final double letterSpacing = 2;
  final Color text = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: Icon(Icons.share),
      ),
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          "Visitenkarte",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: text,
            letterSpacing: letterSpacingHeader,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Christoph Müller",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        letterSpacing: letterSpacingHeader,
                        color: text,
                      ),
                    ),
                    Text(
                      "Stormer1911",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        letterSpacing: letterSpacingHeader,
                        fontSize: 20,
                        color: Colors.amber[600],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2013/10/25/17/26/tree-200795_1280.jpg"),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.amber,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "MCD@mircochristoph.de",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: text,
                        letterSpacing: letterSpacing,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
