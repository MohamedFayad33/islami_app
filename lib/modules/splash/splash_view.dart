import 'package:flutter/material.dart';
import 'package:isalmi/core/constans/assets.dart';
import 'package:isalmi/core/rout/routs_page_name.dart';
import 'package:isalmi/core/theme/colors_pallete.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    goLayoutView();
  }

  void goLayoutView() {
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacementNamed(RoutsPageName.layoutView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.backgroundSplashView),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Image.asset(Assets.shape7Icon),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const SizedBox(height: 120),
                    Image.asset(Assets.mosque1Icon),
                    const SizedBox(height: 100),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(
                        Assets.mosqueIcon,
                        color: ColorsPallete.primaryColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(
                        Assets.islamiIcon,
                        color: ColorsPallete.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(Assets.glowIcon, height: 200),
                  Spacer(),
                  Image.asset(Assets.shape4Icon),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
