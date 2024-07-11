part of 'navigator_bloc.dart';

class NavState {
  final int bottomNavigationIndex;
  final int notificationCount;

  NavState(
      {required this.bottomNavigationIndex, required this.notificationCount});

  NavState copyWith(
      {int? bottomNavigationIndex, int? notificationCount})
  {
    return NavState(
        bottomNavigationIndex:
            bottomNavigationIndex ?? this.bottomNavigationIndex,
        notificationCount: notificationCount ?? this.notificationCount);
  }
}
