import 'package:flutter/material.dart';
import 'package:pixlit_store/ultils/constants/colors.dart';
import 'package:pixlit_store/ultils/device/device_utility.dart';
import 'package:pixlit_store/ultils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If You want to add the background color to tabs, you have to wrap them i a Material widget
  /// To do that we need [PreferredSized] widget and that's why created custom class
  const TTabBar(
      {super.key, required this.tabs, this.tabAlignment = TabAlignment.start});

  final List<Widget> tabs;
  final TabAlignment? tabAlignment;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabAlignment: tabAlignment,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
