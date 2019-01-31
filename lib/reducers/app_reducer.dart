import '../models/app_state.dart';
import '../reducers/auth_reducer.dart';
import '../reducers/nav_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    authState: authReducer(state.authState, action),
    navState: navReducer(state.navState, action),
  );
}