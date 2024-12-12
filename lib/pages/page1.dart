import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_go_flutter/project/routes/app_route_constant.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page1"),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(
                    AppRoutesConstants.page2Route,
                    pathParameters: {'userName': 'usman'},
                  );
                },
                child: const Text("move to page2"))
          ],
        ),
      ),
    );
  }
}
