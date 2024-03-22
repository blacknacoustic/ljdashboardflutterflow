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
import '/auth/firebase_auth/auth_util.dart';

String? lastRepairID() {
  // repair id to check the last repair id listed by last created and incrementing the last one by 1
  String? repairId;
// Get the last repair id listed by last created
  final lastRepair = FirebaseFirestore.instance
      .collection('repairs')
      .orderBy('createdAt', descending: true)
      .limit(1);
  lastRepair.get().then((querySnapshot) {
    if (querySnapshot.docs.isNotEmpty) {
      final lastDoc = querySnapshot.docs.first;
      final lastRepairId = lastDoc.data()['repairId'] as String?;
      if (lastRepairId != null) {
        // Increment the last repair id by 1
        final lastRepairIdNumber =
            int.tryParse(lastRepairId.replaceAll(RegExp('[^0-9]'), ''));
        if (lastRepairIdNumber != null) {
          repairId = 'R${lastRepairIdNumber + 1}';
        }
      }
    }
  });
  return repairId;
}
