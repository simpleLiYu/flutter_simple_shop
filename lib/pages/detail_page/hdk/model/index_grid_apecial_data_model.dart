import 'dart:convert' show json;

T asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}


class IndexGridSpecialDataModel {
  IndexGridSpecialDataModel({
    this.bottomThree,
    this.bottomFour,
    this.bottomOne,
    this.leftTopOne,
    this.rightTopOne,
    this.bottomTwo,
  });


  factory IndexGridSpecialDataModel.fromJson(Map<String, dynamic> jsonRes)=>jsonRes == null? null:IndexGridSpecialDataModel(    bottomThree : BottomThree.fromJson(asT<Map<String, dynamic>>(jsonRes['bottomThree'])),
    bottomFour : BottomFour.fromJson(asT<Map<String, dynamic>>(jsonRes['bottomFour'])),
    bottomOne : BottomOne.fromJson(asT<Map<String, dynamic>>(jsonRes['bottomOne'])),
    leftTopOne : LeftTopOne.fromJson(asT<Map<String, dynamic>>(jsonRes['leftTopOne'])),
    rightTopOne : RightTopOne.fromJson(asT<Map<String, dynamic>>(jsonRes['rightTopOne'])),
    bottomTwo : BottomTwo.fromJson(asT<Map<String, dynamic>>(jsonRes['bottomTwo'])),
  );

  BottomThree bottomThree;
  BottomFour bottomFour;
  BottomOne bottomOne;
  LeftTopOne leftTopOne;
  RightTopOne rightTopOne;
  BottomTwo bottomTwo;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'bottomThree': bottomThree,
    'bottomFour': bottomFour,
    'bottomOne': bottomOne,
    'leftTopOne': leftTopOne,
    'rightTopOne': rightTopOne,
    'bottomTwo': bottomTwo,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}
class BottomThree {
  BottomThree({
    this.tag,
    this.router,
    this.tagtextColor,
    this.tagBgColor,
    this.goods,
    this.title,
  });


  factory BottomThree.fromJson(Map<String, dynamic> jsonRes){ if(jsonRes == null){return null;}
  final List<GoodsInfo> goods = jsonRes['goods'] is List ? <GoodsInfo>[]: null;
  if(goods!=null) {
    for (final dynamic item in jsonRes['goods']) { if (item != null) { goods.add(GoodsInfo.fromJson(asT<Map<String,dynamic>>(item)));  } }
  }


  return BottomThree(tag : asT<String>(jsonRes['tag']),
    router : asT<String>(jsonRes['router']),
    tagtextColor : asT<String>(jsonRes['tagtextColor']),
    tagBgColor : asT<String>(jsonRes['tagBgColor']),
    goods:goods,
    title : asT<String>(jsonRes['title']),
  );}

  String tag;
  String router;
  String tagtextColor;
  String tagBgColor;
  List<GoodsInfo> goods;
  String title;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'tag': tag,
    'router': router,
    'tagtextColor': tagtextColor,
    'tagBgColor': tagBgColor,
    'goods': goods,
    'title': title,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}
class GoodsInfo {
  GoodsInfo({
    this.userid,
    this.productId,
    this.itemid,
    this.itemtitle,
    this.itemdesc,
    this.itemprice,
    this.sellerId,
    this.isLive,
    this.couponnum,
    this.isquality,
    this.sellerName,
    this.shopname,
    this.cuntao,
    this.activityid,
    this.originalImg,
    this.couponexplain,
    this.deposit,
    this.activityType,
    this.dxRates,
    this.isExplosion,
    this.itempicCopy,
    this.itemsale2,
    this.couponsurplus,
    this.sellernick,
    this.sonCategory,
    this.fqcat,
    this.itemendprice,
    this.taobaoImage,
    this.tktype,
    this.isBrand,
    this.downType,
    this.couponurl,
    this.me,
    this.tkurl,
    this.endTime,
    this.couponmoney,
    this.isShipping,
    this.todaysale,
    this.couponreceive,
    this.startTime,
    this.discount,
    this.videoid,
    this.guideArticle,
    this.tkmoney,
    this.starttime,
    this.shopid,
    this.shoptype,
    this.onlineUsers,
    this.planlink,
    this.reportStatus,
    this.itemsale,
    this.itempic,
    this.tkrates,
    this.couponendtime,
    this.generalIndex,
    this.itemshorttitle,
    this.couponreceive2,
    this.todaycouponreceive,
    this.couponstarttime,
    this.couponCondition,
    this.originalArticle,
    this.depositDeduct,
  });


  factory GoodsInfo.fromJson(Map<String, dynamic> jsonRes)=>jsonRes == null? null:GoodsInfo(userid : asT<String>(jsonRes['userid']),
    productId : asT<String>(jsonRes['product_id']),
    itemid : asT<String>(jsonRes['itemid']),
    itemtitle : asT<String>(jsonRes['itemtitle']),
    itemdesc : asT<String>(jsonRes['itemdesc']),
    itemprice : asT<String>(jsonRes['itemprice']),
    sellerId : asT<String>(jsonRes['seller_id']),
    isLive : asT<String>(jsonRes['is_live']),
    couponnum : asT<String>(jsonRes['couponnum']),
    isquality : asT<String>(jsonRes['isquality']),
    sellerName : asT<String>(jsonRes['seller_name']),
    shopname : asT<String>(jsonRes['shopname']),
    cuntao : asT<String>(jsonRes['cuntao']),
    activityid : asT<String>(jsonRes['activityid']),
    originalImg : asT<String>(jsonRes['original_img']),
    couponexplain : asT<String>(jsonRes['couponexplain']),
    deposit : asT<String>(jsonRes['deposit']),
    activityType : asT<String>(jsonRes['activity_type']),
    dxRates : asT<String>(jsonRes['dx_rates']),
    isExplosion : asT<String>(jsonRes['is_explosion']),
    itempicCopy : asT<String>(jsonRes['itempic_copy']),
    itemsale2 : asT<String>(jsonRes['itemsale2']),
    couponsurplus : asT<String>(jsonRes['couponsurplus']),
    sellernick : asT<String>(jsonRes['sellernick']),
    sonCategory : asT<String>(jsonRes['son_category']),
    fqcat : asT<String>(jsonRes['fqcat']),
    itemendprice : asT<String>(jsonRes['itemendprice']),
    taobaoImage : asT<String>(jsonRes['taobao_image']),
    tktype : asT<String>(jsonRes['tktype']),
    isBrand : asT<String>(jsonRes['is_brand']),
    downType : asT<String>(jsonRes['down_type']),
    couponurl : asT<String>(jsonRes['couponurl']),
    me : asT<String>(jsonRes['me']),
    tkurl : asT<String>(jsonRes['tkurl']),
    endTime : asT<String>(jsonRes['end_time']),
    couponmoney : asT<String>(jsonRes['couponmoney']),
    isShipping : asT<String>(jsonRes['is_shipping']),
    todaysale : asT<String>(jsonRes['todaysale']),
    couponreceive : asT<String>(jsonRes['couponreceive']),
    startTime : asT<String>(jsonRes['start_time']),
    discount : asT<String>(jsonRes['discount']),
    videoid : asT<String>(jsonRes['videoid']),
    guideArticle : asT<String>(jsonRes['guide_article']),
    tkmoney : asT<String>(jsonRes['tkmoney']),
    starttime : asT<String>(jsonRes['starttime']),
    shopid : asT<String>(jsonRes['shopid']),
    shoptype : asT<String>(jsonRes['shoptype']),
    onlineUsers : asT<String>(jsonRes['online_users']),
    planlink : asT<String>(jsonRes['planlink']),
    reportStatus : asT<String>(jsonRes['report_status']),
    itemsale : asT<String>(jsonRes['itemsale']),
    itempic : asT<String>(jsonRes['itempic']),
    tkrates : asT<String>(jsonRes['tkrates']),
    couponendtime : asT<String>(jsonRes['couponendtime']),
    generalIndex : asT<String>(jsonRes['general_index']),
    itemshorttitle : asT<String>(jsonRes['itemshorttitle']),
    couponreceive2 : asT<String>(jsonRes['couponreceive2']),
    todaycouponreceive : asT<String>(jsonRes['todaycouponreceive']),
    couponstarttime : asT<String>(jsonRes['couponstarttime']),
    couponCondition : asT<String>(jsonRes['coupon_condition']),
    originalArticle : asT<String>(jsonRes['original_article']),
    depositDeduct : asT<String>(jsonRes['deposit_deduct']),
  );

  String userid;
  String productId;
  String itemid;
  String itemtitle;
  String itemdesc;
  String itemprice;
  String sellerId;
  String isLive;
  String couponnum;
  String isquality;
  String sellerName;
  String shopname;
  String cuntao;
  String activityid;
  String originalImg;
  String couponexplain;
  String deposit;
  String activityType;
  String dxRates;
  String isExplosion;
  String itempicCopy;
  String itemsale2;
  String couponsurplus;
  String sellernick;
  String sonCategory;
  String fqcat;
  String itemendprice;
  String taobaoImage;
  String tktype;
  String isBrand;
  String downType;
  String couponurl;
  String me;
  String tkurl;
  String endTime;
  String couponmoney;
  String isShipping;
  String todaysale;
  String couponreceive;
  String startTime;
  String discount;
  String videoid;
  String guideArticle;
  String tkmoney;
  String starttime;
  String shopid;
  String shoptype;
  String onlineUsers;
  String planlink;
  String reportStatus;
  String itemsale;
  String itempic;
  String tkrates;
  String couponendtime;
  String generalIndex;
  String itemshorttitle;
  String couponreceive2;
  String todaycouponreceive;
  String couponstarttime;
  String couponCondition;
  String originalArticle;
  String depositDeduct;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'userid': userid,
    'product_id': productId,
    'itemid': itemid,
    'itemtitle': itemtitle,
    'itemdesc': itemdesc,
    'itemprice': itemprice,
    'seller_id': sellerId,
    'is_live': isLive,
    'couponnum': couponnum,
    'isquality': isquality,
    'seller_name': sellerName,
    'shopname': shopname,
    'cuntao': cuntao,
    'activityid': activityid,
    'original_img': originalImg,
    'couponexplain': couponexplain,
    'deposit': deposit,
    'activity_type': activityType,
    'dx_rates': dxRates,
    'is_explosion': isExplosion,
    'itempic_copy': itempicCopy,
    'itemsale2': itemsale2,
    'couponsurplus': couponsurplus,
    'sellernick': sellernick,
    'son_category': sonCategory,
    'fqcat': fqcat,
    'itemendprice': itemendprice,
    'taobao_image': taobaoImage,
    'tktype': tktype,
    'is_brand': isBrand,
    'down_type': downType,
    'couponurl': couponurl,
    'me': me,
    'tkurl': tkurl,
    'end_time': endTime,
    'couponmoney': couponmoney,
    'is_shipping': isShipping,
    'todaysale': todaysale,
    'couponreceive': couponreceive,
    'start_time': startTime,
    'discount': discount,
    'videoid': videoid,
    'guide_article': guideArticle,
    'tkmoney': tkmoney,
    'starttime': starttime,
    'shopid': shopid,
    'shoptype': shoptype,
    'online_users': onlineUsers,
    'planlink': planlink,
    'report_status': reportStatus,
    'itemsale': itemsale,
    'itempic': itempic,
    'tkrates': tkrates,
    'couponendtime': couponendtime,
    'general_index': generalIndex,
    'itemshorttitle': itemshorttitle,
    'couponreceive2': couponreceive2,
    'todaycouponreceive': todaycouponreceive,
    'couponstarttime': couponstarttime,
    'coupon_condition': couponCondition,
    'original_article': originalArticle,
    'deposit_deduct': depositDeduct,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}


class BottomFour {
  BottomFour({
    this.tag,
    this.router,
    this.tagtextColor,
    this.tagBgColor,
    this.goods,
    this.title,
  });


  factory BottomFour.fromJson(Map<String, dynamic> jsonRes){ if(jsonRes == null){return null;}
  final List<GoodsInfo> goods = jsonRes['goods'] is List ? <GoodsInfo>[]: null;
  if(goods!=null) {
    for (final dynamic item in jsonRes['goods']) { if (item != null) { goods.add(GoodsInfo.fromJson(asT<Map<String,dynamic>>(item)));  } }
  }


  return BottomFour(tag : asT<String>(jsonRes['tag']),
    router : asT<String>(jsonRes['router']),
    tagtextColor : asT<String>(jsonRes['tagtextColor']),
    tagBgColor : asT<String>(jsonRes['tagBgColor']),
    goods:goods,
    title : asT<String>(jsonRes['title']),
  );}

  String tag;
  String router;
  String tagtextColor;
  String tagBgColor;
  List<GoodsInfo> goods;
  String title;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'tag': tag,
    'router': router,
    'tagtextColor': tagtextColor,
    'tagBgColor': tagBgColor,
    'goods': goods,
    'title': title,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}


class BottomOne {
  BottomOne({
    this.tag,
    this.router,
    this.tagtextColor,
    this.tagBgColor,
    this.goods,
    this.title,
  });


  factory BottomOne.fromJson(Map<String, dynamic> jsonRes){ if(jsonRes == null){return null;}
  final List<GoodsInfo> goods = jsonRes['goods'] is List ? <GoodsInfo>[]: null;
  if(goods!=null) {
    for (final dynamic item in jsonRes['goods']) { if (item != null) { goods.add(GoodsInfo.fromJson(asT<Map<String,dynamic>>(item)));  } }
  }


  return BottomOne(tag : asT<String>(jsonRes['tag']),
    router : asT<String>(jsonRes['router']),
    tagtextColor : asT<String>(jsonRes['tagtextColor']),
    tagBgColor : asT<String>(jsonRes['tagBgColor']),
    goods:goods,
    title : asT<String>(jsonRes['title']),
  );}

  String tag;
  String router;
  String tagtextColor;
  String tagBgColor;
  List<GoodsInfo> goods;
  String title;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'tag': tag,
    'router': router,
    'tagtextColor': tagtextColor,
    'tagBgColor': tagBgColor,
    'goods': goods,
    'title': title,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}


class LeftTopOne {
  LeftTopOne({
    this.tag,
    this.router,
    this.tagtextColor,
    this.tagBgColor,
    this.goods,
    this.title,
  });


  factory LeftTopOne.fromJson(Map<String, dynamic> jsonRes){ if(jsonRes == null){return null;}
  final List<GoodsInfo> goods = jsonRes['goods'] is List ? <GoodsInfo>[]: null;
  if(goods!=null) {
    for (final dynamic item in jsonRes['goods']) { if (item != null) { goods.add(GoodsInfo.fromJson(asT<Map<String,dynamic>>(item)));  } }
  }


  return LeftTopOne(tag : asT<String>(jsonRes['tag']),
    router : asT<String>(jsonRes['router']),
    tagtextColor : asT<String>(jsonRes['tagtextColor']),
    tagBgColor : asT<String>(jsonRes['tagBgColor']),
    goods:goods,
    title : asT<String>(jsonRes['title']),
  );}

  String tag;
  String router;
  String tagtextColor;
  String tagBgColor;
  List<GoodsInfo> goods;
  String title;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'tag': tag,
    'router': router,
    'tagtextColor': tagtextColor,
    'tagBgColor': tagBgColor,
    'goods': goods,
    'title': title,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}


class RightTopOne {
  RightTopOne({
    this.tag,
    this.router,
    this.tagtextColor,
    this.tagBgColor,
    this.goods,
    this.title,
  });


  factory RightTopOne.fromJson(Map<String, dynamic> jsonRes){ if(jsonRes == null){return null;}
  final List<GoodsInfo> goods = jsonRes['goods'] is List ? <GoodsInfo>[]: null;
  if(goods!=null) {
    for (final dynamic item in jsonRes['goods']) { if (item != null) { goods.add(GoodsInfo.fromJson(asT<Map<String,dynamic>>(item)));  } }
  }


  return RightTopOne(tag : asT<String>(jsonRes['tag']),
    router : asT<String>(jsonRes['router']),
    tagtextColor : asT<String>(jsonRes['tagtextColor']),
    tagBgColor : asT<String>(jsonRes['tagBgColor']),
    goods:goods,
    title : asT<String>(jsonRes['title']),
  );}

  String tag;
  String router;
  String tagtextColor;
  String tagBgColor;
  List<GoodsInfo> goods;
  String title;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'tag': tag,
    'router': router,
    'tagtextColor': tagtextColor,
    'tagBgColor': tagBgColor,
    'goods': goods,
    'title': title,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}


class BottomTwo {
  BottomTwo({
    this.tag,
    this.router,
    this.tagtextColor,
    this.tagBgColor,
    this.goods,
    this.title,
  });


  factory BottomTwo.fromJson(Map<String, dynamic> jsonRes){ if(jsonRes == null){return null;}
  final List<GoodsInfo> goods = jsonRes['goods'] is List ? <GoodsInfo>[]: null;
  if(goods!=null) {
    for (final dynamic item in jsonRes['goods']) { if (item != null) { goods.add(GoodsInfo.fromJson(asT<Map<String,dynamic>>(item)));  } }
  }


  return BottomTwo(tag : asT<String>(jsonRes['tag']),
    router : asT<String>(jsonRes['router']),
    tagtextColor : asT<String>(jsonRes['tagtextColor']),
    tagBgColor : asT<String>(jsonRes['tagBgColor']),
    goods:goods,
    title : asT<String>(jsonRes['title']),
  );}

  String tag;
  String router;
  String tagtextColor;
  String tagBgColor;
  List<GoodsInfo> goods;
  String title;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'tag': tag,
    'router': router,
    'tagtextColor': tagtextColor,
    'tagBgColor': tagBgColor,
    'goods': goods,
    'title': title,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}



