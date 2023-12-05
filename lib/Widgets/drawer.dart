import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/text_style.dart';
import 'package:bmi_calculator/generated/l10n.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: DrawerHeader(
              decoration: BoxDecoration(color: MyColors.myBlue),
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          ListTile(
            onTap: () {
              toggleLanguage(context);
            },
            leading: Icon(Icons.language, color: MyColors.myBlue),
            title: Text(S.of(context).Change_lang, style: TextStyles.headLine2),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.dark_mode, color: MyColors.myBlue),
            title: Text(S.of(context).Dark_Mode, style: TextStyles.headLine2),
          ),
        ],
      ),
    );
  }

  void toggleLanguage(BuildContext context) {
    String currentLocale = Intl.getCurrentLocale();
    Locale newLocale =
        currentLocale == 'ar' ? const Locale('en') : const Locale('ar');
    MyApp.setLocale(context, newLocale);
    TextStyles.currentLan(context, newLocale);
  }
}
