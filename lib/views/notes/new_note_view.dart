import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';

class NewNotesView extends StatefulWidget {
  const NewNotesView({super.key});

  @override
  State<NewNotesView> createState() => _NewNotesViewState();
}

class _NewNotesViewState extends State<NewNotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Note'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                notesRoute,
                (_) => false,
              );
            },
            icon: const Text('Cancel'),
            iconSize: 50,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                notesRoute,
                (_) => false,
              );
            },
            icon: const Text('Save'),
            iconSize: 30,
          ),
        ],
      ),
      body: const Text('write your new note here...'),
    );
  }
}
