import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SplashPage
  {
    'kd968ve3': {
      'en': 'Home',
      'ar': '',
    },
  },
  // LoginPage
  {
    'fr212fgj': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    '3hi6hqhq': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'icqv3amw': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'h23jjqog': {
      'en': 'Forget Password',
      'ar': 'معلومات المريض',
    },
    '8kcoohrn': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'dupy3pad': {
      'en': 'Home',
      'ar': '',
    },
  },
  // PatientInformationPage
  {
    'p3kq3o10': {
      'en': 'National Id, Phone Number ,  Name',
      'ar': 'اسم المريض',
    },
    'nfr4oc12': {
      'en': 'Search',
      'ar': 'يبحث',
    },
    '15db48ui': {
      'en': 'Add New Patient',
      'ar': 'رفع',
    },
    '405jcjrl': {
      'en': 'Patient Information',
      'ar': 'معلومات المرض',
    },
    'u4pmk0tp': {
      'en': 'Home',
      'ar': '',
    },
  },
  // NewPatientPage
  {
    'ozwclka4': {
      'en': 'Person Information ',
      'ar': 'معلومات المريض',
    },
    'xdcleq0j': {
      'en': 'Patient Name',
      'ar': 'اسم المريض',
    },
    'c06eb7am': {
      'en': 'Age',
      'ar': 'عمر',
    },
    '6vpzaqee': {
      'en': '1',
      'ar': '',
    },
    '83h4scmi': {
      'en': '2',
      'ar': '',
    },
    '0jswkuqi': {
      'en': '3',
      'ar': '',
    },
    'sz25k4vi': {
      'en': '4',
      'ar': '',
    },
    '2pk0ms5q': {
      'en': '5',
      'ar': '',
    },
    '376qxnba': {
      'en': '6',
      'ar': '',
    },
    's4txv2qd': {
      'en': '7',
      'ar': '',
    },
    'qnlirkz1': {
      'en': '8',
      'ar': '',
    },
    '9nfftvdr': {
      'en': '9',
      'ar': '',
    },
    '92gm4h0d': {
      'en': '10',
      'ar': '',
    },
    '6rj5e5ou': {
      'en': '11',
      'ar': '',
    },
    'uewlos7u': {
      'en': '12',
      'ar': '',
    },
    'rglr9q6n': {
      'en': '13',
      'ar': '',
    },
    'xyhyn9t3': {
      'en': '14',
      'ar': '',
    },
    'rnupy6x2': {
      'en': 'Phone Number',
      'ar': 'رقم التليفون',
    },
    'h6yqcvoc': {
      'en': '07********',
      'ar': '',
    },
    'jl2ll37j': {
      'en': 'Clinic Notes ',
      'ar': 'ملاحظات العيادة',
    },
    'xt4w7uyb': {
      'en': 'Chronic Medical Illnesses',
      'ar': 'الأمراض الطبية المزمنة',
    },
    'jen931ig': {
      'en': 'Treatment',
      'ar': 'علاج',
    },
    '4t0qi9xf': {
      'en': 'Treatment',
      'ar': '',
    },
    'hjgzc4i8': {
      'en': 'usama',
      'ar': '',
    },
    'z9qwa77l': {
      'en': 'omar',
      'ar': '',
    },
    'lzwq3i58': {
      'en': 'khaled',
      'ar': '',
    },
    'vxvdilfw': {
      'en': 'ammar',
      'ar': '',
    },
    '6ozcv7q5': {
      'en': 'going',
      'ar': '',
    },
    'envcng1x': {
      'en': 'no',
      'ar': '',
    },
    '2n8pz4t0': {
      'en': 'fine',
      'ar': '',
    },
    'nn8yymql': {
      'en': 'Drug Allergy',
      'ar': 'حساسية من الدواء',
    },
    'nr33l3dm': {
      'en': 'History',
      'ar': 'تاريخ',
    },
    'wi35hah5': {
      'en': 'PMH',
      'ar': 'PMH',
    },
    'q4wsijt1': {
      'en': 'PSH',
      'ar': 'PSH',
    },
    'z2sy5veo': {
      'en': 'Family Hx',
      'ar': 'عائلة إتش إكس',
    },
    'eusssycj': {
      'en': 'Physical Exam',
      'ar': 'اختبار بدني',
    },
    'x5mk76tz': {
      'en': 'Labs',
      'ar': 'مختبرات',
    },
    '3l5dqjv3': {
      'en': 'Radiology',
      'ar': 'الأشعة',
    },
    '53najypc': {
      'en': 'Histopathology',
      'ar': 'التشريح المرضي',
    },
    'jiqeh740': {
      'en': 'Covering Party',
      'ar': ' جهة التغطية',
    },
    '3klgm8oa': {
      'en': 'Impression and Diagnosis',
      'ar': 'الانطباع والتشخيص',
    },
    'c732lzt5': {
      'en': 'Managment Plan',
      'ar': 'خطة الإدارة',
    },
    'd20o7bur': {
      'en': 'Add Another File',
      'ar': 'إضافة ملف آخر',
    },
    't8wirubd': {
      'en': 'Save',
      'ar': 'حفظ',
    },
    '0lkm87jc': {
      'en': 'Add New Patient ',
      'ar': 'إضافة مريض جديد',
    },
    'jldi6t0v': {
      'en': 'Home',
      'ar': '',
    },
  },
  // DrawerComponent
  {
    'dor348c3': {
      'en': 'Hello World',
      'ar': 'معلومات المريض',
    },
    '06v7pdlb': {
      'en': 'Patient Information',
      'ar': 'معلومات المريض',
    },
  },
  // Miscellaneous
  {
    'l6vbop4i': {
      'en': '',
      'ar': '',
    },
    'u3knk6hx': {
      'en': '',
      'ar': '',
    },
    '6lfd58cd': {
      'en': '',
      'ar': '',
    },
    'ad68owqo': {
      'en': '',
      'ar': '',
    },
    'hm23zoqm': {
      'en': '',
      'ar': '',
    },
    'q8m4be07': {
      'en': '',
      'ar': '',
    },
    'yy6d3nq9': {
      'en': '',
      'ar': '',
    },
    'pyynp7sm': {
      'en': '',
      'ar': '',
    },
    'yaj6qpte': {
      'en': '',
      'ar': '',
    },
    '0rvrqll9': {
      'en': '',
      'ar': '',
    },
    'aw8gqr4b': {
      'en': '',
      'ar': '',
    },
    'd8rz3l1s': {
      'en': '',
      'ar': '',
    },
    'pxe8p6nw': {
      'en': '',
      'ar': '',
    },
    'szn8pj7c': {
      'en': '',
      'ar': '',
    },
    '4w9je4be': {
      'en': '',
      'ar': '',
    },
    'jil6veft': {
      'en': '',
      'ar': '',
    },
    'ag5gqxx3': {
      'en': '',
      'ar': '',
    },
    'kz3ueszj': {
      'en': '',
      'ar': '',
    },
    '6z726vzj': {
      'en': '',
      'ar': '',
    },
    'kkafzrnb': {
      'en': '',
      'ar': '',
    },
    'teiwua0c': {
      'en': '',
      'ar': '',
    },
    'vfu1hfkb': {
      'en': '',
      'ar': '',
    },
    '34v8rgtr': {
      'en': '',
      'ar': '',
    },
    'luvsslhh': {
      'en': '',
      'ar': '',
    },
    'vqurbef4': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
