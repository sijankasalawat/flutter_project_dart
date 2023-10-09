import 'package:flutter/material.dart';
import 'package:project1/app/routes/app_route.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.arthemeticRoute);
                  },
                  child: Text('Arithmetic'),
                ),
              ),
               SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoute.gameRoute);
                  },
                  child: Text('RandomNumber Game'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
