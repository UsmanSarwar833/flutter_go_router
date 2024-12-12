import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_go_flutter/project/routes/app_route_constant.dart';

class Page2 extends StatefulWidget {
  final String userName;
  const Page2({super.key, required this.userName,});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page2"),
        centerTitle: true,
        leading: GestureDetector(
              onTap: (){
                GoRouter.of(context).pop();
              },
            child: const Icon(Icons.arrow_back)),

      ),

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){
              GoRouter.of(context).pushNamed(AppRoutesConstants.page3Route);
            }, child:  Text("${widget.userName} move to page3"))
          ],
        ),
      ),
    );
  }
}

