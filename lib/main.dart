import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_in_books/screens/book_detail_screen.dart';
import 'package:sport_in_books/screens/loading_screen.dart';
import 'package:sport_in_books/screens/menu_screen.dart';
import 'package:sport_in_books/screens/my_top_list_screen.dart';
import 'package:sport_in_books/screens/top_sport_books_screen.dart';
import 'package:sport_in_books/utils/theme/theme.dart';

import 'controller/audio_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final audioController = Get.put(AudioController());

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        audioController.play();
        break;
      case AppLifecycleState.paused:
        audioController.pause();
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport In Books',
      theme: TAppTheme.appTheme,
      initialRoute: LoadingScreen.routeName,
      routes: {
        LoadingScreen.routeName: (context) => const LoadingScreen(),
        MenuScreen.routeName: (context) => const MenuScreen(),
        TopSportBooksScreen.routeName: (context) => const TopSportBooksScreen(),
        BookDetailScreen.routeName: (context) => const BookDetailScreen(),
        MyTopListScreen.routeName: (context) => const MyTopListScreen(),
      },
    );
  }
}
