import 'package:flutter/material.dart';

class RoundedRectangularBox extends StatelessWidget {
  const RoundedRectangularBox({
    Key key,
    @required Color bgColor,
    @required Color lightShadowColor,
    @required Color darkShadowColor,
    @required String txt,
    @required IconData icon,
    Color iconColor,
  })  : _bgColor = bgColor,
        _lightShadowColor = lightShadowColor,
        _darkShadowColor = darkShadowColor,
        _txt = txt,
        icon = icon,
        iconColor = iconColor,
        super(key: key);

  final Color _bgColor;
  final Color _lightShadowColor;
  final Color _darkShadowColor;
  final String _txt;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 42.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
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
          child: Icon(
            icon,
            size: 25.0,
            color: iconColor,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          _txt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: iconColor,
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}