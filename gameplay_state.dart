part of 'gameplay_cubit.dart';

@immutable
abstract class GameplayState extends BaseUnlockDeckState {
  GameplayState(int watchedRewardedVideos) : super(watchedRewardedVideos);

  @override
  List<Object> get props => [runtimeType];
}

class InitialGameDetailsState extends BaseUnlockDeckInitial {
  final GameOptions options;

  InitialGameDetailsState(this.options) : super();

  @override
  List<Object> get props => [options];
}

class GameDetailsState extends GameplayState {
  final GameOptions options;

  GameDetailsState(this.options, int watchedRewardedVideos) : super(watchedRewardedVideos);

  @override
  List<Object> get props => [options];
}

class RotateCardState extends GameplayState {
  final GameplayCard card;
  final bool swipeEnable;

  RotateCardState(this.card, int watchedRewardedVideos, {this.swipeEnable = false}) : super(watchedRewardedVideos);

  @override
  List<Object> get props => [card, swipeEnable];

  @override
  bool operator ==(Object other) => false;
}

class ShowEndFreeGameDialogState extends GameplayState {
  ShowEndFreeGameDialogState(int watchedRewardedVideos) : super(watchedRewardedVideos);

  @override
  List<Object> get props => [runtimeType];
}

class ShowEndGameDialogState extends GameplayState {
  ShowEndGameDialogState(int watchedRewardedVideos) : super(watchedRewardedVideos);

  @override
  List<Object> get props => [runtimeType];
}

class ContinueGameplayState extends GameplayState {
  ContinueGameplayState(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class SwipeCardState extends GameplayState {
  final double swipeDirection;
  final int cardId;

  SwipeCardState(this.swipeDirection, int watchedRewardedVideos, this.cardId) : super(watchedRewardedVideos);

  @override
  List<Object> get props => [watchedRewardedVideos, swipeDirection, cardId];
}

class ShowRewardedCardOnTopSwipeStackState extends GameplayState {
  ShowRewardedCardOnTopSwipeStackState(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class VipPackageOrSubcritpionOn extends GameplayState {
  VipPackageOrSubcritpionOn(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class VipPackageOrSubcritpionOff extends GameplayState {
  VipPackageOrSubcritpionOff(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class ShowBecomeVipDialog extends GameplayState {
  ShowBecomeVipDialog(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class HideBecomeVipDialog extends GameplayState {
  HideBecomeVipDialog(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class ShowHelperMenu extends GameplayState {
  final bool isSoundEnabled;
  ShowHelperMenu(int watchedRewardedVideos, this.isSoundEnabled) : super(watchedRewardedVideos);
  @override
  List<Object> get props => [isSoundEnabled, runtimeType];
}

class DismissHelperMenu extends GameplayState {
  DismissHelperMenu(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class ShowEndGameInHelperMenuDialogState extends GameplayState {
  ShowEndGameInHelperMenuDialogState(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class DismissEndGameDialogState extends GameplayState {
  DismissEndGameDialogState(int watchedRewardedVideos) : super(watchedRewardedVideos);
}

class CountingBeforeRoundState extends GameplayState {
  final int remainingSeconds;
  final String playerName;

  CountingBeforeRoundState(this.remainingSeconds, this.playerName, int watchedRewardedVideos) : super(watchedRewardedVideos);

  @override
  List<Object> get props => [remainingSeconds, playerName];
}
