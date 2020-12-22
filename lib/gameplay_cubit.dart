class GameplayCubit {
  final _analytics = sl<Analytics>();
  final _analyticsEvents = sl<Analytics>().events.gameplay;
  static const int _FIRST_TURN_AND_ROUND_INDEX = 1;
  static const int _LAST_CARD_INDEX = 0;
  static const int _BEFORE_LAST_CARD_INDEX = 1;
  static const int _COUNTDOWN_SECONDS_BEFORE_ROUND = 3;
  int remainingSeconds;

  GameplayCubit();

  void init() {}
  void onWillPop() {}
  void onGoesBackground() {}
  void onGoesForeground() {}
  void onExitAction() {}
  Future<void> close() {}
}
