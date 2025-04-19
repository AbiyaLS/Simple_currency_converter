import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   double result = 0;
    TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("rebuild method running");
   

    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            result.toString(),
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          )),
          // ----------------------------------------TEXT FIELD----------------------------------
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: amountController,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(156, 234, 230, 230),
                hintText: "Enter the amount in INR",
                hintStyle: const TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
              style: const TextStyle(color: Colors.black),
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
            ),
          ),
          // ----------------------------------------BUTTON----------------------------------
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(amountController.text) * 85;
                  });
                  // result = double.parse(amountController.text) * 85;
                  // print(result);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Convert",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
