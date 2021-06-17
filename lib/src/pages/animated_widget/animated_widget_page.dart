import 'package:flutter/material.dart';

class AnimatedWidgetPage extends StatelessWidget {
  const AnimatedWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedWidget(),
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

class BodyAnimatedWidget extends StatefulWidget {
  BodyAnimatedWidget({Key? key}) : super(key: key);

  @override
  _BodyAnimatedWidgetState createState() => _BodyAnimatedWidgetState();
}

class _BodyAnimatedWidgetState extends State<BodyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ButtonTransition(
        width: _controller,
      ),
    );
  }
}

class ButtonTransition extends AnimatedWidget {
  const ButtonTransition({width}) : super(listenable: width);

  Animation<double> get width => listenable as Animation<double>;
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Hello'),
      child: Text("Click me!"),
      borderSide: BorderSide(width: width.value),
    );
  }
}
