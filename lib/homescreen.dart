import 'package:flutter/material.dart';
import 'package:gtbank/dashboard.dart';
import 'package:mk_drop_down_menu/mk_drop_down_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xff434A54),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mail_outline_sharp),
                        iconSize: 40,
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/gtblogo.png'),
                                    fit: BoxFit.fill),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            'Guarantee Trust Bank Plc',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 200),
                  Container(
                    //height: 30,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 50,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/nigflag.jpg'),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(width: 3),
                            const Text(
                              'Nigeria',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.unfold_more_sharp,
                                  color: Colors.black,
                                ),
                                iconSize: 20),
                          ],
                        ),
                        const Text(
                          'Mobile Banking',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                  TextFormField(
                    autofocus: false,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                        hintText: 'Internet Banking ID',
                        hintStyle: TextStyle(color: Colors.white30),
                        fillColor: Color(0xff30383F),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff30383F),
                          width: 2.0,
                        ))),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    autofocus: false,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 30,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white30),
                        suffixIcon: Icon(
                          Icons.fingerprint,
                          color: Colors.white,
                          size: 30,
                        ),
                        fillColor: Color(0xff30383F),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xff30383F),
                          width: 2.0,
                        ))),
                  ),
                  const SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Dashboard()));
                    },
                    height: 50,
                    minWidth: double.infinity,
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    color: const Color(0xffE24412),
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Sign Up',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Forgot User ID/Password',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Get Help',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.expand_more_outlined),
                        color: Colors.black,
                        iconSize: 30,
                      ),
                      const Text('Tap here to switch to',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      TextButton(
                        onPressed: () {},
                        child: const Text('mWallet',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 42,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.facebook),
                          color: Colors.blue,
                          iconSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
