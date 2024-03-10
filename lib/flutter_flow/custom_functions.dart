import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';

dynamic fromUserModelToJson(UsersRecord userModel) {
  return {
    'created_time': userModel.createdTime,
    'first_name': userModel.firstName,
    'phone_number': userModel.phoneNumber,
    'second_name': userModel.secendName,
    'last_name': userModel.lastName,
    'age': userModel.age,
    'clinic_note_reference': userModel.clinicNoteRefrence,
    'clinics_reference': userModel.clinicsRefrence,
  };
}

UsersRecord fromJsonToUserModel(dynamic json) {
  return UsersRecord();
}
