import 'package:flutter/material.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Container(
    width: 400,
    height: 400,
    child: Center(
      child: CircularProgressIndicator()
      )
      )
      );
  }
}