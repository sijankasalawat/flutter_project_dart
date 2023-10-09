import 'package:flutter/material.dart';

class ArthemeticView extends StatefulWidget {
  const ArthemeticView({super.key});

  @override
  State<ArthemeticView> createState() => _AtithmeticViewState();
}

class _AtithmeticViewState extends State<ArthemeticView> {
  final key = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  add() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);

    // ignore: unused_local_variable
    int result = first + second;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  controller: firstController,
                  decoration: const InputDecoration(
                    labelText: 'First Number',
                  ),
                ),
                TextFormField(
                  controller: secondController,
                  decoration: const InputDecoration(
                    labelText: 'Second Number',
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        add();
                      }
                    },
                    child: const Text('Addition'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Subtraction'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Multiplication'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Division'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
