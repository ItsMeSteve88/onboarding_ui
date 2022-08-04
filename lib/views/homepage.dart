import 'package:flutter/material.dart';
import 'package:onboarding_ui/controllers/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Healthcare AIO'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: bgColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.home,
              size: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Welcome Home!",
              style: TextStyle(
                fontSize: 30,
                color: boxColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
