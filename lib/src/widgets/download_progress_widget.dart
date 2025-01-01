// lib/file_upload_download/widgets/download_progress_widget.dart
import 'package:flutter/material.dart';

class DownloadProgressWidget extends StatelessWidget {
  final String fileName;
  final double progress;

  DownloadProgressWidget({
    required this.fileName,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Downloading $fileName"),
        LinearProgressIndicator(value: progress),
      ],
    );
  }
}