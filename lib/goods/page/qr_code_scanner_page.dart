import 'package:flutter/material.dart';
import 'package:flutter_deer/widgets/my_app_bar.dart';
import 'package:flutter_deer/routers/fluro_navigator.dart';

class QrCodeScannerPage extends StatelessWidget {
  const QrCodeScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: MyAppBar(
              backgroundColor: Colors.transparent,
              backImgColor: Colors.white,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.qr_code, size: 72, color: Colors.white),
                  const SizedBox(height: 16),
                  const Text(
                    '当前未启用扫码插件，已提供占位页面。',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      NavigatorUtils.goBackWithParams(context, '');
                    },
                    child: const Text('返回'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
