import 'dart:math';

import 'package:bank_card_animation/screens/payments_page.dart';
import 'package:bank_card_animation/widgets/bank_card.dart';
import 'package:flutter/material.dart';

class SelectCardPage extends StatefulWidget {
  const SelectCardPage({Key? key}) : super(key: key);

  @override
  State<SelectCardPage> createState() => _SelectCardPageState();
}

class _SelectCardPageState extends State<SelectCardPage>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentsPage()));
                },
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Hero(tag: 'card',
                  child: BankCard()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
