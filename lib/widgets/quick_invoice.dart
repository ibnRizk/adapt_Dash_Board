import 'package:dash_board/widgets/latest_transction.dart';
import 'package:dash_board/widgets/latest_transction_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
        ],
      ),
    );
  }
}
