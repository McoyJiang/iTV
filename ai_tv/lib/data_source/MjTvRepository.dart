
import 'package:ai_tv/bean/HomPageBean.dart';
import 'package:ai_tv/provider/AmericaTvProvider.dart';

class MjTvRepository {
  AmericaTvProvider _tvProvider = AmericaTvProvider();

  Future<HomePageBeanResponse> getAllMJ() {
    return _tvProvider.getAllMJ();
  }
}