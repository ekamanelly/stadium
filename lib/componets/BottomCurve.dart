import 'package:flutter/material.dart';

class BottomCurve extends StatelessWidget {
  BottomCurve(this.child, this.height, this.width, this.color);
  final Widget child;
  final double height;
  final double width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: karmaCurves(),
        child: Container(
          child: child,
          width: width,
          height: height,
          decoration: BoxDecoration(color: color),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
//              height: 200.0,
//          child: Text('working'),
        ),
      ),
    );
  }
}

class karmaCurves extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    print('params');
    print(size.height);
    print(size.width);
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0);

//    var topFirstControlPoint = Offset(size.width / 1.4, 0.0);
//    var toPFirstEndPoint = Offset(size.width / 2.25, 30.0);
//    path.quadraticBezierTo(topFirstControlPoint.dx, topFirstControlPoint.dy,
//        toPFirstEndPoint.dx, toPFirstEndPoint.dy);

//    var topLeftControlPoint = Offset(size.width / 6.5, 65);
//    var topLeftEndPoint = Offset(0.0, 40);
//    path.quadraticBezierTo(topLeftControlPoint.dx, topLeftControlPoint.dy,
//        topLeftEndPoint.dx, topLeftEndPoint.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
