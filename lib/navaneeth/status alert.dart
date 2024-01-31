import 'package:flutter/material.dart';
import 'package:status_alert/status_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Set the app's primary theme color
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
// Method to show a success alert
  void showSuccessAlert(BuildContext context) {
    StatusAlert.show(
      context,
      duration: Duration(seconds: 2),
      title: 'Success',
      subtitle: 'Operation completed successfully!',
      configuration: IconConfiguration(icon: Icons.check),
    );
  }

// Method to show an error alert
  void showErrorAlert(BuildContext context) {
    StatusAlert.show(
      context,
      duration: Duration(seconds: 2),
      title: 'Error',
      subtitle: 'Something went wrong!',
      configuration: IconConfiguration(icon: Icons.error),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status Alert Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Button to trigger success alert
            ElevatedButton(
              onPressed: () => showSuccessAlert(context),
              child: Text('Show Success Alert'),
            ),
            SizedBox(height: 20),
            // Button to trigger error alert
            ElevatedButton(
              onPressed: () => showErrorAlert(context),
              child: Text('Show Error Alert'),
            ),
          ],
        ),
      ),
    );
  }
}