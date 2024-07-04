import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UsefulLinksApp extends StatelessWidget {
  const UsefulLinksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Useful Links',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
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
        title: const Text('Useful Links'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildButton(
            icon: Icons.video_library,
            label: 'Watch Flutter tutorials on YouTube',
            color: Colors.red,
            url: Uri.parse('https://www.youtube.com/c/flutterdev'),
          ),
          const SizedBox(height: 16),
          _buildButton(
            icon: Icons.code,
            label: 'Flutter GitHub repository',
            color: Colors.black,
            url: Uri.parse('https://github.com/'),
          ),
          const SizedBox(height: 16),
          _buildButton(
            icon: Icons.article,
            label: 'Flutter Medium publication',
            color: Colors.deepPurple,
            url: Uri.parse('https://medium.com/flutter'),
          ),
          const SizedBox(height: 16),
          _buildButton(
            icon: Icons.web,
            label: 'Flutter Twitter account',
            color: Colors.blueAccent,
            url: Uri.parse('https://x.com/flutterdev'),
          ),
          const SizedBox(height: 16),
          _buildButton(
            icon: Icons.facebook,
            label: 'Flutter Facebook page',
            color: Colors.blue,
            url: Uri.parse('https://www.facebook.com/flutterdev'),
          ),
          const SizedBox(height: 16),
          _buildButton(
            icon: Icons.web,
            label: 'Show Flutter homepage',
            color: Colors.blue,
            url: Uri.parse('https://flutter.dev'),
          ),
          const SizedBox(height: 16),
          _buildButton(
            icon: Icons.reddit,
            label: 'FlutterDev subreddit',
            color: Colors.orange,
            url: Uri.parse('https://www.reddit.com/r/FlutterDev/'),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required IconData icon,
    required String label,
    required Color color,
    required Uri url,
  }) {
    return ElevatedButton.icon(
      onPressed: () => _launchUrl(url),
      icon: Icon(icon, color: Colors.white),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 10,
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
