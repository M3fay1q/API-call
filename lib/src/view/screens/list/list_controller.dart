import 'dart:convert';

import 'package:api_demo/src/view/screens/list/list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListController extends GetxController {
  ListModel res = ListModel();

  @override
  void onInit() {
    callAPI();
    super.onInit();
  }

  void callAPI() async {
    String url = "https://dummyjson.com/products";
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    var jsonData = jsonDecode(response.body);
    res = ListModel.fromJson(jsonData);

    debugPrint("Test ${res.products?.length}");

    update();
  }
}
