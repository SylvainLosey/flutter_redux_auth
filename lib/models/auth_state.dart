import 'package:flutter/material.dart';

import 'user.dart';

@immutable
class AuthState {
  final bool isLoading;
  final bool isAuthenticated;
  final User user;
  final String error;

  AuthState({
    this.isLoading,
    this.isAuthenticated ,
    this.user,
    this.error,
  });

  factory AuthState.initial() {
    return AuthState(
      isLoading: false,
      isAuthenticated: false,
    );
  }

  AuthState copyWith({
    bool isLoading,
    bool isAuthenticated,
    User user,
    String error
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      user: user ?? this.user,
      error: error ?? this.error,
    );
  }
}