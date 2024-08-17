import 'package:flutter/material.dart';
import 'package:pharmacy_app/features/home/views/home_view.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView({super.key});

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          pageController.jumpToPage(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomeView(),
          Container(),
        ],
      ),
    );
  }
}
