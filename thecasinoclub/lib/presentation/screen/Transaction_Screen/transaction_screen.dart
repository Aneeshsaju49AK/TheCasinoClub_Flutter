import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:thecasinoclub/presentation/screen/Widgets_Common/custom_page_heading.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
         PageHeadingCommon(
              width: width,
              height: height,
              textValue: "Transacation",
            ),
            Container(
              width: width/1,
              height: height/ 1.2,
              child: ListView.builder(itemBuilder: (context, index) {
                
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 1,
                  
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Date"),
                  
                            Text("10/28/24")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Amount"),
                            Text("200"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Transcation Status"),
                            Text("Success"),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}