import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odonto_app_event/ui/cores.dart';
import 'package:odonto_app_event/ui/icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
    required GlobalKey<CurvedNavigationBarState> bottomNavigationKey,
  })  : _bottomNavigationKey = bottomNavigationKey,
        super(key: key);

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: 2,
      animationDuration: Duration(milliseconds: 400),
      backgroundColor: Cores.branco,
      buttonBackgroundColor: Cores.amarelo,
      color: Cores.verde,
      key: _bottomNavigationKey,
      animationCurve: Curves.decelerate,
      height: 7.h,
      items: [
        Icon(
          Icons.shopping_cart_sharp,
          size: 5.h,
        ),
        Icon(
          Icons.map,
          size: 5.h,
        ),
        SvgPicture.asset(
          Icones.odonto,
          height: 5.h,
          color: Cores.preto,
        ),
        Icon(
          Icons.help,
          size: 5.h,
        ),
        Icon(
          Icons.person,
          size: 5.h,
        ),
      ],
    );
  }
}
