import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:isalmi/core/constans/assets.dart';
import 'package:isalmi/core/theme/colors_pallete.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.backgroundQuranView),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(children: [CustomHeaderQuranView()]),
      ),
    );
  }
}

class CustomHeaderQuranView extends StatelessWidget {
  const CustomHeaderQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Image.asset(Assets.header),
        Container(
          color: Colors.black45,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  Assets.quranIcon,
                  color: ColorsPallete.primaryColor,
                ),
              ),
              fillColor: Colors.white,
              focusColor: Colors.white,
              enabledBorder: _outLineinputBorder(),
              border: _outLineinputBorder(),
              focusedBorder: _outLineinputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _outLineinputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: ColorsPallete.primaryColor),
    );
  }
}
