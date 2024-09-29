import 'package:flutter/material.dart';

enum ImagePickerOrigin {
  camera('Câmera',Colors.green, Icon(Icons.camera_alt, color: Colors.white)),
  gallery('Galeria',Colors.blue ,Icon(Icons.photo_library, color: Colors.white)),
  files('Arquivos',Colors.orange ,Icon(Icons.folder, color: Colors.white));

  final String label;
  final MaterialColor backgroundColor;
  final Icon icon;

  const ImagePickerOrigin(this.label, this.backgroundColor, this.icon);
}
