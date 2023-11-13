import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kartal/kartal.dart';

class OrLoginText extends StatelessWidget {
  const OrLoginText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 1, // Çizgi yüksekliği
            color: Colors.grey, // Sağ çizgi rengi
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.all(8.0), // Metin ile çizgi arasındaki boşluk
          child: Text(
            'veya şununla giriş yap',
            style: context.general.textTheme.bodyMedium?.copyWith(
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 1, // Çizgi yüksekliği
            color: Colors.grey, // Sol çizgi rengi
          ),
        ),
      ],
    );
  }
}
