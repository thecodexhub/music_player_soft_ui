import 'package:flutter/material.dart';

class SmallCircularBox extends StatelessWidget {
  const SmallCircularBox({
    Key key,
    @required Color bgColor,
    @required Color lightShadowColor,
    @required Color darkShadowColor,
    @required IconData icon,
    Color iconColor,
  })  : _bgColor = bgColor,
        _lightShadowColor = lightShadowColor,
        _darkShadowColor = darkShadowColor,
        icon = icon,
        iconColor = iconColor,
        super(key: key);

  final Color _bgColor;
  final Color _lightShadowColor;
  final Color _darkShadowColor;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.0,
      width: 42.0,
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
      child: Icon(
        icon,
        size: 22.0,
        color: iconColor,
      ),
    );
  }
}