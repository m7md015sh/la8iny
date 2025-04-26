import 'package:equatable/equatable.dart';

class User extends Equatable{
  final String name;
  final String email;
  const User({required this.name,required this.email});

  factory User.fromJson(Map<String,dynamic>json){
    return User(
      name: json['name'],
      email: json['email']
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [ name, email];

}

