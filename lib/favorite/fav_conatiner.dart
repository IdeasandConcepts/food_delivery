import 'package:flutter/material.dart';

class FavContainer extends StatelessWidget {
  const FavContainer({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text(
            textAlign: TextAlign.center,
            content,
            style: const TextStyle(color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
