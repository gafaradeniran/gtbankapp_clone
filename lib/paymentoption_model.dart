import 'package:flutter/material.dart';

class Options {
  const Options({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

List<Options> paymentOptions = [
   const Options(
    title: 'Cable TV',
    icon: Icons.tv,
  ),
  const Options(
    title: 'Internet Service',
    icon: Icons.signal_wifi_connected_no_internet_4_outlined,
  ),
  const Options(
    title: 'School Payments',
    icon: Icons.school_sharp,
  ),
  const Options(
    title: 'Insurance',
    icon: Icons.car_repair_outlined,
  ),
  const Options(
    title: 'Visa Fee',
    icon: Icons.map,
  ),
  const Options(
    title: 'Utility',
    icon: Icons.work,
  ),
  const Options(
    title: 'Taxes and Levies',
    icon: Icons.local_laundry_service_sharp,
  ),
  const Options(
    title: 'Church Payments',
    icon: Icons.payment,
  ),
  const Options(
    title: 'Airtime Ticket Payment',
    icon: Icons.airplane_ticket,
  ),
  const Options(
    title: 'Remita',
    icon: Icons.payments,
  ),
  const Options(
    title: 'Distributor Payments',
    icon: Icons.shopping_cart,
  ),
  const Options(
    title: 'Pay Instantly',
    icon: Icons.payments_rounded,
  ),
  const Options(
    title: 'Payment History',
    icon: Icons.history,
  ),
];
