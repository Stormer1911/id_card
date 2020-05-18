import 'package:flutter/material.dart';

class HomeAnimated extends StatefulWidget {
  @override
  _HomeAnimatedState createState() => _HomeAnimatedState();
}

class _HomeAnimatedState extends State<HomeAnimated> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
