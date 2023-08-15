import 'package:flutter/material.dart';

void main() {
  runApp(IndependenceDayApp());
}

class IndependenceDayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndependenceDayScreen(),
    );
  }
}

class IndependenceDayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Happy Independence Day'),
        backgroundColor: Color.fromARGB(255, 51, 0, 255),
      ),
      body: Center(
        child: IndependenceDayWidget(),
      ),
    );
  }
}

class IndependenceDayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.orange,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Center(),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: _buildAshokaChakra(),
              ),
            ),
            Container(
              color: Colors.green,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Center(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAshokaChakra() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image.asset(
          'asset/CHAKRA.webp', // Replace with your image file's path
          width: 350,
          height: 350,
        ),
      ),
    );
  }
}
