import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../custom_paint/progress_border_custom_paint.dart';

class FileUploadCardWidget extends StatelessWidget {
  final double progress;
  final VoidCallback? onTap;
  final String title;
  final String subtitle;
  final AnimationController? controller;

  const FileUploadCardWidget({
    super.key,
    required this.progress,
    this.onTap,
    required this.title,
    required this.subtitle,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(
              color: Colors.purple.withValues(alpha: 0.3),
              strokeAlign: 2,
            ),
          ),
          shadowColor: Colors.purple,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 24),
                      Lottie.asset(
                        'assets/lottie/searching.json',
                        package: 'assets',
                        height: 80,
                        controller: controller,
                      ),
                      SizedBox(height: 16),

                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'AktivGrotesk',
                          package: 'assets',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'AktivGrotesk',
                          package: 'assets',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                child: CustomPaint(
                  painter: ProgressBorderPainter(
                    progress: progress,
                    color: Colors.purple,
                    strokeWidth: 4.0,
                    radius: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
