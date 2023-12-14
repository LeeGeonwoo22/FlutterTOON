import 'package:flutter/material.dart';
import 'package:toonfix/widgets/button.dart';
import 'package:toonfix/widgets/currency_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF181818),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hey, GeonWoo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Total Balance',
              style: TextStyle(
                  fontSize: 22, color: Color.fromRGBO(255, 255, 255, 0.8)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '\$5 194 472',
              style: TextStyle(fontSize: 48, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                    text: 'Transfer',
                    bgColor: Color(0xFFF1B33B),
                    textColor: Colors.black),
                Button(
                    text: 'Request',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallets',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(255, 255, 255, 0.8)),
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            CurrencyCard(
                offset: Offset(0, 0),
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro_rounded,
                isInverted: false),
            CurrencyCard(
              offset: Offset(0, -20),
              name: 'Dollar',
              code: 'USD',
              amount: '428',
              icon: Icons.attach_money_outlined,
              isInverted: true,
            ),
            CurrencyCard(
              offset: Offset(0, -40),
              name: 'BitCoin',
              code: 'BTC',
              amount: '9 785',
              icon: Icons.currency_bitcoin,
              isInverted: false,
            ),
          ],
        ),
      )),
    );
  }
}
