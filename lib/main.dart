// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todolist/colors.dart';
import 'package:todolist/configs/assets.gen.dart';
import 'package:todolist/configs/fonts.gen.dart';
import 'package:todolist/home/home_page.dart';
import 'package:todolist/inbox/inbox.dart';
import 'package:todolist/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: AppColors.primary,
              ),
              dividerTheme: const DividerThemeData(
                thickness: 0.5,
                color: Color(0xFFE0E5ED),
              ),
              inputDecorationTheme: InputDecorationTheme(
                  hintStyle: AppStyles.style416.copyWith(
                    color: AppColors.greyA9B,
                  ),
                  contentPadding: REdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  )),
              useMaterial3: false,
              fontFamily: FontFamily.sfprodisplay,
            ),
            debugShowCheckedModeBanner: false,
            home: const RootPage(),
          );
        });
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const InboxWidget(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primary,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Assets.home.svg(),
            activeIcon: Assets.home.svg(
              color: AppColors.primary,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Assets.directInbox.svg(),
            activeIcon: Assets.directInbox.svg(
              color: AppColors.primary,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Assets.calendar.svg(),
            activeIcon: Assets.calendar.svg(
              color: AppColors.primary,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Assets.category.svg(),
            activeIcon: Assets.category.svg(
              color: AppColors.primary,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Assets.paperPlus.svg(),
            activeIcon: Assets.paperPlus.svg(
              color: AppColors.primary,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
