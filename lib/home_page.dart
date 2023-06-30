import 'package:calculadoraimc/setState/imc_setstate_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToPage(context, const ImcSetstatePage()),
              child: const Text('setState'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, const ImcSetstatePage()),
              child: const Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, const ImcSetstatePage()),
              child: const Text('ChangeNotifier'),
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, const ImcSetstatePage()),
              child: const Text('Streams (Bloc Pattern)'),
            ),
          ],
        ),
      ),
    );
  }
}
