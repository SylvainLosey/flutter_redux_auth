import 'package:redux/redux.dart';

import '../middleware/app_middleware.dart';
import '../middleware/auth_middleware.dart';
import '../models/app_state.dart';
import '../reducers/app_reducer.dart';

Store<AppState> createStore() {
  return Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: []
        ..addAll(AuthMiddleware().createAuthMiddleware())
        ..addAll(AppMiddleware().createAppMiddleware()),
  );
}