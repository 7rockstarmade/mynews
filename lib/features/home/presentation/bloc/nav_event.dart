abstract class NavEvent {}

class NavIndexChange extends NavEvent {
  final int index;
  NavIndexChange(this.index);
}
