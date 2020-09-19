import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final double size;
  const IconContainer({Key key, @required this.size})
      : assert(size != null && size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(this.size * 0.15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 25,
              offset: Offset(0, 15),
            ),
          ]),
      padding: EdgeInsets.all(this.size * 0.15),
      child: Center(
          child: Image.asset(
        'assets/images/logo.png',
        width: this.size * 0.9,
        height: this.size * 0.9,
        fit: BoxFit.cover,
      )),
    );
  }
}
