// lib/file_upload_download/file_manager.dart
import 'models/file_model.dart';

class FileManager {
  // You can store file metadata locally (e.g., in SharedPreferences, SQLite, etc.)
  List<FileModel> fileList = [];

  void addFile(FileModel file) {
    fileList.add(file);
  }

  List<FileModel> getFiles() {
    return fileList;
  }
}