part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<ScriptModel> results;

  SearchSuccess(this.results);
}

final class SearchError extends SearchState {
  final String message;

  SearchError(this.message);
}
