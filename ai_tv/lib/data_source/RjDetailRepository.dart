
import 'package:ai_tv/bean/MediaDetailsBean.dart';
import 'package:ai_tv/provider/RjDetailProvider.dart';

class RjDetailRepository {
  RjDetailProvider _provider = RjDetailProvider();

  Future<MediaDetailsResponse> getRJDetails(String id) {
    return _provider.getRjDetail(id);
  }
}