import 'dart:convert';
import 'package:flutter/material.dart';
import '../util/request_service.dart';
import '../util/user_utils.dart';
import '../util/result_obj_util.dart';
import '../util/system_toast.dart';
import '../modals/Result.dart';
import '../modals/user_data.dart';
import '../modals/user_model.dart';
import '../modals/favorites_model.dart';

class UserProvider with ChangeNotifier {
  User user; // 用户信息,包含token

  //------------- 用户收藏商品信息
  PageInfo pageInfo; // 用户收藏商品信息
  List<Good> goods = []; // 商品列表
  int page = 1; // 第几页
  bool isEditFavoriteIng = false; //是否在编辑收藏商品
  List<String> editFavoriteIds = []; // 用户想要删除收藏的商品
  //------------------------收藏相关的操作和属性写在这里面


  //全选或者取消全选,ture表示全选
  void selectAll(bool selectAll){
    if(selectAll){
      goods.forEach((good){
        if(!editFavoriteIds.contains(good.id.toString())){
          editFavoriteIds.add(good.id.toString());
        }
      });
    }else{
      editFavoriteIds = [];
    }
    notifyListeners();
  }

  // 确认删除收藏按钮被按下
  void removeFavoriteOk(){
    List<Good> toRemove = [];
    if(this.editFavoriteIds.length!=0){
      editFavoriteIds.forEach((id){
        goods.forEach((good){
          if(good.id.toString()==id){
            toRemove.add(good);
          }
        });
      });
      goods.removeWhere((e)=>toRemove.contains(e));
      this.editFavoriteIds = [];
      this.isEditFavoriteIng = false;
      notifyListeners();
    }
  }

  //收藏页面编辑图标被按下
  void editorIconClickHandleFun(bool edit) {
    isEditFavoriteIng = edit;
    if (!edit) {
      // 重置ids
      editFavoriteIds.clear();
    }
    notifyListeners();
  }

  // 将要删除的id加到editFavoriteIds里面
  void addRemoveFavoriteGoodsId(String goodsId) {
    editFavoriteIds.add(goodsId);
    notifyListeners();
  }

  // 取消一个将要删除的id
  void removeFavoriteGoodsId(String goodsId) {
    editFavoriteIds.remove(goodsId);
    notifyListeners();
  }

  // 用户登入
  Future<bool> login(String username, String password) async {
    bool isSuccess = false;
    await userLogin({"username": username, "password": password}).then((res) {
      Result result = ResultUtils.format(res);
      if (result.code == 200) {
        UserData userData =
            UserData.fromJson(json.decode(result.data.toString()));
        this.user = userData.user;
        this.setUserInfo(result.data);
        SystemToast.show("登录成功");
        isSuccess = true;
        notifyListeners();
      } else {
        SystemToast.show("登录失败");
        isSuccess = false;
      }
    });
    return isSuccess;
  }

  // 重置收藏属性值
  void resetFavoriteData() {
    this.pageInfo = null;
    this.goods = [];
    this.page = 1;
    this.editFavoriteIds = [];
    this.isEditFavoriteIng = false;
  }

  // 获取用户收藏的下一页商品列表
  Future<void> loadNextPageUserFavoriteGoodsListFun() async {
    this.page = page + 1;
    this.loadUserFavoriteGoodsListFun(this.page);
  }

  // 获取用户收藏的商品列表
  Future<void> loadUserFavoriteGoodsListFun(int pageId) async {
    // 判断用户是否已经登录
    await UserUtil.loadUserInfo().then((user) async {
      if (user != null) {
        if(pageId==1){
          this.resetFavoriteData();
        }
        await loadFavoriteGoods({"userId": user.id, "pageId": pageId})
            .then((res) {
          Result result = ResultUtils.format(res);
          if (result != null && result.code == 200) {
            FavoritesAllData favoritesAllData =
                FavoritesAllData.fromJson(json.decode(result.data.toString()));
            this.pageInfo = favoritesAllData.pageInfo;
            if (pageId == 1) {
              goods = favoritesAllData.goods;
            } else {
              goods.addAll(favoritesAllData.goods);
            }

            notifyListeners();
          } else {
            print("获取收藏商品失败");
          }
        });
      }
    });
  }

  // 存储在本地的用户信息加载到状态管理上面
  Future<User> loadUserInfo() async {
    await UserUtil.loadUserInfo().then((user) {
      if (user != null) {
        this.user = user;
        notifyListeners();
      }
    });
    return null;
  }

  // 将用户信息存储到本地
  void setUserInfo(String json) async {
    await UserUtil.setUserInfo(json);
  }

  // 将本地保存的用户信息删除
  void removeUserInfoData() async {
    await UserUtil.removeUserInfoData();
    this.user = null;
    notifyListeners();
  }
}
