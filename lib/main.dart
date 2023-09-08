import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomeScreen(),
      title: 'ostad add',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomAppBar(), // Use the custom AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is mod 5 assignment',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16), // Space between texts
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'My ',
                    style: TextStyle(color: Colors.red, fontSize: 28),
                  ),
                  TextSpan(
                    text: 'phone ',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  TextSpan(
                    text: 'name ',
                    style: TextStyle(color: Colors.purple,fontSize: 28),
                  ),
                  TextSpan(
                    text: 'Your phone name',
                    style: TextStyle(color: Colors.amber,fontSize: 26),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      elevation: 70.0, // Set the elevation to 70
      leading: Icon(Icons.add_business),
      actions: [
        Icon(Icons.search),
      ],
      title: Text('Home', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),), // Title in the center
      centerTitle: true, // Center-align the title
    );
  }
}
