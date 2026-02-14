import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';
import 'package:perplexity_clone/widgets/side_bar_icon.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 65,
      decoration: BoxDecoration(color: AppColors.sideNav),
      child: Column(
        children: [
          Image.asset("assets/logo.png", scale: 5),
          SizedBox(height: 36),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(144, 25, 26, 26),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.add, color: AppColors.iconGrey),
                ),
                SizedBox(height: 18),
                SideBarIcon(icon: Icons.history, iconName: "History"),
                SizedBox(height: 18),
                SideBarIcon(
                  icon: Icons.library_books_outlined,
                  iconName: "Discover",
                ),
                SizedBox(height: 18),
                SideBarIcon(icon: Icons.space_dashboard, iconName: "Spaces"),
                SizedBox(height: 18),
                SideBarIcon(
                  icon: Icons.attach_money_sharp,
                  iconName: "Finance",
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(144, 25, 26, 26),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.account_circle,
                        color: AppColors.iconGrey,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text("Account",style: TextStyle(color: AppColors.iconGrey,fontSize: 12),),
                  ],
                ),
                SizedBox(height: 26),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
