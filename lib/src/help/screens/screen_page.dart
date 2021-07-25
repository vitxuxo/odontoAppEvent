import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:odonto_app_event/src/home/widgets/navigation_bar_widget.dart';
import 'package:odonto_app_event/ui/cores.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HelpPage extends StatefulWidget {
  HelpPage({
    Key? key,
  }) : super(key: key);
  final PageController pageController = PageController();
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  int activePage = 3;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (builder, orientation, screenType) {
      return Scaffold(
        backgroundColor: Cores.cinzaEscuro,
        appBar: AppBar(
          backgroundColor: Cores.cinzaEscuro,
          shadowColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: [
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                "Contato para duvidas: (79) 99999-9999",
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                "Contato para Vendas: (79) 88888-9999",
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                "Email para contato: contato@odontofantasy.com.br",
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                "Contato para reclamações: (79) 86868-9999",
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                "Endereço do Local: Sitio Terêncio",
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                "Patrocínios: ",
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          indexPage: 3,
          bottomNavigationKey: _bottomNavigationKey,
          activePage: 3,
        ),
      );
    });
  }
}
