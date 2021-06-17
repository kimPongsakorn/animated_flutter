import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: BodyHero(),
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

class BodyHero extends StatefulWidget {
  BodyHero({Key? key}) : super(key: key);

  @override
  _BodyHeroState createState() => _BodyHeroState();
}

class _BodyHeroState extends State<BodyHero> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 20.0,
        ),
        ListTile(
          leading: Hero(
            tag: 'hero-rectangle',
            child: _blueRectangle(const Size(50, 50)),
          ),
          onTap: () => _gotoDetailsPage(context),
          title: const Text('กดดูการเคลื่อนไหว'),
        ),
      ],
    );
  }

  Widget _blueRectangle(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }

// เมื่อกดแล้ว
  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-rectangle',
                child: _blueRectangle(const Size(200, 200)), //_blueRectangle
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
