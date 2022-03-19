import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final String? avatar;
  final bool isNewUser;

  const User({
    required this.id,
    this.email,
    this.name,
    this.avatar,
    this.isNewUser = true,
  });

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [
        email,
        id,
        name,
        avatar,
      ];
}
