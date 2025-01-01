// lib/file_upload_download/services/file_upload_service.dart
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class FileUploadService {
  final FirebaseStorage storage = FirebaseStorage.instance;
  final ImagePicker _picker = ImagePicker();

  Future<String?> uploadFile(File file) async {
    try {
      final fileName = file.uri.pathSegments.last;
      final ref = storage.ref().child('uploads/$fileName');
      final uploadTask = ref.putFile(file);

      // Monitor upload progress
      await uploadTask.whenComplete(() async {
        final downloadUrl = await ref.getDownloadURL();
        print("File uploaded successfully: $downloadUrl");
        return downloadUrl;
      });
    } catch (e) {
      print("Error uploading file: $e");
      return null;
    }
  }

  Future<XFile?> pickFile() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }
}