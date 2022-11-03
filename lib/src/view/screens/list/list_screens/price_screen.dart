import 'package:api_demo/src/view/screens/list/list_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PriceScreen extends StatelessWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ListController listController = Get.put(ListController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Price Screen'),
      ),
      body: GetBuilder(
        init: listController,
        builder: (controller) {
          return ListData(controller: listController);
        },
      ),
    );
  }
}

class ListData extends StatelessWidget {
  final ListController controller;
  const ListData({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.res.products?.length,
        itemBuilder: (context, index) {
          var item = controller.res.products?[index];
          return Text('${item!.title} - ${item.price}');
        });
  }
}
