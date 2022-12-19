import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconYol;

  const MyTab({super.key, required this.iconYol});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
        child: Image.asset(
          iconYol,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }
}