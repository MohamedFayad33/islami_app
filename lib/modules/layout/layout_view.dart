import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isalmi/core/constans/assets.dart';
import 'package:isalmi/modules/layout/hadeth/hadeth_view.dart';
import 'package:isalmi/modules/layout/quran/quran_view.dart';
import 'package:isalmi/modules/layout/radio/radio_view.dart';
import 'package:isalmi/modules/layout/sebha/sebha_view.dart';
import 'package:isalmi/modules/layout/time/time_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int indexScreen = 0;
  List<Widget> screens = const [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    TimeView(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: screens[indexScreen],
      bottomNavigationBar: Container(
        constraints: BoxConstraints(
          maxHeight: size.height * .12,
          minHeight: size.height * .12,
        ),
        decoration: BoxDecoration(),
        child: BottomNavigationBar(
          currentIndex: indexScreen,
          type: BottomNavigationBarType.fixed,
          onTap: (i) {
            indexScreen = i;
            setState(() {});
          },
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            bottomNavigationItem(Assets.quranIcon, 'Quran'),
            bottomNavigationItem(Assets.hadethIcon, 'Hadeth'),
            bottomNavigationItem(Assets.sebhaIcon, 'Sebha'),
            bottomNavigationItem(Assets.radioIcon, 'Radio'),
            bottomNavigationItem(Assets.timeIcon, 'Time'),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationItem(String icon, String label) {
    return BottomNavigationBarItem(
      activeIcon: Container(
        decoration: BoxDecoration(
          color: Color(0xff202020).withAlpha(150),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),

        child: SvgPicture.asset(icon, color: Colors.white),
      ),
      icon: SvgPicture.asset(icon),
      label: label,
    );
  }
}
