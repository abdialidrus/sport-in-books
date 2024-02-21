import 'package:just_audio/just_audio.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class AudioController extends GetxController {
  static AudioController get instance => Get.find();

  final AudioPlayer justAudioPlayer = AudioPlayer();

  final String audioPath = 'assets/audio/sportinbooks.wav';
  final isPlaying = true.obs;

  @override
  void onInit() {
    justAudioPlayer.setAsset(audioPath);

    play();
    super.onInit();
  }

  @override
  void onClose() {
    justAudioPlayer.dispose();
    super.onClose();
  }

  Future<void> playOrPause() async {
    if (isPlaying.value) {
      pause();
      isPlaying.value = false;
    } else {
      isPlaying.value = true;
      play();
    }
  }

  Future<void> play() async {
    if (isPlaying.value) {
      justAudioPlayer.play();
    }
  }

  Future<void> pause() async {
    justAudioPlayer.pause();
  }
}
