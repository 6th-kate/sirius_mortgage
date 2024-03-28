import 'package:flutter/material.dart';

class FavoritesButtonTemplate extends StatelessWidget {
  final String title;
  final VoidCallback? onClick;

  const FavoritesButtonTemplate({
    super.key,
    required this.title,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        alignment: Alignment.center,
        color: const Color(0x1A009A00),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
