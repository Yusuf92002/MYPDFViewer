import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class PdfView extends StatelessWidget {
  final String url;
  const PdfView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Pdf View'),),
      body: const PDF().cachedFromUrl(url,
          placeholder: (progress) => Center(
                child: Text('$progress'),
              ),
          errorWidget: (error) => Center(
                child: Text(
                  error.toString(),
                ),
              )),
    );
  }
}
