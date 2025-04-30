import 'package:flutter/cupertino.dart';

class CupertinoHomepage extends StatefulWidget {
  const CupertinoHomepage({super.key});

  @override
  State<CupertinoHomepage> createState() => _CupertinoHomepageState();
}

class _CupertinoHomepageState extends State<CupertinoHomepage> {
    double result = 0;
  TextEditingController amountController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(amountController.text) * 85;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(   
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.transparent,
        middle: Text(
          "Currency Converter",
          style: TextStyle(color: CupertinoColors.black, fontWeight: FontWeight.bold),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
           result % 1 ==0 ?result.toInt().toString() : result.toString(),
            style: TextStyle(
                fontSize: 30, color: CupertinoColors.white, fontWeight: FontWeight.bold),
          )),
          // --------------------------------------TextFIELD----------------------------------
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CupertinoTextField(
              controller: amountController, 

              style: const TextStyle(color: CupertinoColors.black),
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
            ),
          ),
          // ----------------------------------------BUTTON----------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: CupertinoButton(
                onPressed: () {
                  convert();
                },
               color: CupertinoColors.black,
               sizeStyle: CupertinoButtonSize.large,
                child: Text(
                  "Convert",
                  style: TextStyle(color: CupertinoColors.white),
                )),
          )
        ],
      ),
    );
  }
}