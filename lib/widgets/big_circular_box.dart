import 'package:flutter/material.dart';

class BigCircularBox extends StatelessWidget {
  const BigCircularBox({
    Key key,
    @required bool mainBox,
    @required Color bgColor,
    @required Color lightShadowColor,
    @required Color darkShadowColor,
    @required IconData icon,
    @required Color iconColor,
  })  : _mainBox = mainBox,
        _bgColor = bgColor,
        _lightShadowColor = lightShadowColor,
        _darkShadowColor = darkShadowColor,
        icon = icon,
        iconColor = iconColor,
        super(key: key);

  final bool _mainBox;
  final Color _bgColor;
  final Color _lightShadowColor;
  final Color _darkShadowColor;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _mainBox ? 85.0 : 56.0,
      width: _mainBox ? 85.0 : 56.0,
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
        size: 30.0,
        color: iconColor,
      ),
    );
  }
}