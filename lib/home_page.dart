import 'package:flutter/material.dart';
import 'package:flutter_application_21_6_2024/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4A148C), Color(0xFF880E4F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text('Useful Links'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4A148C), Color(0xFF880E4F)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            shrinkWrap: true,
            children: const [
              CustomButton(
                icon: Icons.video_library,
                label: 'Watch Flutter tutorials on YouTube',
                color: Colors.red,
                url: 'https://www.youtube.com/c/flutterdev',
              ),
              SizedBox(height: 16),
              CustomButton(
                icon: Icons.code,
                label: 'Flutter GitHub repository',
                color: Colors.black,
                url: 'https://github.com/flutter/flutter',
              ),
              SizedBox(height: 16),
              CustomButton(
                icon: Icons.article,
                label: 'Flutter Medium publication',
                color: Colors.deepPurple,
                url: 'https://medium.com/flutter',
              ),
              SizedBox(height: 16),
              CustomButton(
                icon: Icons.web,
                label: 'Flutter Twitter account',
                color: Colors.blueAccent,
                url: 'https://twitter.com/flutterdev',
              ),
              SizedBox(height: 16),
              CustomButton(
                icon: Icons.facebook,
                label: 'Flutter Facebook page',
                color: Colors.blue,
                url: 'https://www.facebook.com/flutterdev',
              ),
              SizedBox(height: 16),
              CustomButton(
                icon: Icons.web,
                label: 'Show Flutter homepage',
                color: Colors.blue,
                url: 'https://flutter.dev',
              ),
              SizedBox(height: 16),
              CustomButton(
                icon: Icons.reddit,
                label: 'FlutterDev subreddit',
                color: Colors.orange,
                url: 'https://www.reddit.com/r/FlutterDev/',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
