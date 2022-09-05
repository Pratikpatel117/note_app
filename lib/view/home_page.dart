// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:note_app/utils/global_value.dart';
import 'package:note_app/widget/add_note.dart';
import 'package:note_app/widget/notes_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NotesData> notes = [
    NotesData(notes: "First Day", subNotes: "one Day"),
    NotesData(notes: "Second Day", subNotes: "two Day"),
  ];

  addNotes() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: GlobalValue().notesList.length,
                itemBuilder: (context, index) {
                  return NotesWidget(
                      notes: GlobalValue().notesList[index].notes,
                      subTitle: GlobalValue().notesList[index].subNotes);
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const NotesField();
          },
        );
      }),
    );
  }
}
