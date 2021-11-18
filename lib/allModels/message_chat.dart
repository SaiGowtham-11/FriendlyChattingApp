

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ichat_app/allConstants/constants.dart';

class MessageChat{
  String idForm;
  String idTo;
  String timestamp;
  String content;
  int type;

  MessageChat({
    required this.idForm,
    required this.idTo,
    required this.timestamp,
    required this.content,
    required this.type,
});

  Map<String,dynamic> toJson(){
    return {
      FirestoreConstants.idFrom: this.idForm,
      FirestoreConstants.idTo: this.idTo,
      FirestoreConstants.timestamp: this.timestamp,
      FirestoreConstants.content: this.content,
      FirestoreConstants.type: this.type,
    };
  }

  factory MessageChat.fromDocument(DocumentSnapshot doc){
    String idForm = doc.get(FirestoreConstants.idFrom);
    String idTo = doc.get(FirestoreConstants.idTo);
    String timestamp = doc.get(FirestoreConstants.timestamp);
    String content = doc.get(FirestoreConstants.content);
    int type = doc.get(FirestoreConstants.type);

   return MessageChat(idForm: idForm, idTo: idTo, timestamp: timestamp, content: content, type: type);
  }
}
