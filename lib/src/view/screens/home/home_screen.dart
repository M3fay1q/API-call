import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../helper/route_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 80, 80, 80),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteHelper.product);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return const Color.fromARGB(255, 42, 42, 42);
                    }
                    return null;
                  },
                ),
              ),
              child: const Text(
                'Products',
                style: TextStyle(fontSize: 24),
              ),
            ),
            // child: ElevatedButton(

            //   child: Text("BRAND"),
            //   onPressed: () {
            //     Get.toNamed(RouteHelper.list);
            //   },
            // ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteHelper.description);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return const Color.fromARGB(255, 42, 42, 42);
                    }
                    return null;
                  },
                ),
              ),
              child: const Text(
                'Descriptions',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteHelper.price);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return const Color.fromARGB(255, 42, 42, 42);
                    }
                    return null;
                  },
                ),
              ),
              child: const Text(
                'Prices',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteHelper.rating);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return const Color.fromARGB(255, 42, 42, 42);
                    }
                    return null;
                  },
                ),
              ),
              child: const Text(
                'Ratings',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
