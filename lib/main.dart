import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// We use StatefulWidget so the app can remember when a checkbox is clicked
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This variable holds the state of the checkbox (false = unchecked)
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListTile Simple Example'),
        ),
        body: ListView(
          children: [
            // 1. Tile with Subtitle and Print Message
            ListTile(
              leading: const Icon(Icons.car_rental),
              title: const Text('Voiture'),
              subtitle: const Text('Une voiture de location'),
              trailing: const Icon(Icons.more_vert),
              onTap: () {
                print('J\'ai cliqué sur la voiture!');
              },
            ),
            
            // 2. Standard Tile
            ListTile(
              leading: const Icon(Icons.flight),
              title: const Text('Avion'),
              trailing: const Icon(Icons.more_vert),
              onTap: () {},
            ),
            
            // 3. Interactive Checkbox Tile
            CheckboxListTile(
              secondary: const Icon(Icons.train), // The icon on the left
              title: const Text('Train'),
              subtitle: const Text('Cocher pour sélectionner'),
              value: _isChecked,
              onChanged: (bool? value) {
                // setState tells Flutter to redraw the screen with the new value
                setState(() {
                  _isChecked = value!;
                });
                print('Train coché: $_isChecked');
              },
            ),
            
            // 4. Standard Tile
            ListTile(
              leading: const Icon(Icons.directions_bus),
              title: const Text('Bus'),
              trailing: const Icon(Icons.more_vert),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}