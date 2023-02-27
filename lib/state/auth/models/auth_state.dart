
import 'package:flutter/foundation.dart';
import 'package:edumate/state/auth/models/auth_result.dart';
import 'package:edumate/state/posts/typedefs/user_id.dart';

@immutable 
class AuthState {
  final AuthResult? result;
  final bool isLoading;
  final UserId? userId;

  const AuthState({
    required this.result,
    required this.isLoading,
    required this.userId,
  });


  const AuthState.initial()
      : result = null,
        isLoading = false,
        userId = null;

  AuthState copiedWithIsLoading(bool isLoading) => AuthState(isLoading: isLoading, userId: userId, result: result);

  @override
  bool operator == (covariant AuthState other) => identical(this, other) || (result == other.result && isLoading == other.isLoading && userId == other.userId);

  @override
  int get hashCode => Object.hash(result, isLoading, userId);
}