// lib/file_upload_download/models/file_model.dart
class FileModel {
  final String fileName;
  final String filePath;
  final String? downloadUrl;
  final int? fileSize;

  FileModel({
    required this.fileName,
    required this.filePath,
    this.downloadUrl,
    this.fileSize,
  });
}