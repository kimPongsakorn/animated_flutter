import 'package:flutter/material.dart';

class FadeTransitionPage extends StatelessWidget {
  const FadeTransitionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyFadeTransition(),
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

class BodyFadeTransition extends StatefulWidget {
  BodyFadeTransition({Key? key}) : super(key: key);

  @override
  _BodyFadeTransitionState createState() => _BodyFadeTransitionState();
}

class _BodyFadeTransitionState extends State<BodyFadeTransition>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    // เวลาในการ Fade
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    // เรียกใช้ _controller
    curve: Curves.easeIn,
    // FX
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: FadeTransition(
          opacity: _animation,
          //เรียกใช้ _animation
          child: const Padding(
              padding: EdgeInsets.all(8),
              child: FlutterLogo(
                size: 150.0,
              )),
        ),
      ),
    );
  }
}
