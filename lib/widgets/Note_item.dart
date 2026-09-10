import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffffcd7a),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            title: Text(
              'Flutter Tips',
              style: const TextStyle(fontSize: 24, color: Colors.black),
            ),

            subtitle: const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Text(
                'Build Your Career With Tharwat Samy',
                style: TextStyle(
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
              'Sep 9, 2026',
              style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.65)),
            ),
          ),
        ],
      ),
    );
  }
}
