import 'package:flutter/material.dart';

class AnimatedModalBarrierPage extends StatelessWidget {
  const AnimatedModalBarrierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyAnimatedModalBarrier(),
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

class BodyAnimatedModalBarrier extends StatefulWidget {
  BodyAnimatedModalBarrier({Key? key}) : super(key: key);

  @override
  _BodyAnimatedModalBarrierState createState() =>
      _BodyAnimatedModalBarrierState();
}

class _BodyAnimatedModalBarrierState extends State<BodyAnimatedModalBarrier>
    with SingleTickerProviderStateMixin {
  bool _isLoading = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorTweenAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Color.fromARGB(100, 255, 255, 255),
      end: Color.fromARGB(100, 127, 127, 127),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorTweenAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorTweenAnimation,
      dismissible: true,
    );

    super.initState();
  }

  List<Widget> buildWidgetList(BuildContext context) {
    List<Widget> widgets = <Widget>[
      RaisedButton(
        child: Text('Button'),
        onPressed: () {
          setState(() {
            _isLoading = true;
          });

          _animationController.reset();
          _animationController.forward();

          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Button is pressed')));

          Future.delayed(const Duration(seconds: 5), () {
            setState(() {
              _isLoading = false;
            });
          });
        },
      ),
    ];

    if (_isLoading) {
      widgets.add(_animatedModalBarrier);
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 250.0,
                // alignment: FractionalOffset.center,
                child: new Stack(
                  alignment: AlignmentDirectional.center,
                  children: buildWidgetList(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
