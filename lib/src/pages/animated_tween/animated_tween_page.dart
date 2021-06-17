import 'package:flutter/material.dart';

class AnimatedTweenPage extends StatelessWidget {
  const AnimatedTweenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedTween(),
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

class BodyAnimatedTween extends StatefulWidget {
  @override
  _BodyAnimatedTweenState createState() => _BodyAnimatedTweenState();
}

class _BodyAnimatedTweenState extends State<BodyAnimatedTween> {
  Tween<double> _scaleTween = Tween<double>(begin: 1, end: 30);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        tween: _scaleTween,
        duration: Duration(milliseconds: 600),
        builder: (context, scale, child) {
          return Transform.scale(scale: 5.0, child: child);
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.lightBlue[200],
          child: Center(
            child: Text(
              'Animation',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ),
    );
  }
}
