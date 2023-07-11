import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiaryEntriesRecord extends FirestoreRecord {
  DiaryEntriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "raw_text_entry" field.
  String? _rawTextEntry;
  String get rawTextEntry => _rawTextEntry ?? '';
  bool hasRawTextEntry() => _rawTextEntry != null;

  // "ai_nutritional_analysis" field.
  String? _aiNutritionalAnalysis;
  String get aiNutritionalAnalysis => _aiNutritionalAnalysis ?? '';
  bool hasAiNutritionalAnalysis() => _aiNutritionalAnalysis != null;

  // "ai_feedback_analysis" field.
  String? _aiFeedbackAnalysis;
  String get aiFeedbackAnalysis => _aiFeedbackAnalysis ?? '';
  bool hasAiFeedbackAnalysis() => _aiFeedbackAnalysis != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _rawTextEntry = snapshotData['raw_text_entry'] as String?;
    _aiNutritionalAnalysis = snapshotData['ai_nutritional_analysis'] as String?;
    _aiFeedbackAnalysis = snapshotData['ai_feedback_analysis'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('diary_entries');

  static Stream<DiaryEntriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiaryEntriesRecord.fromSnapshot(s));

  static Future<DiaryEntriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiaryEntriesRecord.fromSnapshot(s));

  static DiaryEntriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiaryEntriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiaryEntriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiaryEntriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiaryEntriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiaryEntriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiaryEntriesRecordData({
  String? rawTextEntry,
  String? aiNutritionalAnalysis,
  String? aiFeedbackAnalysis,
  DocumentReference? user,
  DateTime? date,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'raw_text_entry': rawTextEntry,
      'ai_nutritional_analysis': aiNutritionalAnalysis,
      'ai_feedback_analysis': aiFeedbackAnalysis,
      'user': user,
      'date': date,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiaryEntriesRecordDocumentEquality
    implements Equality<DiaryEntriesRecord> {
  const DiaryEntriesRecordDocumentEquality();

  @override
  bool equals(DiaryEntriesRecord? e1, DiaryEntriesRecord? e2) {
    return e1?.rawTextEntry == e2?.rawTextEntry &&
        e1?.aiNutritionalAnalysis == e2?.aiNutritionalAnalysis &&
        e1?.aiFeedbackAnalysis == e2?.aiFeedbackAnalysis &&
        e1?.user == e2?.user &&
        e1?.date == e2?.date &&
        e1?.title == e2?.title;
  }

  @override
  int hash(DiaryEntriesRecord? e) => const ListEquality().hash([
        e?.rawTextEntry,
        e?.aiNutritionalAnalysis,
        e?.aiFeedbackAnalysis,
        e?.user,
        e?.date,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is DiaryEntriesRecord;
}
