import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ExternalHtml/blink_checkout_web/paytmBlinkCheckout.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void setAplicationVariables() {
    var _userNameValues = "N1shant";
    window.localStorage['userName'] = _userNameValues;
    window.sessionStorage['userName'] = _userNameValues;
    window.document.cookie =
        "userName=${_userNameValues}; expires=Thu, 18 Dec 2021 12:00:00 UTC";
  }

  @override
  void initState() {
    super.initState();
    setAplicationVariables();
  } // TODO Go to razorPay.html in web folder and access the cookies/ session storage variable in it.

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaytmBlinkCheckoutWeb()));
            },
            child: Text("Pay")),
      ),
    );
  }
}
