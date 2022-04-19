import 'package:flutter/material.dart';

import 'components/body.dart';

class UploadDocuments extends StatefulWidget {
  UploadDocuments({Key? key}) : super(key: key);

  @override
  State<UploadDocuments> createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Body()),
    );
  }
}
