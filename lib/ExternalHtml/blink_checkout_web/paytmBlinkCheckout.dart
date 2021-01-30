import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UiFake.dart' if (dart.library.html) 'dart:ui' as ui;

class PaytmBlinkCheckoutWeb extends StatefulWidget {
  @override
  _PaytmBlinkCheckoutWebState createState() => _PaytmBlinkCheckoutWebState();
}

class _PaytmBlinkCheckoutWebState extends State<PaytmBlinkCheckoutWeb> {
  @override
  Widget build(BuildContext context) {
    //register view factory
    ui.platformViewRegistry.registerViewFactory("abc-html", (int viewId) {
      IFrameElement element = IFrameElement();

      window.onMessage.forEach((element) {});

      element.requestFullscreen();
      element.src = "razorPay.html";
      element.style.border = 'none';
      return element;
    });
    // Add wait before opening the payment page
    return Container(child: Builder(builder: (BuildContext context) {
      return Stack(
        children: [
          Scaffold(
            body: Center(child: Text("hsdjfgshdgfj")),
          ),
          HtmlElementView(viewType: 'abc-html')
        ],
      );
    }));
  }
}
