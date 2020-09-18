import 'dart:convert' show json;

T asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}


class IndexCategoryConfig {
  IndexCategoryConfig({
    this.categorys,
  });


  factory IndexCategoryConfig.fromJson(Map<String, dynamic> jsonRes){ if(jsonRes == null){return null;}
  final List<Categorys> categorys = jsonRes['Categorys'] is List ? <Categorys>[]: null;
  if(categorys!=null) {
    for (final dynamic item in jsonRes['Categorys']) { if (item != null) { categorys.add(Categorys.fromJson(asT<Map<String,dynamic>>(item)));  } }
  }


  return IndexCategoryConfig( categorys:categorys,
  );}

  List<Categorys> categorys;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'Categorys': categorys,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}
class Categorys {
  Categorys({
    this.category,
    this.image,
    this.colors,
    this.nodeId,
    this.type,
    this.title,
  });


  factory Categorys.fromJson(Map<String, dynamic> jsonRes){ if(jsonRes == null){return null;}
  final List<String> colors = jsonRes['colors'] is List ? <String>[]: null;
  if(colors!=null) {
    for (final dynamic item in jsonRes['colors']) { if (item != null) { colors.add(asT<String>(item));  } }
  }


  return Categorys(category : asT<String>(jsonRes['category']),
    image : asT<String>(jsonRes['image']),
    colors:colors,
    nodeId : asT<String>(jsonRes['node_id']),
    type : asT<String>(jsonRes['type']),
    title : asT<String>(jsonRes['title']),
  );}

  String category;
  String image;
  List<String> colors;
  String nodeId;
  String type;
  String title;

  Map<String, dynamic> toJson() => <String, dynamic>{
    'category': category,
    'image': image,
    'colors': colors,
    'node_id': nodeId,
    'type': type,
    'title': title,
  };

  @override
  String  toString() {
    return json.encode(this);
  }
}


