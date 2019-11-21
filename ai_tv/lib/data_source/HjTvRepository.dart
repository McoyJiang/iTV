
import 'package:ai_tv/bean/HomPageBean.dart';
import 'package:ai_tv/provider/KoreaTvProvider.dart';

class HjTvRepository {
  KoreaTvProvider _tvProvider = KoreaTvProvider();

  Future<HomePageBeanResponse> getAllHJ() {
    return _tvProvider.getAllHJ();
  }
}