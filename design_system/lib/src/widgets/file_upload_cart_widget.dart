import 'package:flutter/material.dart';

import '../custom_paint/progress_border_custom_paint.dart';

class FileUploadCardWidget extends StatelessWidget {
  final double progress;
  final VoidCallback? onTap;
  final String title;
  final String subtitle;

  const FileUploadCardWidget({
    super.key,
    required this.progress,
    this.onTap,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withValues(alpha: 0.3),
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 24),
                      Icon(
                        Icons.file_upload_outlined,
                        size: 48,
                        color: Colors.black87,
                      ),
                      SizedBox(height: 20),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        subtitle,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
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
