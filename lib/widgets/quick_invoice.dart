import 'package:dash_board/widgets/latest_transction.dart';
import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),

          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
