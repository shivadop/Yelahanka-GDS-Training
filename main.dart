import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const YelahankaGDSTrainingApp());
}

class YelahankaGDSTrainingApp extends StatelessWidget {
  const YelahankaGDSTrainingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yelahanka GDS Training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yelahanka GDS Training'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Welcome to Yelahanka GDS Training App!\n',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
              'This app will help Gramin Dak Sevaks in Bangalore to learn:'),
          const SizedBox(height: 10),
          const Text('• Insurance Marketing'),
          const Text('• Department of Post Products'),
          const Text('• Customer Service Skills'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Motivational Videos (coming soon)'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Customer Service Quotes (coming soon)'),
          ),
        ],
      ),
    );
  }
}
