import 'package:calculadoraimc/bloc_pattern/imc_bloc_pattern_page.dart';
import 'package:calculadoraimc/change_notifier/imc_change_notifier_page.dart';
import 'package:calculadoraimc/setState/imc_setstate_page.dart';
import 'package:calculadoraimc/value_notifier/value_notifier_page.dart';
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
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, const ValueNotifierPage()),
              child: const Text('ValueNotifier'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () =>
                  _goToPage(context, const ImcChangeNotifierPage()),
              child: const Text('ChangeNotifier'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => _goToPage(context, const BlocPatternPage()),
              child: const Text('Streams (Bloc Pattern)'),
            ),
          ],
        ),
      ),
    );
  }
}
