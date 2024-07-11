part of 'navigator_bloc.dart';

@immutable
sealed class NavigatorEvent {}
class ChangingIndex extends NavigatorEvent{
  final int index;
  ChangingIndex(this.index);
}
class LoadNavigateEvent extends NavigatorEvent{}
