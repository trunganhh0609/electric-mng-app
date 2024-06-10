
import 'package:flutter/material.dart';

/**
 * @author Nguyen Trung Anh
 * @created 10/06/2024
 */

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Test Widget"),
      )
    );
  }
}
