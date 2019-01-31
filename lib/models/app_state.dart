import 'package:meta/meta.dart';

import 'auth_state.dart';
import 'nav_state.dart';

@immutable
class AppState {
  final AuthState authState;
  final NavState navState;

  AppState({
    @required this.authState,
    @required this.navState,
  });

  factory AppState.initial() {
    return AppState(
      authState: AuthState.initial(),
      navState: NavState.initial(),
    );
  }
}