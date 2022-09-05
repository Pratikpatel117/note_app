import 'package:flutter/material.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({super.key, required this.notes, required this.subTitle});
  final String notes;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(notes),
      subtitle: Text(subTitle),
    );
  }
}

class NotesData {
  final String notes;
  final String subNotes;

  NotesData({
    required this.notes,
    required this.subNotes,
  });
}
