import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String title;
  final IconData? icon;

  const GenderCard({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 180,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 70,
            ),
            const SizedBox(height: 10),
            Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold)
            ),
          ],
        ),
      ),
    );
  }
}
