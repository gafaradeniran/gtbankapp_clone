import 'package:flutter/material.dart';
import 'package:gtbank/airtime.dart';
import 'package:gtbank/homescreen.dart';
import 'package:gtbank/loans.dart';
import 'package:gtbank/payments.dart';
import 'package:gtbank/services.dart';
import 'package:gtbank/transfers.dart';
import 'dashboard.dart';

class MakeMoney extends StatelessWidget {
  const MakeMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfffc15821),
        title: const Text(
          'Make Money',
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
                  Navigator.pop(context);
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
              const SizedBox(height: 120),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MyHomePage()));
                  },
                  icon: const Icon(Icons.logout, color: Colors.white),
                  label: const Text('Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Color(0xffffffff);
                      return const Color(
                          0xffc15821); // Use the component's default.
                    },
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 160,
                width: 320,
                decoration: BoxDecoration(
                  color: const Color(0xfffc15821),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 12.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/gtblogo.png'),
                        radius: 30,
                      ),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          children: const [
                            Text(
                              'Make money by:',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '1. selling airtime 2% comiision',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '2. Transfer to other banks at N10',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Terms and Conditions (per month):',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '1. Minimum worth of N10000 \nAirtime/Data',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Divider(color: Colors.grey),
            transferTiles(
              leading_icons: Icon(Icons.transfer_within_a_station),
              itemTitle: 'Transfer',
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60.0),
              child: Divider(color: Colors.grey),
            ),
            transferTiles(
              leading_icons: Icon(Icons.request_page),
              itemTitle: 'Airtime/Data Request',
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60.0),
              child: Divider(color: Colors.grey),
            ),
            transferTiles(
              leading_icons: Icon(Icons.request_page),
              itemTitle: 'Bills Payment',
            ),
            Divider(color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget transferTiles({String? itemTitle, Icon? leading_icons}) {
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(10, 0, 8, 0),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Color(0xfffc15821),
        ),
        child: IconButton(
          onPressed: () {},
          icon: leading_icons!,
          color: Colors.white,
          iconSize: 22,
        ),
      ),
      title: Text(
        itemTitle!,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 14,
        ),
      ),
      trailing: const Icon(
        Icons.navigate_next,
        color: Colors.grey,
        size: 30,
      ),
    );
  }
}
