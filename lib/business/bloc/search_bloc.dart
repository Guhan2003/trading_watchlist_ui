import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trading/data/script_model.dart';
import 'package:trading/utils/mock_data.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  late final List<ScriptModel> allData;

  SearchBloc() : super(SearchInitial()) {
    allData = data.map((e) => ScriptModel.fromjson(e)).toList();

    on<SearchQueryChanged>((event, emit) async {
      emit(SearchLoading());

      await Future.delayed(const Duration(milliseconds: 300)); // Simulate latency

      final filtered = event.query.isEmpty
          ? allData
          : allData
              .where((item) =>
                  item.title.toLowerCase().contains(event.query.toLowerCase()))
              .toList();

      emit(SearchSuccess(filtered));
    });
  }
}
