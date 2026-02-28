abstract class SearchEvent {}

class GetNewsBySearch extends SearchEvent {
  final String q;
  GetNewsBySearch(this.q);
}
