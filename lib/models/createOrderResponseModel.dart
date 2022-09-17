// To parse this JSON data, do
//
//     final createOrderResponseModel = createOrderResponseModelFromJson(jsonString);

import 'dart:convert';

CreateOrderResponseModel createOrderResponseModelFromJson(String str) => CreateOrderResponseModel.fromJson(json.decode(str));

String createOrderResponseModelToJson(CreateOrderResponseModel data) => json.encode(data.toJson());

class CreateOrderResponseModel {
  CreateOrderResponseModel({
    required this.id,
    required this.entity,
    required this.amount,
    required this.amountPaid,
    required this.amountDue,
    required this.currency,
    required this.receipt,
    required this.offerId,
    required this.status,
    required this.attempts,
    required this.notes,
    required this.createdAt,
  });

  String id;
  String entity;
  int amount;
  int amountPaid;
  int amountDue;
  String currency;
  String receipt;
  dynamic offerId;
  String status;
  int attempts;
  List<dynamic> notes;
  int createdAt;

  factory CreateOrderResponseModel.fromJson(Map<String, dynamic> json) => CreateOrderResponseModel(
    id: json["id"],
    entity: json["entity"],
    amount: json["amount"],
    amountPaid: json["amount_paid"],
    amountDue: json["amount_due"],
    currency: json["currency"],
    receipt: json["receipt"],
    offerId: json["offer_id"],
    status: json["status"],
    attempts: json["attempts"],
    notes: List<dynamic>.from(json["notes"].map((x) => x)),
    createdAt: json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "entity": entity,
    "amount": amount,
    "amount_paid": amountPaid,
    "amount_due": amountDue,
    "currency": currency,
    "receipt": receipt,
    "offer_id": offerId,
    "status": status,
    "attempts": attempts,
    "notes": List<dynamic>.from(notes.map((x) => x)),
    "created_at": createdAt,
  };
}
