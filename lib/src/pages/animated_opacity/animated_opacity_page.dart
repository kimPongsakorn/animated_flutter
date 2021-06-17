import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatelessWidget {
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedOpacity(),
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Text(
      (ModalRoute.of(context)!.settings.arguments as Map)['title'] ?? "",
    ),
  );
}

class BodyAnimatedOpacity extends StatefulWidget {
  BodyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  _BodyAnimatedOpacityState createState() => _BodyAnimatedOpacityState();
}

class _BodyAnimatedOpacityState extends State<BodyAnimatedOpacity> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
      print(opacityLevel);
      // ถ้าopacityLevel == 0 -> 1.0
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 3),
            child: const FlutterLogo(),
          ),
          ElevatedButton(
            child: const Text('Fade Logo'),
            onPressed: _changeOpacity,
            // เรียกใช้ _changeOpacity
          ),
        ],
      ),
    );
  }
}
