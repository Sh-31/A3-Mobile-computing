import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Login Screen App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.teal, // Change to your preferred color theme
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Codeplayon'), // Update app bar title to match image
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Stretch widgets horizontally
          children: <Widget>[
            const Text(
              'User Name',
              style: TextStyle(fontSize: 18.0),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Username',
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            const SizedBox(height: 20.0), // Add spacing between elements
            const Text(
              'Password',
              style: TextStyle(fontSize: 18.0),
            ),
            TextField(
              obscureText: true, // Hide password characters
              decoration: InputDecoration(
                hintText: 'Enter Password',
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            const SizedBox(height: 10.0), // Add spacing between elements
            const TextButton(
              onPressed: null, // Add functionality for Forgot Password button
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 20.0), // Add spacing between elements
            ElevatedButton(
              onPressed: null, // Add functionality for Login button
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                minimumSize:
                    const Size(double.infinity, 50.0), // Stretch button width
              ),
            ),
            const SizedBox(height: 20.0), // Add spacing between elements
            const Text(
              'Does not have account? Sign in',
              textAlign: TextAlign.center, // Center align text
            ),
          ],
        ),
      ),
    );
  }
}
