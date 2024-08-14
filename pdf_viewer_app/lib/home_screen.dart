import 'package:flutter/material.dart';
import 'package:pdf_viewer_app/pdf_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PdfView(
                    url:
                        'https://cevappealkhulna.gov.bd/uploads/ex_bangladesh/eCommerce_Flutter_App_Documentation.pdf'),
              ),
            );
          },
          child: const Text('Open Pdf'),
        ),
      ),
    );
  }
}
