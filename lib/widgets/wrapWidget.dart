import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Wrap(
              spacing: 10.0, // left or right spacing
              runSpacing: 5.0, // top or bottom spacing
              children: List.generate(
                10, (index) => const Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                    child: Icon(Icons.person),
                  ),
                  label: Text("Thanks :)"),
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}