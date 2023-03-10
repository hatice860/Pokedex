import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/constants/constants.dart';
import 'package:poke_dex/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
   // ignore: prefer_const_constructors_in_immutables
   AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  //String pokeballImageUrl = 'assets/images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding:UIHelper.getDefaultPadding(),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Constants.title,
                  style: Constants.getTitleTextStyle(),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/pokeball.png',
              width: ScreenUtil().orientation == Orientation.portrait
                  ? 0.2.sh
                  : 0.1.sw,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
