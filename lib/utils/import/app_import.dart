import 'dart:async';
import 'dart:io';
import 'package:easy_localization/easy_localization.dart' as loc;
import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
//import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hope_app/utils/lang/app_lang_key.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

//*********As & Show********** */
import 'package:http/http.dart' as http;
import "dart:convert" as convert;
import 'dart:developer' as div;
import 'package:path_provider/path_provider.dart' as dir;
import 'package:path/path.dart' as path;
import "package:validators/validators.dart" as validators;
//*********App Start ********** */

part '../../app_start/app_hope.dart';

// ! ************View********** */

part "../../view/splash/body.dart";
part "../../view/home/body.dart";
part '../../view/invoise/body.dart';
part '../../view/resident/body.dart';
part "../../view/family/body.dart";
part '../../view/user/body.dart';
part '../../view/auth/sign_in.dart';
part '../../view/auth/forgot_pass.dart';
part '../../view/auth/register.dart';

// ? ************Controller********** */
part "../../controller/c_api.dart";
part "../../controller/c_lang.dart";
part "../../controller/c_database.dart";
part "../../controller/c_auth.dart";
// ? ************Utils********** */
part '../route/app_route.dart';
part '../constant/app_image.dart';
part "../constant/app_icon.dart";
part "../svg/app_svg.dart";
part '../theme/app_theme.dart';
part '../theme/app_theme_chooes.dart';
part "../dime/app_dime.dart";
part "../lang/app_lang_config.dart";
part '../lang/app_lang.dart';
part '../app_restart/app_restart.dart';
part "../theme/app_color.dart";
part "../validators/app_validators.dart";
part "../firebase/app_firebase_connection.dart";
// ! ************Widget********** */
part '../../view/home/widgets/appbar/appbar_home.dart';
part '../../view/home/widgets/drawer/drawer_body.dart';
part '../../view/home/widgets/drawer/drawer_heder/drawe_heder.dart';
part '../../view/widgets/images/img_profile.dart';
part '../../view/widgets/loading/loading.dart';
part '../../view/home/widgets/drawer/drawer_setting/drawer_sittings.dart';
part '../../view/home/widgets/drawer/drawer_setting/drawer_settings_design.dart';
part '../../view/home/widgets/body_home/body_home.dart';
part '../../view/home/widgets/body_home/outline_painter_card.dart';
part '../../view/home/widgets/body_home/body_card.dart';
part '../../view/home/widgets/body_home/card_design.dart';
part '../../view/home/widgets/body_home/counting/counting.dart';
part '../../view/resident/resident_card_design.dart';
part '../../view/resident/resident_body.dart';
part '../../view/user/profile/profile.dart';
part '../../view/user/profile/design_card_contact_details.dart';
part '../../view/invoise/card_design_invoise.dart';
part "../../view/invoise/history_pay.dart";
part '../../view/family/family_body/family_card_design.dart';
part '../../view/family/family_body/famile_body.dart';
part '../../view/invoise/body_invoise.dart';
part '../../view/family/family_body/family_grid.dart';
part '../../view/resident/list_view.dart';
part '../../view/family/family_profile/family_profile.dart';
part "../../view/family/family_profile/family_profile_desgin_card.dart";
part '../../view/widgets/search_bar/search_bar.dart';
part '../../view/user/body_user/body_user.dart';
part "../../view/user/body_user/user_list_view.dart";
part '../../view/user/body_user/user_card_design.dart';
part '../../view/home/widgets/drawer/drawer_setting/lang/drawer_lang.dart';
part '../../view/widgets/tost/app_tost.dart';
part "../../view/resident/profile/profile.dart";
part '../../view/user/body_user/user.dart';
part '../../view/widgets/error/error_text.dart';
part '../../view/user/profile/design_card_details.dart';
part "../../view/auth/widgets/auth_forgot_pass.dart";
part "../../view/widgets/button/custom_btn.dart";
part "../../view/widgets/text_form/text_form_field.dart";
part "../../view/auth/widgets/auth_field_email.dart";
part "../../view/auth/widgets/auth_field_pass.dart";

//*********Model ********** */
part '../../model/users/m_users_app.dart';
part "../../model/users/m_users.dart";
part '../../model/users/user_details/m_user_details_app.dart';
part '../../model/users/user_details/m_user_details.dart';
part '../../model/residents/m_residents_app.dart';
part '../../model/residents/m_residents.dart';
part "../../model/auth/m_auth_user.dart";
// ? ************Api********** */
part '../../api/api_key.dart';
part "../../api/api_handle.dart";
part '../../api/api_end_point.dart';
/******************Data Base */
part '../database/model/m_users_details.dart';
part '../database/tabels/t_user_details.dart';
part '../database/connection/database_int.dart';
part '../database/query/app_query.dart';

/***********************Auto */
part "../../view/auth/widgets/auth_footer.dart";
