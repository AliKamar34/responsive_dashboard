import 'package:flutter/material.dart';
import 'package:newrespoapp/widgets/custom_button.dart';
import 'package:newrespoapp/widgets/tite_text_feild.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFeild(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFeild(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details ',
                textColor: Color(0xff4db7f2),
                backGroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(title: 'Send Money '),
            ),
          ],
        ),
      ],
    );
  }
}
