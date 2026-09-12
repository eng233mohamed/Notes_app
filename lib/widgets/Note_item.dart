import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/Edit_NoteView.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteview();
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              title: Text(
                note.title,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),

              subtitle: Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text(
                  note.subtitle,
                  style: const TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.65),
                    fontSize: 16,
                  ),
                ),
              ),

              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, size: 28),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                DateFormat('MMM d, yyyy').format(DateTime.parse(note.date)),
                style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.65)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
