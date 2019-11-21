
import 'package:ai_tv/bean/HomPageBean.dart';
import 'package:ai_tv/provider/JapaneseTvProvider.dart';

class RjTvRepository{
  JapaneseTvProvider _tvProvider = JapaneseTvProvider();

  Future<HomePageBeanResponse> getAllRJ() {
    return _tvProvider.getAllRJ();
  }
}