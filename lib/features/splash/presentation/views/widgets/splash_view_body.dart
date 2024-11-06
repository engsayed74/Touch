import 'package:flutter/material.dart';
import 'package:touch_app/constants.dart';
import 'package:touch_app/core/services/shared_preference_singletone.dart';
import 'package:touch_app/features/auth/presentation/views/account_creation_view.dart';
import 'package:touch_app/features/auth/presentation/views/login_view.dart';
import 'package:touch_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:video_player/video_player.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/splash.mp4')
      ..initialize().then((_) {
        // Start the video when it's ready
        _controller.play();
        setState(() {}); // Refresh the UI when the video is loaded
      });

    _controller.addListener(() {
      if (_controller.value.position == _controller.value.duration) {
        excuteNavigation();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.grey.withOpacity(.2),
      child: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator(), // Display loading indicator until the video loads
      ),
    );
  }

  void excuteNavigation() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 2), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
