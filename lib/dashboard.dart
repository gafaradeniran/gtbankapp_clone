import 'package:flutter/material.dart';
import 'package:gtbank/airtime.dart';
import 'package:gtbank/loans.dart';
import 'package:gtbank/payments.dart';
import 'package:gtbank/services.dart';
import 'package:gtbank/transfers.dart';
import 'homescreen.dart';
import 'money.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  get navigator => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xfffc15821),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 12.0, 10.0),
              child: Container(
                //height: 25,
                width: 70,
                child: const Center(
                  child: Text(
                    '< 1 of 4 >',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xffffffff),
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
                    Navigator.pop(context);
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Payments()));
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
                const SizedBox(height: 80),
                SizedBox(
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
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xffffffff);
                        }
                        return const Color(
                            0xfffc15821); // Use the component's default.
                      },
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xfffc15821),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 30.0, 12.0, 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'CURRENT ACCOUNT',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: const [
                            Text(
                              'Account Balance',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              'N5,000.16',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  letterSpacing: 2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 3),
              FittedBox(
                child: Row(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    MaterialButton(
                      elevation: 1,
                      onPressed: () {},
                      child: Text(
                        'History',
                        style: TextStyle(
                          color: Colors.red.shade200,
                        ),
                      ),
                      color: Color(0xfffc15821),
                      minWidth: MediaQuery.of(context).size.width / 3,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.red.shade300,
                        ),
                      ),
                      color: Colors.white,
                      highlightColor: Color(0xfffc15821),
                      minWidth: MediaQuery.of(context).size.width / 3,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Range',
                        style: TextStyle(
                          color: Colors.red.shade300,
                        ),
                      ),
                      color: Colors.white,
                      highlightColor: Color(0xfffc15821),
                      minWidth: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
              ),
              DateContainer('11TH DEC 2014'),
              TransactionDetails(
                  'Adeniran G. O', 1000.40, 'Transfer from Goodluck Jonathan'),
              DateContainer('16TH DEC 2014'),
              TransactionDetails('Babatunde G. S', 6000.56,
                  'Transfer from customer desc for payments Shade Ade...'),
              DateContainer('11TH JAN 2021'),
              TransactionDetails(
                  'Johnson Friday', 1000.40, 'Transfer from Goodluck Jonathan'),
              DateContainer('11TH DEC 2014'),
              TransactionDetails(
                  'Morgan Freeman', 1000.40, 'Transfer from Goodluck Jonathan'),
              DateContainer('11TH DEC 2014'),
              TransactionDetails(
                  'Henry Bossman', 1000.40, 'Transfer from Goodluck Jonathan'),
              DateContainer('11TH DEC 2014'),
              TransactionDetails('Arowolo Olusegun', 1000.40,
                  'Transfer from Goodluck Jonathan'),
            ],
          ),
        ),
      ),
    );
  }

  Widget DateContainer(String dateText) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            '$dateText',
            style: TextStyle(
              color: Colors.black45,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }

  Widget TransactionDetails(String _name, double _amount, String _message) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
            top: BorderSide(width: 1, color: Colors.black26),
            bottom: BorderSide(width: 1, color: Colors.black26)),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
        child: Wrap(
          alignment: WrapAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$_name',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      '$_amount',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ],
                ),
                Text(
                  '$_message',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
