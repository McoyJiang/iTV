import 'package:ai_tv/bean/HomPageBean.dart';
import 'package:ai_tv/data_source/HjTvRepository.dart';
import 'package:rxdart/rxdart.dart';

class KoreaTvBloc {
  final HjTvRepository _japaneseTvRepository = HjTvRepository();
  final BehaviorSubject<HomePageBeanResponse> _subject =
      BehaviorSubject<HomePageBeanResponse>();

  getAllTv() async {
    HomePageBeanResponse response = await _japaneseTvRepository.getAllHJ();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<HomePageBeanResponse> get subject => _subject;
}
final KoreaTvBloc hj_bloc = KoreaTvBloc();
