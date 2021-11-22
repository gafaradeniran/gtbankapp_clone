import 'package:flutter/material.dart';
import 'package:gtbank/airtime.dart';
import 'package:gtbank/dashboard.dart';
import 'package:gtbank/loans.dart';
import 'package:gtbank/paymentoption_model.dart';
import 'package:gtbank/services.dart';
import 'package:gtbank/transfers.dart';

import 'homescreen.dart';
import 'money.dart';

class Payments extends StatelessWidget {
  const Payments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfffc15821),
        title: const Text(
          'Other Payments',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Color(0xff343338)),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 110,
                child: const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff343338),
                  ),
                  accountName: Text('ADENIRAN G. O',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  accountEmail: Text('last seen: 24th Dec 2021',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              ListTile(
                title: const Text('Accounts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: const Icon(Icons.account_balance_wallet_outlined,
                    color: Color(0xff6B3C2C)),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Dashboard()));
                },
              ),
              ListTile(
                title: const Text('Transfers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: const Icon(Icons.forward, color: Color(0xff6B3C2C)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Transfers()));
                },
              ),
              ListTile(
                title: const Text('Make Money',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: const Icon(Icons.attach_money_outlined,
                    color: Color(0xff6B3C2C)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const MakeMoney()));
                },
              ),
              ListTile(
                title: const Text('Quick Loans',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: const Icon(Icons.account_balance_wallet_outlined,
                    color: Color(0xff6B3C2C)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const QuickLoans()));
                },
              ),
              ListTile(
                title: const Text('Airtime & Data',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: const Icon(Icons.account_balance_wallet_outlined,
                    color: Color(0xff6B3C2C)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Airtime()));
                },
              ),
              ListTile(
                title: const Text('Bill Payments',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: const Icon(Icons.account_balance_wallet_outlined,
                    color: Color(0xff6B3C2C)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('My Services',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: const Icon(Icons.account_balance_wallet_outlined,
                    color: Color(0xff6B3C2C)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Services()));
                },
              ),
              ListTile(
                title: const Text('Rate Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: const Icon(Icons.account_balance_wallet_outlined,
                    color: Color(0xff6B3C2C)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 100),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const MyHomePage()));
                    },
                    icon: const Icon(Icons.logout, color: Colors.white),
                    label: const Text('Logout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                    style: ButtonStyle(backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Color(0xffffffff);
                        return Color(0xfffc15821);
                      },
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 0.0,
        children: List.generate(paymentOptions.length, (index) {
          return Center(
            child: SelectCard(options: paymentOptions[index]),
          );
        }),
      ),
    );
  }

  Widget SelectCard({required Options options}) {
    return Card(
      color: const Color(0xEFFFFFFF),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              options.icon,
              size: 50,
              color: const Color(0xFFFC15821),
            ),
            Text(options.title),
          ],
        ),
      ),
    );
  }
}
