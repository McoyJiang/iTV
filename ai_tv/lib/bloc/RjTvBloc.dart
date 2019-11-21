import 'package:ai_tv/bean/HomPageBean.dart';
import 'package:ai_tv/data_source/RjTvRepository.dart';
import 'package:rxdart/rxdart.dart';

class JapaneseTvBloc {
  final RjTvRepository _japaneseTvRepository = RjTvRepository();
  final BehaviorSubject<HomePageBeanResponse> _subject =
      BehaviorSubject<HomePageBeanResponse>();

  getAllTv() async {
    HomePageBeanResponse response = await _japaneseTvRepository.getAllRJ();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<HomePageBeanResponse> get subject => _subject;
}
final JapaneseTvBloc rj_bloc = JapaneseTvBloc();
