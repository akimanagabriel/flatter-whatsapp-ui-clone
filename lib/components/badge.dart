import 'package:flutter/material.dart';

class FilterBadge extends StatelessWidget {
  const FilterBadge({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        color: Colors.grey.shade300,
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 14,
        ),
        child: Text(text),
      ),
    );
  }
}
