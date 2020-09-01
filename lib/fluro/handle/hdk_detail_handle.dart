
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../../pages/detail_page/hdk/index_home.dart';

var hdkDetailHandle = new Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    String goodsId = params["goodsId"]?.first;
    return HaoDanKuDetailItem(goodsId:goodsId);
  }
);