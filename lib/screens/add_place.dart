import 'dart:io';

import 'package:fav_places_app/models/place.dart';
import 'package:fav_places_app/providers/user_places.dart';
import 'package:fav_places_app/widgets/image_input.dart';
import 'package:fav_places_app/widgets/location_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() {
    return _AddPlaceSreenState();
  }
}

class _AddPlaceSreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();
  File? _selectedImage;

  PlaceLocation? _selectedLocation;

  void _savePlace() {
    final enteredTitle = _titleController.text;

    if (enteredTitle.isEmpty ||
        _selectedImage == null ||
        _selectedLocation == null) {
      return;
    }

    ref.read(userPlacesProvider.notifier).addPlace(
          enteredTitle,
          _selectedImage!,
          _selectedLocation!,
        );

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: _titleController,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            ImageInput(
              onSelectImage: (image) {
                _selectedImage = image;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            LocationInput(
              onSelectLocation: (location) {
                _selectedLocation = location;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
              onPressed: _savePlace,
              label: const Text('Add place'),
              icon: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
