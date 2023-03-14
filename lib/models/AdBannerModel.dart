import 'dart:convert';

List<AdBanner> adBannerListFromJson(String value) => List<AdBanner>.from(
    jsonDecode(value)['data'].map((banner) => AdBanner.fromJson(banner)));

class AdBanner {
  final int? id;
  final String? bannerImage;

  AdBanner({this.id, this.bannerImage});

  factory AdBanner.fromJson(Map<String, dynamic> data) => AdBanner(
        id: data['id'],
        bannerImage: data['attributes']['image']['data']['attributes']['url'],
      );
}
