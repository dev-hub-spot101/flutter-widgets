import 'package:flutter/material.dart';

class TextSpanWidget extends StatefulWidget {
  const TextSpanWidget({super.key});

  @override
  State<TextSpanWidget> createState() => _TextSpanWidgetState();
}

class _TextSpanWidgetState extends State<TextSpanWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text.rich(
              TextSpan(
                text: "DevhubSpot ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87
                ),
                children: [
                  TextSpan(
                    text: "Developer Community",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.orangeAccent
                    )
                  ),
                  TextSpan(
                    text: " :)",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.purpleAccent
                    )
                  )
                ]
              )
            ),
          ),
        )
      ),
    );
  }
}