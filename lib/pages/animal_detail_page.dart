import 'package:flutter/material.dart';

import '../models/animal.dart';

class AnimalDetailPage extends StatelessWidget {
  final Animal animal;

  const AnimalDetailPage({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(animal.name)),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                animal.image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Animal Details',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            Text('Name: ${animal.name}'),
            Text('Type: ${animal.type}'),
            Text('Height: ${animal.height}'),
            Text('Weight: ${animal.weight}'),

            const SizedBox(height: 20),

            const Text(
              'Habitat',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Wrap(
              spacing: 8,
              children: animal.habitat
                  .map((item) => Chip(label: Text(item)))
                  .toList(),
            ),

            const SizedBox(height: 20),

            const Text(
              'Animal Activities',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            Wrap(
              spacing: 8,
              children: animal.activities
                  .map((activity) => Chip(label: Text(activity)))
                  .toList(),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali ke Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
