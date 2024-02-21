import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sport_in_books/controller/audio_controller.dart';
import 'package:sport_in_books/widgets/circle_icon_container.dart';
import 'package:sport_in_books/widgets/menu_item.dart';
import 'package:sport_in_books/widgets/page_header_image.dart';
import 'package:sport_in_books/screens/my_top_list_screen.dart';
import 'package:sport_in_books/screens/top_sport_books_screen.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  static const routeName = '/menu';

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final audioController = AudioController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const PageHeaderImage(
                imagePath: TImages.imageHeaderSportInBooks,
                size: HeaderSize.medium,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TMenuItem(
                    menuTitle: "My top list",
                    menuIconPath: TImages.iconHeartSelected,
                    onTap: () => Navigator.of(context)
                        .pushNamed(MyTopListScreen.routeName),
                  ),
                  const SizedBox(height: 25),
                  TMenuItem(
                    menuTitle: "Top sport books",
                    menuIconPath: TImages.iconBook,
                    onTap: () => Navigator.of(context)
                        .pushNamed(TopSportBooksScreen.routeName),
                  ),
                ],
              ),
              Obx(
                () => CircleIconContainer(
                  iconPath: audioController.isPlaying.value
                      ? TImages.iconSoundOn
                      : TImages.iconSoundOff,
                  width: 20,
                  height: 20,
                  onTap: () => audioController.playOrPause(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
