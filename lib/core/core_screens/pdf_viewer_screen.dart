import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../core/constants/color_const.dart';
import '../../core/constants/dimensions.dart';

class PdfViewerScreen extends StatefulWidget {
  final String filePath;

  const PdfViewerScreen(this.filePath, {super.key});

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  String pdfPath = "";
  var controller;

  @override
  void initState() {
    if (widget.filePath.contains('http')) {
      controller = SfPdfViewer.network(widget.filePath);
    } else {
      controller = SfPdfViewer.file(File(widget.filePath));
    }
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConst.whiteColor,
          leading: IconButton(
            padding: EdgeInsets.only(left: Dimensions.w11),
            icon: const Icon(Icons.arrow_back_ios),
            color: ColorConst.blackColor,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(''),
        ),
        body: controller);
  }
}
