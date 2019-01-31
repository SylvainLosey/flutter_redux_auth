import 'package:redux/redux.dart';

import '../actions/auth_actions.dart';
import '../models/auth_state.dart';


Reducer<AuthState> authReducer = combineReducers([
  TypedReducer<AuthState, UserLoginRequest>(_userLoginRequestReducer),
  TypedReducer<AuthState, UserLoginSuccess>(_userLoginRequestSuccess),
  TypedReducer<AuthState, UserLoaded>(_userLoaded),
  TypedReducer<AuthState, UserLoginFailure>(_userLoginRequestFailure),
  TypedReducer<AuthState, UserLogout>(_userLogoutReducer),
]);

AuthState _userLoginRequestReducer(AuthState state, UserLoginRequest action) {
  return state.copyWith(
    isLoading: true,
  );
}

AuthState _userLoginRequestSuccess(AuthState state, UserLoginSuccess action) {
  return state.copyWith(
    isLoading: false,
  );
}

AuthState _userLoaded(AuthState state, UserLoaded action) {
  return state.copyWith(
    isLoading: false,
    isAuthenticated: true,
    user: action.user,
  );
}

AuthState _userLoginRequestFailure(AuthState state, UserLoginFailure action) {
  return state.copyWith(
    isLoading: false,
    error: action.error,
  );
}

AuthState _userLogoutReducer(AuthState state, UserLogout action) {
  return state.copyWith(
    isLoading: false,
    isAuthenticated: false,
    user: null,
  );
}