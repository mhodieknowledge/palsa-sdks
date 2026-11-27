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
part 'api/push_api.dart';
part 'api/sending_domains_api.dart';
part 'api/verification_api.dart';

part 'model/add_sending_domain201_response.dart';
part 'model/add_sending_domain_request.dart';
part 'model/android_push_options.dart';
part 'model/balance.dart';
part 'model/blocker.dart';
part 'model/channel.dart';
part 'model/check_verification200_response.dart';
part 'model/check_verification_request.dart';
part 'model/confirm_push_app_ownership_request.dart';
part 'model/contact.dart';
part 'model/contact_create.dart';
part 'model/create_contact201_response.dart';
part 'model/create_contact201_response_data.dart';
part 'model/delete_contact200_response.dart';
part 'model/delete_contact200_response_data.dart';
part 'model/describe_mcp200_response.dart';
part 'model/device.dart';
part 'model/device_register.dart';
part 'model/device_registered.dart';
part 'model/device_targets.dart';
part 'model/error.dart';
part 'model/error_envelope.dart';
part 'model/get_balances200_response.dart';
part 'model/get_balances200_response_data.dart';
part 'model/get_notification200_response.dart';
part 'model/inline_object.dart';
part 'model/inline_object1.dart';
part 'model/inline_object2.dart';
part 'model/inline_object2_data.dart';
part 'model/inline_object2_data_failed_inner.dart';
part 'model/ios_push_options.dart';
part 'model/list_contacts200_response.dart';
part 'model/list_contacts200_response_data.dart';
part 'model/list_devices200_response.dart';
part 'model/list_devices200_response_data.dart';
part 'model/list_notifications200_response.dart';
part 'model/list_notifications200_response_data.dart';
part 'model/list_notifications200_response_meta.dart';
part 'model/list_push_apps200_response.dart';
part 'model/list_push_apps200_response_data.dart';
part 'model/list_push_topics200_response.dart';
part 'model/list_push_topics200_response_data.dart';
part 'model/list_push_topics200_response_data_topics_inner.dart';
part 'model/list_sending_domains200_response.dart';
part 'model/list_sending_domains200_response_data.dart';
part 'model/notification.dart';
part 'model/notification_summary.dart';
part 'model/push_app.dart';
part 'model/push_app_create.dart';
part 'model/quote.dart';
part 'model/quote_held_until.dart';
part 'model/quote_send200_response.dart';
part 'model/quote_sms.dart';
part 'model/quote_variants.dart';
part 'model/quoted_recipient.dart';
part 'model/recipients.dart';
part 'model/register_device201_response.dart';
part 'model/remove_sending_domain200_response.dart';
part 'model/remove_sending_domain200_response_data.dart';
part 'model/replace_push_app_key_request.dart';
part 'model/send_notification202_response.dart';
part 'model/send_push_app_ownership_code_request.dart';
part 'model/send_request.dart';
part 'model/send_result.dart';
part 'model/sending_domain.dart';
part 'model/sending_domain_records_inner.dart';
part 'model/skipped_recipient.dart';
part 'model/start_verification201_response.dart';
part 'model/unregister_device_request.dart';
part 'model/update_push_app_request.dart';
part 'model/verification.dart';
part 'model/verification_check.dart';
part 'model/verification_request.dart';
part 'model/web_push_options.dart';


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
