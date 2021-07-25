import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odonto_app_event/ui/cores.dart';
import 'package:odonto_app_event/ui/icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavigationBar extends StatefulWidget {
   NavigationBar({
    Key? key,
    required GlobalKey<CurvedNavigationBarState> bottomNavigationKey,
    this.activePage,
    this.indexPage,
  })  : _bottomNavigationKey = bottomNavigationKey,
        super(key: key);

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey;
  int? activePage;
  int? indexPage = 2;

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: widget.indexPage!,
      animationDuration: Duration(milliseconds: 200),
      backgroundColor: Cores.branco,
      buttonBackgroundColor: Colors.black45,
      color: Cores.cinzaEscuro,
      key: widget._bottomNavigationKey,
      letIndexChange: (index) => true,
      onTap: (index) {
        setState(() {
          widget.indexPage = index;
        });
      },
      height: 7.h,
      items: [
        Icon(
          Icons.shopping_cart_sharp,
          size: 5.h,
          color: Cores.verde,
        ),
        Icon(
          Icons.map,
          size: 5.h,
          color: Cores.laranja,
        ),
        SvgPicture.asset(
          Icones.odonto,
          height: 5.h,
          color: Cores.rosa,
        ),
        Icon(
          Icons.help,
          size: 5.h,
          color: Cores.amarelo,
        ),
        Icon(
          Icons.person,
          size: 5.h,
          color: Cores.roxo,
        ),
      ],
    );
  }
}
