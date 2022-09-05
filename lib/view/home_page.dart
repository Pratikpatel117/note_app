import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Wrap(
              children: [
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
                ListTile(
                  leading: Icon(Icons.copy),
                  title: Text('Copy Link'),
                ),
                ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Edit'),
                ),
              ],
            );
          },
        );
      }),
    );
  }

  Future bottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.black,
        context: context,
        isScrollControlled: true,
        builder: (context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: NotesField(),
            ));
  }
}
