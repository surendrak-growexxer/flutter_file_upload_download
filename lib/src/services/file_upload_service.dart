// lib/file_upload_download/services/file_download_service.dart
import 'package:firebase_storage/firebase_storage.dart';

class FileDownloadService {
  final FirebaseStorage storage = FirebaseStorage.instance;

  Future<String?> downloadFile(String fileName) async {
    try {
      final ref = storage.ref().child('uploads/$fileName');
      final String downloadUrl = await ref.getDownloadURL();
      print("File download URL: $downloadUrl");
      return downloadUrl;
    } catch (e) {
      print("Error downloading file: $e");
      return null;
    }
  }
}