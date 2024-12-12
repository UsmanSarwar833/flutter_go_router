import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page3"),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              GoRouter.of(context).pop();
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text("page3")),
          ],
        ),
      ),
    );
  }
}
