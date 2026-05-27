import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const CustomAppBar({super.key, this.title});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // this wil tell the scaffold this widget is supposed to be app bar
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      title: Text(title ?? "Smart Habit Tracker"),
      centerTitle: true,
      leading: Container(
        decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        child: IconButton(
          icon: const Icon(Icons.check, size: 20, color: Colors.white),
          onPressed: () => debugPrint("Leading icon tapped"),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            debugPrint("Settings tapped");
          },
        ),
      ],
    );
  }
}
