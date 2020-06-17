import 'package:flutter/material.dart';
import 'package:musicplayersoftui/widgets/big_circular_box.dart';
import 'package:musicplayersoftui/widgets/rounded_rectangular_box.dart';
import 'package:musicplayersoftui/widgets/small_circular_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Music Player Soft UI',
      debugShowCheckedModeBanner: false,
      home: MusicPlayerSoftUI(),
    );
  }
}

class MusicPlayerSoftUI extends StatefulWidget {
  @override
  _MusicPlayerSoftUIState createState() => _MusicPlayerSoftUIState();
}

class _MusicPlayerSoftUIState extends State<MusicPlayerSoftUI> {
  // final Color _bgColor = Colors.grey[200];

  // final Color _lightShadowColor = Colors.white;

  // final Color _darkShadowColor = Colors.grey[400];

  // final Color txtColor = Colors.grey[800];

  final Color _bgColor = Colors.grey[850];

  final Color _lightShadowColor = Colors.grey[800];

  final Color _darkShadowColor = Colors.grey[900];

  final Color txtColor = Colors.grey[200];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _bgColor,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: size.height * 0.1,
                child: Row(
                  children: <Widget>[
                    SmallCircularBox(
                      bgColor: _bgColor,
                      lightShadowColor: _lightShadowColor,
                      darkShadowColor: _darkShadowColor,
                      icon: Icons.arrow_back_ios,
                      iconColor: txtColor,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "MUSIC PLAYER",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: txtColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3.0,
                          ),
                        ),
                      ),
                    ),
                    SmallCircularBox(
                      bgColor: _bgColor,
                      lightShadowColor: _lightShadowColor,
                      darkShadowColor: _darkShadowColor,
                      icon: Icons.settings,
                      iconColor: txtColor,
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.32,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 160.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _bgColor,
                          boxShadow: [
                            BoxShadow(
                              color: _lightShadowColor,
                              offset: Offset(-5.0, -5.0),
                              blurRadius: 5.0,
                            ),
                            BoxShadow(
                              color: _darkShadowColor,
                              offset: Offset(5.0, 5.0),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(6.0),
                        child: ClipOval(
                          child: Image(
                            image: AssetImage("assets/bob_dylan.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      left: 0.0,
                      child: SmallCircularBox(
                        bgColor: _bgColor,
                        lightShadowColor: _lightShadowColor,
                        darkShadowColor: _darkShadowColor,
                        icon: Icons.add,
                        iconColor: txtColor,
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 0.0,
                      child: SmallCircularBox(
                        bgColor: _bgColor,
                        lightShadowColor: _lightShadowColor,
                        darkShadowColor: _darkShadowColor,
                        icon: Icons.favorite,
                        iconColor: Colors.pink[400],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Bob Dylan",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: txtColor,
                        letterSpacing: 1.0,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Knock'in on Heaven's Door",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: txtColor,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.16,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RoundedRectangularBox(
                        bgColor: _bgColor,
                        lightShadowColor: _lightShadowColor,
                        darkShadowColor: _darkShadowColor,
                        txt: "Shuffle",
                        icon: Icons.shuffle,
                        iconColor: txtColor,
                      ),
                      RoundedRectangularBox(
                        bgColor: _bgColor,
                        lightShadowColor: _lightShadowColor,
                        darkShadowColor: _darkShadowColor,
                        txt: "Playlist",
                        icon: Icons.queue_music,
                        iconColor: Colors.pink[400],
                      ),
                      RoundedRectangularBox(
                        bgColor: _bgColor,
                        lightShadowColor: _lightShadowColor,
                        darkShadowColor: _darkShadowColor,
                        txt: "Repeat",
                        icon: Icons.repeat,
                        iconColor: txtColor,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 10.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(color: _lightShadowColor),
                            gradient: LinearGradient(
                              colors: [
                                _darkShadowColor,
                                _lightShadowColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                        Container(
                          height: 10.0,
                          width: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(color: _lightShadowColor),
                            gradient: LinearGradient(
                              colors: [
                                Colors.pink[700],
                                Colors.pink[400],
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "1:12",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: txtColor,
                          ),
                        ),
                        Text(
                          "4:32",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: txtColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BigCircularBox(
                      mainBox: false,
                      bgColor: _bgColor,
                      lightShadowColor: _lightShadowColor,
                      darkShadowColor: _darkShadowColor,
                      icon: Icons.fast_rewind,
                      iconColor: txtColor,
                    ),
                    BigCircularBox(
                      mainBox: false,
                      bgColor: _bgColor,
                      lightShadowColor: _lightShadowColor,
                      darkShadowColor: _darkShadowColor,
                      icon: Icons.skip_previous,
                      iconColor: txtColor,
                    ),
                    BigCircularBox(
                      mainBox: true,
                      bgColor: _bgColor,
                      lightShadowColor: _lightShadowColor,
                      darkShadowColor: _darkShadowColor,
                      icon: Icons.pause,
                      iconColor: Colors.pink[400],
                    ),
                    BigCircularBox(
                      mainBox: false,
                      bgColor: _bgColor,
                      lightShadowColor: _lightShadowColor,
                      darkShadowColor: _darkShadowColor,
                      icon: Icons.skip_next,
                      iconColor: txtColor,
                    ),
                    BigCircularBox(
                      mainBox: false,
                      bgColor: _bgColor,
                      lightShadowColor: _lightShadowColor,
                      darkShadowColor: _darkShadowColor,
                      icon: Icons.fast_forward,
                      iconColor: txtColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
