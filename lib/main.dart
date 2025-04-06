import 'package:flutter/material.dart';

void main() {
  runApp(const SecretListenerApp());
}

class SecretListenerApp extends StatelessWidget {
  const SecretListenerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      home: SecretListenerHomepage(),
    );
  }
}

class SecretListenerHomepage extends StatefulWidget {
  const SecretListenerHomepage({super.key});

  @override
  State<SecretListenerHomepage> createState() => _SecretListenerHomepageState();
}

class _SecretListenerHomepageState extends State<SecretListenerHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Secret Listener')),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/768px-WhatsApp.svg.png?20220228223904',
              height: 200,
            ),
            const Text('Scegli un vocale'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickFile,
        child: const Icon(Icons.audio_file),
        ),
    );
  }

  void pickFile() {}
}
