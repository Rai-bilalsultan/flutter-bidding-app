import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BiddingPage(),
    );
  }
}

class BiddingPage extends StatelessWidget {
  const BiddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bidding Page')),
      body: const Center(
        child: MaximumBid(),
      ),
      backgroundColor: Colors.blueGrey[100], // Set background color
    );
  }
}

class MaximumBid extends StatefulWidget {
  const MaximumBid({Key? key}) : super(key: key);

  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 100;

  void _increaseBid() => setState(() => _currentBid += 50);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Current Maximum Bid: \$$_currentBid',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _increaseBid,
          child: const Text('Increase Bid'),
        ),
      ],
    );
  }
}
