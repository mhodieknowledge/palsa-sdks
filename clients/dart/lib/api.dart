//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library palsa_api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/billing_api.dart';
part 'api/contacts_api.dart';
part 'api/notifications_api.dart';
part 'api/verification_api.dart';

part 'model/balance.dart';
part 'model/blocker.dart';
part 'model/channel.dart';
part 'model/check_verification200_response.dart';
part 'model/check_verification_request.dart';
part 'model/contact.dart';
part 'model/contact_create.dart';
part 'model/create_contact201_response.dart';
part 'model/create_contact201_response_data.dart';
part 'model/delete_contact200_response.dart';
part 'model/delete_contact200_response_data.dart';
part 'model/describe_mcp200_response.dart';
part 'model/device_register.dart';
part 'model/error.dart';
part 'model/error_envelope.dart';
part 'model/get_balances200_response.dart';
part 'model/get_balances200_response_data.dart';
part 'model/get_notification200_response.dart';
part 'model/list_contacts200_response.dart';
part 'model/list_contacts200_response_data.dart';
part 'model/list_notifications200_response.dart';
part 'model/list_notifications200_response_data.dart';
part 'model/list_notifications200_response_meta.dart';
part 'model/notification.dart';
part 'model/notification_summary.dart';
part 'model/quote.dart';
part 'model/quote_held_until.dart';
part 'model/quote_send200_response.dart';
part 'model/quote_sms.dart';
part 'model/quote_variants.dart';
part 'model/quoted_recipient.dart';
part 'model/recipients.dart';
part 'model/register_device201_response.dart';
part 'model/register_device201_response_data.dart';
part 'model/send_notification202_response.dart';
part 'model/send_request.dart';
part 'model/send_result.dart';
part 'model/skipped_recipient.dart';
part 'model/start_verification201_response.dart';
part 'model/verification.dart';
part 'model/verification_check.dart';
part 'model/verification_request.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
