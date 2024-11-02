class AppState {
  final int tabIndex;

  AppState({
    required this.tabIndex,
  });

  AppState copyWith({
    int? tabIndex,
  }) {
    return AppState(
      tabIndex: tabIndex ?? this.tabIndex,
    );
  }
}
