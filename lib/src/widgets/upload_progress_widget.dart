import 'package:flutter/material.dart';

class UploadProgressWidget extends StatelessWidget {
  final String fileName;
  final double progress;

  const UploadProgressWidget({super.key, 
    required this.fileName,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Uploading $fileName"),
        LinearProgressIndicator(value: progress),
      ],
    );
  }
}