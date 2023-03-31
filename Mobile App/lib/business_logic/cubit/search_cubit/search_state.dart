part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.success() = _Success;
  const factory SearchState.error() = _Error;
  const factory SearchState.changeSearchFilter(int? selectedFloorNumber) = _ChangeSearchFilter;
  const factory SearchState.getSearchFilterSuccess(List<RoomModel> rooms) = _GetSearchFilterSuccess;
  const factory SearchState.getSearchResultsSuccess(List<UserModel> rooms) = _GetSearchResultsSuccess;
}
