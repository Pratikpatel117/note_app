import 'package:flutter/material.dart';
import 'package:note_app/widget/notes_widget.dart';

class NotesField extends StatefulWidget {
  const NotesField({super.key});

  @override
  State<NotesField> createState() => _NotesFieldState();
}

class _NotesFieldState extends State<NotesField> {
  final notesController = TextEditingController();
  final subNotesController = TextEditingController();

  List<NotesData> notesList = [
    NotesData(notes: "First Day", subNotes: "one Day"),
    NotesData(notes: "Second Day", subNotes: "two Day"),
  ];

  addNotes() {
    setState(() {
      notesList.add(
        NotesData(
            notes: notesController.text, subNotes: subNotesController.text),
      );
      notesList.addAll(notesList);
    });
    for (var element in notesList) {
      debugPrint("list value == ${element.notes} && ${element.subNotes}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: TextField(
            decoration: const InputDecoration(hintText: 'Add Notes'),
            autofocus: true,
            controller: notesController,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: TextField(
            decoration: const InputDecoration(hintText: 'Sub Notes'),
            autofocus: true,
            controller: subNotesController,
          ),
        ),
        InkWell(
          onTap: () {
            addNotes();
          },
          child: Container(
            height: 40,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text("Add"),
          ),
        )
      ],
    );
  }
}
