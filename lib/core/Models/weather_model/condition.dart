import 'package:equatable/equatable.dart';

class Condition extends Equatable {
  final String? text;
  final String? icon;
  final int? code;

  const Condition({this.text, this.icon, this.code});

  factory Condition.fromJson(Map<String, dynamic> json) => Condition(
        text: json['text'] as String?,
        icon: json['icon'] as String?,
        code: json['code'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'icon': icon,
        'code': code,
      };

  @override
  List<Object?> get props => [text, icon, code];
}
