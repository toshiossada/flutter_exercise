import 'package:flutter/material.dart';

import 'widgets/controls_widget.dart';
import 'widgets/file_upload_cart_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: const Duration(seconds: 30, minutes: 1),
    vsync: this,
  );

  late final _lottieController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );
  var _progress = 0.0;
  final stopwatch = Stopwatch();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _progress = _controller.value;
      });

      if (_controller.isCompleted) {
        stopwatch.stop();
        _lottieController.stop();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _lottieController.dispose();
    super.dispose();
  }

  String get subtitleText {
    if (!stopwatch.isRunning && _progress == 0.0) {
      return "";
    }
    final minutes = stopwatch.elapsed.inMinutes;
    final seconds = stopwatch.elapsed.inSeconds % 60;
    return "${minutes}m ${seconds}s";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEBE8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FileUploadCardWidget(
              controller: _lottieController,
              title: "Loading File",
              subtitle: subtitleText,
              progress: _progress,
              onTap: () {
                _controller.forward(from: 0.0);
                _lottieController.repeat();
                stopwatch.reset();
                stopwatch.start();
              },
            ),
            const SizedBox(height: 50),

            ControlsWidget(
              progress: _progress,
              onChanged: (value) {
                setState(() {
                  _progress = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
