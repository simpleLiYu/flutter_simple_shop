import 'dart:convert';

import 'package:demo1/modals/index/index_category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider with ChangeNotifier{

  IndexCategoryConfig indexCategoryConfig;


  // 加载app配置文件,可以设置本地或者从远程加载
  Future<void> loadAppConfig()async{
    String path = "lib/config/index_config.json";// 首页 - 分类
    String indexCategoryJson = await rootBundle.loadString(path);
    print("加载首页[分类]配置文件:$indexCategoryJson");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(indexCategoryJson.isNotEmpty){
      prefs.setString("index_category_config", indexCategoryJson);
    }
    try{
        IndexCategoryConfig indexCategoryConfig = IndexCategoryConfig.fromJson(json.decode(indexCategoryJson));
        this.indexCategoryConfig = indexCategoryConfig;
    }catch(e,s){
        print(e);
        print(s);
    }
    notifyListeners();
  }

}