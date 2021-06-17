import 'package:flutter/material.dart';

class SizeTransitionPage extends StatelessWidget {
  const SizeTransitionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodySizeTransition(),
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

class BodySizeTransition extends StatefulWidget {
  BodySizeTransition({Key? key}) : super(key: key);

  @override
  _BodySizeTransitionState createState() => _BodySizeTransitionState();
}

class _BodySizeTransitionState extends State<BodySizeTransition>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _animation,
      axis: Axis.horizontal,
      axisAlignment: -1,
      child: const Center(
        child: FlutterLogo(size: 200.0),
      ),
    );
  }
}
