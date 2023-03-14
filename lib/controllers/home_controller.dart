import 'package:get/get.dart';
import 'package:shop_now/services/remote_services/remote_banner_service.dart';
import '../models/AdBannerModel.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();

  RxList<AdBanner> bannerList = List<AdBanner>.empty(growable: true).obs;
  RxBool isBannerLoading = false.obs;

  @override
  void onInit() {
    getAdBanner();
    super.onInit();
  }

  Future<void> getAdBanner() async {
    try {
      isBannerLoading(true);
      var result = await RemoteBannerServices().get();
      if (result != null) {
        bannerList.assignAll(adBannerListFromJson(result));
      }
    } finally {
      print(bannerList.length);
      isBannerLoading(false);
    }
  }
}
