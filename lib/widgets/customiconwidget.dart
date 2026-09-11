import 'package:flutter/material.dart';

class CustomICon extends StatelessWidget {
  const CustomICon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(onPressed: () {}, icon: Icon(icon)),
      ),
    );
  }
}
