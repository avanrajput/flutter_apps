import 'package:flutter/material.dart';

class CategoryCircle extends StatelessWidget {
  const CategoryCircle(
      {super.key,
      required this.onTap,
      required this.imageUrl,
      required this.catgName});

  final void Function() onTap;
  final String imageUrl;
  final String catgName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
          onTap: onTap,
          child: Column(children: [
            CircleAvatar(radius: 28, backgroundImage: NetworkImage(imageUrl)),
            const SizedBox(height: 4),
            Text(
              catgName,
              style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
            )
          ])),
    );
  }
}
