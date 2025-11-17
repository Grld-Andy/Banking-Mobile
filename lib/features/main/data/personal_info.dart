import 'package:flutter/material.dart';
import 'package:mobile_bank/features/main/domain/models/personal_info.dart';

final List<PersonalInfo> personalInfoList = [
  PersonalInfo(
    title: "Full Name",
    value: "Jane Doe",
    icon: Icons.person_outline,
  ),
  PersonalInfo(
    title: "Email Address",
    value: "jane.doe@example.com",
    icon: Icons.email_outlined,
  ),
  PersonalInfo(
    title: "Phone Number",
    value: "+233 24 123 4567",
    icon: Icons.phone_outlined,
  ),
  PersonalInfo(
    title: "Address",
    value: "Accra, Ghana",
    icon: Icons.house_outlined,
  ),
];
