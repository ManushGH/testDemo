import 'package:flutter/material.dart';

import 'custom_text.dart';

class TopBuyerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Someone'),
      subtitle: Text('some email'),
      trailing: CustomText(
        text: '\$ Date',
        color: Colors.green.shade800,
        weight: FontWeight.bold,
      ),
    );
  }
}
