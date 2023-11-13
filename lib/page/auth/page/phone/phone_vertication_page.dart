import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'dart:async';

import 'package:stolk_/page/main/main_page.dart';

class SMSVerificationScreen extends StatefulWidget {
  const SMSVerificationScreen({super.key});

  @override
  _SMSVerificationScreenState createState() => _SMSVerificationScreenState();
}

class _SMSVerificationScreenState extends State<SMSVerificationScreen> {
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  final List<TextEditingController> _codeControllers =
      List.generate(6, (index) => TextEditingController());

  int _counter = 180; // Başlangıç süresi 3 dakika (180 saniye)
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
          // Geri sayım tamamlandığında burada istediğiniz işlemi yapabilirsiniz.
        }
      });
    });
  }

  void _onTextChanged(String newValue, int index) {
    if (newValue.isNotEmpty) {
      if (index < 5) {
        _codeControllers[index].text = newValue;
        _focusNodes[index + 1].requestFocus();
      } else {
        _codeControllers[index].text = newValue;
        // Do something with the verification code (e.g., submit it for validation).
      }
    } else if (index > 0) {
      // If the current field is empty and not the first field, clear the previous field
      _codeControllers[index].clear();
      _focusNodes[index - 1].requestFocus();
    }
  }

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    _timer.cancel();
    super.dispose();
  }

  String _formatDuration(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _timer.cancel();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListView(
          children: <Widget>[
            Text(
              "Sms Onay Kodu",
              style: context.general.textTheme.bodyLarge
                  ?.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: context.general.mediaSize.height * 0.01,
            ),
            Text(
              "Telefonunuza gelen 6 haneli sms kodunu girin",
              style:
                  context.general.textTheme.bodyMedium?.copyWith(fontSize: 14),
            ),
            SizedBox(
              height: context.general.mediaSize.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 45.0,
                  height: 54,
                  child: TextField(
                    style: TextStyle(
                        color: context.general.colorScheme.onSecondary),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                    ],
                    controller: _codeControllers[index],
                    focusNode: _focusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onChanged: (value) => _onTextChanged(value, index),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        fillColor: const Color.fromRGBO(237, 239, 240, 1)),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Text(
                  _formatDuration(_counter),
                  style: context.general.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Kodu Tekrar Gönder",
                      style: context.general.textTheme.bodyLarge?.copyWith(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    )),
                GestureDetector(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                      (route) => false),
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(237, 239, 240, 1),
                        borderRadius: context.border.lowBorderRadius),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: context.general.colorScheme.onSecondary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
