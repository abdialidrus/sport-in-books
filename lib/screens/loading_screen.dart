import 'package:flutter/material.dart';
import 'package:sport_in_books/screens/landing_screen.dart';
import 'package:sport_in_books/widgets/app_background.dart';
import 'package:sport_in_books/screens/menu_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  static const routeName = '/';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TAppBackground(
        child: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: const [
            LandingScreen(),
            MenuScreen(),
          ],
        ),
      ),
    );
  }
}
