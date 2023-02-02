import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

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
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';
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
  // Registro
  {
    'wbkwfrz8': {
      'es': 'Crea una cuena para pertenecer a nuestra comunidad DNT',
      'en': '',
    },
    'codsdmab': {
      'es': 'Tu Nombre',
      'en': '',
    },
    'g0xtfcuq': {
      'es': 'Escribe tu nombre...',
      'en': '',
    },
    'wileuhar': {
      'es': 'Tu Email',
      'en': '',
    },
    'ub39xvtn': {
      'es': 'Escribe tu email...',
      'en': '',
    },
    '424xat4t': {
      'es': 'Usuario',
      'en': '',
    },
    'hh7bhlvg': {
      'es': 'Escribe un usuario...',
      'en': '',
    },
    'n3wqt87z': {
      'es': 'Código de País',
      'en': '',
    },
    'b18gsbj2': {
      'es': 'Seleccionar...',
      'en': '',
    },
    'a949ap6b': {
      'es': 'Teléfono',
      'en': '',
    },
    'q0609nlx': {
      'es': 'Teléfono',
      'en': '',
    },
    'n0dryqjb': {
      'es': 'Password',
      'en': '',
    },
    'da3zw4ft': {
      'es': 'Password',
      'en': '',
    },
    '25z5jo6i': {
      'es': 'Confirm Password',
      'en': '',
    },
    'mf2obxy0': {
      'es': 'Confirm Password',
      'en': '',
    },
    'c01wc7w3': {
      'es': 'Crear Cuenta',
      'en': '',
    },
    'cca6tzsm': {
      'es': '*',
      'en': '',
    },
    'uraq1v9n': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'f7unu8ki': {
      'es': '*',
      'en': '',
    },
    '7ybxzg3j': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '9w8u5dva': {
      'es': '*',
      'en': '',
    },
    '4ikne0b7': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'z4ryjoa6': {
      'es': '*',
      'en': '',
    },
    'k9bzhd6p': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '4okiaryh': {
      'es': '*',
      'en': '',
    },
    'vyazfx8r': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fa8lkk5i': {
      'es': '*',
      'en': '',
    },
    '4lc1bobn': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'dasuwnw3': {
      'es': 'TENGO UNA CUENTA',
      'en': '',
    },
    '0lqaahzu': {
      'es': 'Login',
      'en': '',
    },
  },
  // AllChat
  {
    'hcktb70c': {
      'es': 'Mensajes',
      'en': 'Posts',
    },
    '5alpa3wx': {
      'es': 'Usuarios',
      'en': '',
    },
    'ofuv3vt2': {
      'es': 'Usuarios Conectados',
      'en': 'Users online',
    },
    'axysanxu': {
      'es': 'Seleccione un usuario para chatear',
      'en': 'Select a friend to chat',
    },
    '35woaj8v': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // CrearStory
  {
    'lrt76pkz': {
      'es': 'Crear Story',
      'en': 'Create Story',
    },
    'ypyt303p': {
      'es': 'Descripsión...',
      'en': 'Description...',
    },
    '1aklpd3r': {
      'es': 'Foto / Video',
      'en': 'Photo / Video',
    },
    'lwuo16u7': {
      'es': 'Create Story',
      'en': 'create story',
    },
    '9qovnob8': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // PerfilTodos
  {
    'x2sqkloy': {
      'es': 'Seguir',
      'en': 'Follow',
    },
    'dgstoma3': {
      'es': 'Dejar de Seguir',
      'en': 'Stop following',
    },
    '25xjevur': {
      'es': 'Escribir',
      'en': 'Write',
    },
    '2gj5mccu': {
      'es': 'Seguir',
      'en': 'Follow',
    },
    'epf89amr': {
      'es': 'Dejar de Seguir',
      'en': 'Stop following',
    },
    'lltxa8t3': {
      'es': 'Mensaje',
      'en': 'Message',
    },
    'umlrh6y4': {
      'es': 'Publicaciones',
      'en': 'Publications',
    },
    '0obb1lqm': {
      'es': '2,493',
      'en': '',
    },
    '5tysvdjp': {
      'es': 'Seguidores',
      'en': 'followers',
    },
    'he3tw20y': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // PanelAdmin
  {
    'eyupte60': {
      'es': 'GESTOR DE USUARIOS TEAM DNT',
      'en': '',
    },
    'jtxebmo2': {
      'es': 'USUARIOS',
      'en': '',
    },
    '3hsiumlj': {
      'es': 'Todos',
      'en': '',
    },
    '5pzlm6vw': {
      'es': 'Nombre',
      'en': '',
    },
    'b70vz6uh': {
      'es': 'Email',
      'en': '',
    },
    'i42y4hg0': {
      'es': 'WhatsApp',
      'en': '',
    },
    'uxy9n68e': {
      'es': 'Acceso',
      'en': '',
    },
    'wvps3gh7': {
      'es': 'Team DNT',
      'en': '',
    },
    'oimaczgn': {
      'es': 'Comerciante',
      'en': '',
    },
    'b22i67ne': {
      'es': 'Representante',
      'en': '',
    },
    'bt7pxaip': {
      'es': 'Administrador',
      'en': '',
    },
    '66iw4s7a': {
      'es': 'Team DNT',
      'en': '',
    },
    'iggc3z7l': {
      'es': 'Nombre',
      'en': '',
    },
    'uwp5rkxd': {
      'es': 'Email',
      'en': '',
    },
    'lvm7vwnm': {
      'es': 'WhatsApp',
      'en': '',
    },
    'x5xsbjzx': {
      'es': 'Acceso',
      'en': '',
    },
    '746g9tis': {
      'es': 'Team DNT',
      'en': '',
    },
    'zs7b5ppk': {
      'es': 'Comerciante',
      'en': '',
    },
    'gxgnvn4u': {
      'es': 'Representante',
      'en': '',
    },
    '6xowqmxa': {
      'es': 'Administrador',
      'en': '',
    },
    '7kqf5l7t': {
      'es': 'Comerciantes',
      'en': '',
    },
    'ix9wf2c8': {
      'es': 'Nombre',
      'en': '',
    },
    'ki6fg71o': {
      'es': 'Email',
      'en': '',
    },
    'soc81b1w': {
      'es': 'WhatsApp',
      'en': '',
    },
    'yepuz2t3': {
      'es': 'Acceso',
      'en': '',
    },
    '4frfitg8': {
      'es': 'Team DNT',
      'en': '',
    },
    'n68wfiud': {
      'es': 'Comerciante',
      'en': '',
    },
    'sshzs2dl': {
      'es': 'Representante',
      'en': '',
    },
    'wmiedft6': {
      'es': 'Administrador',
      'en': '',
    },
    'x8j8iq1d': {
      'es': 'Representantes',
      'en': '',
    },
    'lixuv6pt': {
      'es': 'Nombre',
      'en': '',
    },
    'kccqh3qv': {
      'es': 'Email',
      'en': '',
    },
    'xupaxk4o': {
      'es': 'WhatsApp',
      'en': '',
    },
    'a24geo5i': {
      'es': 'Acceso',
      'en': '',
    },
    'bhtd1cfo': {
      'es': 'Team DNT',
      'en': '',
    },
    '5ms0ho32': {
      'es': 'Comerciante',
      'en': '',
    },
    '5xdbe91e': {
      'es': 'Representante',
      'en': '',
    },
    '6kckkk15': {
      'es': 'Administrador',
      'en': '',
    },
    'lqkvmp8u': {
      'es': 'Administradores',
      'en': '',
    },
    'acer4c5u': {
      'es': 'Nombre',
      'en': '',
    },
    'yfpjmayw': {
      'es': 'Email',
      'en': '',
    },
    'unog6r79': {
      'es': 'WhatsApp',
      'en': '',
    },
    '0q6j71gu': {
      'es': 'Acceso',
      'en': '',
    },
    'ppqfvmgv': {
      'es': 'Team DNT',
      'en': '',
    },
    'b4oxbxbb': {
      'es': 'Comerciante',
      'en': '',
    },
    'm8aepbza': {
      'es': 'Representante',
      'en': '',
    },
    '56fsiem9': {
      'es': 'Administrador',
      'en': '',
    },
    '6fzie0if': {
      'es': 'SOLICITUDES DNT',
      'en': '',
    },
    'f18l6kir': {
      'es': 'Usuario',
      'en': '',
    },
    'ei3t87dp': {
      'es': 'Empresa',
      'en': '',
    },
    '6bc88gug': {
      'es': 'Usuario',
      'en': '',
    },
    'goih9j6m': {
      'es': 'Fecha',
      'en': '',
    },
    'twug7nb9': {
      'es': 'Estado',
      'en': '',
    },
    'f8uhsmwc': {
      'es': 'SOLICITUDES DNT',
      'en': '',
    },
    'qlibnr40': {
      'es': 'Usuario',
      'en': '',
    },
    'zy58oegn': {
      'es': 'Empresa',
      'en': '',
    },
    'thtmbu73': {
      'es': 'Usuario',
      'en': '',
    },
    'mvxt92o0': {
      'es': 'Fecha',
      'en': '',
    },
    '3oaxddr2': {
      'es': 'Estado',
      'en': '',
    },
    'cmuzd457': {
      'es': 'GESTOR DE INTERFAZ',
      'en': '',
    },
    '8unibym2': {
      'es': 'TEAM DNT',
      'en': '',
    },
    'djq40fi1': {
      'es': 'Col 01',
      'en': '',
    },
    '810cb4ec': {
      'es': 'Col 02',
      'en': '',
    },
    'efg3rckd': {
      'es': 'EMPRESAS',
      'en': '',
    },
    'gtoub4m0': {
      'es': 'NOTICIAS DASHBOARD',
      'en': '',
    },
    'mgs3ps7e': {
      'es': 'Col 01',
      'en': '',
    },
    'xtnsl12o': {
      'es': 'Col 02',
      'en': '',
    },
    '76e3rn3n': {
      'es': 'GESTOR DE INTERFAZ',
      'en': '',
    },
    '8l41vmg3': {
      'es': 'TEAM DNT',
      'en': '',
    },
    'bxk67tgc': {
      'es': 'Col 01',
      'en': '',
    },
    '80o68bgq': {
      'es': 'Col 02',
      'en': '',
    },
    'nxsoxfed': {
      'es': 'EMPRESAS',
      'en': '',
    },
    'q79cip2k': {
      'es': 'NOTICIAS DASHBOARD',
      'en': '',
    },
    '1hc2bwov': {
      'es': 'Col 01',
      'en': '',
    },
    'a9whb5u7': {
      'es': 'Col 02',
      'en': '',
    },
    'eo7egz16': {
      'es': 'GESTOR DE INTERFAZ',
      'en': '',
    },
    'ij3y9dq9': {
      'es': 'TEAM DNT',
      'en': '',
    },
    'c19iti5w': {
      'es': 'Col 01',
      'en': '',
    },
    '7v1hgiz0': {
      'es': 'Col 02',
      'en': '',
    },
    'orz4ckmb': {
      'es': 'EMPRESAS',
      'en': '',
    },
    '4d2kebmr': {
      'es': 'NOTICIAS DASHBOARD',
      'en': '',
    },
    '9i3id0za': {
      'es': 'Col 01',
      'en': '',
    },
    '1aq39hgb': {
      'es': 'Col 02',
      'en': '',
    },
    'jlo8xdan': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Perfil
  {
    'xxak9vba': {
      'es': 'Editar perfil',
      'en': 'Edit profile',
    },
    'xmykcsm5': {
      'es': 'Mensajes',
      'en': 'Posts',
    },
    'd4vhccul': {
      'es': 'Cargar Foto Portada',
      'en': 'Upload Cover Photo',
    },
    'relkclex': {
      'es': 'Editar perfil',
      'en': 'Edit profile',
    },
    'qfxf0kgw': {
      'es': 'Mensaje',
      'en': 'Message',
    },
    'k4rw41de': {
      'es': 'Publicaciones',
      'en': 'Publications',
    },
    'nyvco5t9': {
      'es': '2,493',
      'en': '',
    },
    'widqk6hk': {
      'es': 'Favoritos',
      'en': 'Favorites',
    },
    'q6wmawvj': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Dashboard
  {
    'neolrumv': {
      'es': 'Dashboard',
      'en': '',
    },
    'cp6z83xj': {
      'es': 'Digital Networkers Team',
      'en': '',
    },
    'uiwwqk55': {
      'es':
          'Si vas a emprender, asegúrate de tener un equipo que te dé valor adicional a lo que la compañia puede propocionarte... Únete con nosotros y descubre las herramientas de tendencias digitales en negocios online y MLM.',
      'en': '',
    },
    '7yck98zo': {
      'es': 'HERRAMIENTAS Y RECURSOS',
      'en': '',
    },
    'cp0ytdk3': {
      'es': 'Conoce las herramientas en nuestra app',
      'en': '',
    },
    'eh71xvbj': {
      'es': 'Entrenamientos',
      'en': '',
    },
    'dcqtjh32': {
      'es': 'Plan de Acción',
      'en': '',
    },
    'ybovc7ez': {
      'es': 'Constructor',
      'en': '',
    },
    'iw1q1zm6': {
      'es': 'Agenda',
      'en': '',
    },
    '8hwxrinx': {
      'es': 'Eventos',
      'en': '',
    },
    'a1ttirc1': {
      'es': 'DiseñaThor',
      'en': '',
    },
    'gv6jubag': {
      'es': 'Recursos',
      'en': '',
    },
    'fdy5k4u2': {
      'es': 'COLECCIÓN DE NEGOCIOS',
      'en': '',
    },
    '1cmd6b1m': {
      'es':
          'Visualiza y aterriza los negocios digitales, con la más alta calidad y pasión, estando en la vanguardia y los estándares que el mundo HOY necesita.',
      'en': '',
    },
    'fexofg9l': {
      'es': 'FUNNEL',
      'en': '',
    },
    'w8aqrdqa': {
      'es': 'ENTRAR',
      'en': '',
    },
    '1ucfiaw8': {
      'es': 'SERVICIOS (Opcional)',
      'en': '',
    },
    'u1z4f6fp': {
      'es':
          'Encuentra servicios opcionales que requiera para expandir su negocio o desee utilizar nuestros servicios financieros.',
      'en': '',
    },
    'fulahdob': {
      'es': 'Wallet DNT',
      'en': '',
    },
    'uqv7t333': {
      'es': 'CREAR',
      'en': '',
    },
    'm65tfw1w': {
      'es': 'ENTRAR',
      'en': '',
    },
    'w2oifwhq': {
      'es': 'CONOCE A NUESTRO EQUIPO',
      'en': 'MEET OUR TEAM',
    },
    'pxj1pixg': {
      'es':
          'Más de 50 años de experiencia en nuestro equipo, dispuestos a compartir contigo sus conocimientos y experiencias, llegando juntos al éxito continuo en los negocios digitales reales y sostenibles.',
      'en':
          'More than 50 years of experience in our team, willing to share their knowledge and experiences with you, together reaching continuous success in real and sustainable digital businesses.',
    },
    'uebn3nmq': {
      'es': 'ÚLTIMAS NOVEDADES',
      'en': 'LAST POST',
    },
    '811h1f0n': {
      'es': 'Testimonios y novedades en un solo lugar...',
      'en': '',
    },
    '1uzt3oz2': {
      'es': '15',
      'en': '',
    },
    'h9ezw9qv': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Business
  {
    'xaqzxipk': {
      'es': 'COLECCIÓN DE NEGOCIOS',
      'en': '',
    },
    'wl7cake6': {
      'es':
          'Visualiza y aterriza los negocios digitales, con la más alta calidad y pasión, estando en la vanguardia y los estándares que el mundo HOY necesita.',
      'en': '',
    },
    'r7rkjf9g': {
      'es': 'FUNNEL',
      'en': '',
    },
    '9fayqhbd': {
      'es': 'ENTRAR',
      'en': '',
    },
    'llow9lj0': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Herramientas
  {
    'bdju9a7y': {
      'es': 'HERRAMIENTAS Y RECURSOS',
      'en': '',
    },
    'orkc4xw7': {
      'es': 'Conoce las herramientas en nuestra app',
      'en': '',
    },
    'w0t4y4hy': {
      'es': 'Entrenamientos',
      'en': '',
    },
    'wq7q5c8a': {
      'es': 'Plan de Acción',
      'en': '',
    },
    'fitmtxj2': {
      'es': 'Constructor',
      'en': '',
    },
    'ni4vn4vk': {
      'es': 'Agenda',
      'en': '',
    },
    'st9vd4m4': {
      'es': 'Eventos',
      'en': '',
    },
    '85prp81q': {
      'es': 'DiseñaThor',
      'en': '',
    },
    'geko1rpm': {
      'es': 'Recursos',
      'en': '',
    },
    'itkk9y5k': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // PlanAccion
  {
    '67fzvfa0': {
      'es': 'Plan de Acción',
      'en': 'Action plan',
    },
    'k5hopf2q': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // entrenamientos
  {
    'sta8knlq': {
      'es': 'Entrenamientos',
      'en': 'training',
    },
    'wx7y6wzf': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // expans
  {
    '8efbpv82': {
      'es': 'SISTEMA DE EXPANSIÓN Y ENTRENAMIENTOS',
      'en': 'MEET OUR TEAM',
    },
    'k57v1s7x': {
      'es': 'Área de entrenamientos y desarrollo personal.',
      'en':
          'More than 50 years of experience in our team, willing to share their knowledge and experiences with you, together reaching continuous success in real and sustainable digital businesses.',
    },
    '5c1q3oya': {
      'es': 'Entrenamientos',
      'en': 'training',
    },
    'dclodeby': {
      'es': 'Plan de Acción',
      'en': 'Action plan',
    },
    'nx9nipki': {
      'es': 'Entrenamientos',
      'en': 'training',
    },
    'ffyvgcia': {
      'es': 'Plan de Acción',
      'en': 'Action plan',
    },
    'pzps3asz': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // DisenaThor
  {
    '6bpdmvsg': {
      'es': 'DISEÑATHOR',
      'en': 'MEET OUR TEAM',
    },
    '08tooqtc': {
      'es': 'Crea impresionantes imágenes con unos cuantos clicks.',
      'en':
          'More than 50 years of experience in our team, willing to share their knowledge and experiences with you, together reaching continuous success in real and sustainable digital businesses.',
    },
    'uj7isnfx': {
      'es': 'Entrenamientos',
      'en': 'training',
    },
    'o946rqso': {
      'es': 'Plan de Acción',
      'en': 'Action plan',
    },
    'w9p3wnm8': {
      'es': 'Crear Diseño',
      'en': 'Create Design',
    },
    'n6f6uwj3': {
      'es': 'Crear Diseño',
      'en': 'Create Design',
    },
    'ay7h7v00': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Recursos
  {
    'd1a0ao5x': {
      'es': 'RECURSOS DESCARGABLES',
      'en': 'MEET OUR TEAM',
    },
    'n7jvxhbr': {
      'es': 'Recursos descargables para promover tu negocio en línea.',
      'en':
          'More than 50 years of experience in our team, willing to share their knowledge and experiences with you, together reaching continuous success in real and sustainable digital businesses.',
    },
    '834e3ln8': {
      'es': 'DESCARGABLES - IMÁGENES / POST',
      'en': 'DOWNLOADABLE - IMAGES / POST',
    },
    '0pqiss3y': {
      'es': 'DESCARGABLES - IMÁGENES / HISTORIAS',
      'en': 'DOWNLOADABLES - IMAGES / STORIES',
    },
    '4bn0e74l': {
      'es': 'DESCARGABLES - VIDEOS / HISTORIAS',
      'en': 'DOWNLOADABLE - VIDEOS / STORIES',
    },
    'rlzsvgws': {
      'es': 'LOGOS - QUANTUM / DNT',
      'en': 'LOGOS - QUANTUM / DNT',
    },
    'gl6284l0': {
      'es': 'PDF - QUANTUM / DNT',
      'en': 'PDF - QUANTUM / DNT',
    },
    'vvenvy1v': {
      'es': 'DESCARGABLES - IMÁGENES / POST',
      'en': 'DOWNLOADABLE - IMAGES / POST',
    },
    'j4fxpc4j': {
      'es': 'DESCARGABLES - IMÁGENES / HISTORIAS',
      'en': 'DOWNLOADABLES - IMAGES / STORIES',
    },
    'kvr61xid': {
      'es': 'DESCARGABLES - VIDEOS / HISTORIAS',
      'en': 'DOWNLOADABLE - VIDEOS / STORIES',
    },
    'wvfrzn1e': {
      'es': 'LOGOS - QUANTUM / DNT',
      'en': 'LOGOS - QUANTUM / DNT',
    },
    'qacmkvlp': {
      'es': 'PDF - QUANTUM / DNT',
      'en': 'PDF - QUANTUM / DNT',
    },
    'n2sb2mze': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // RecuperarContrasena
  {
    'bi8sxex6': {
      'es':
          'Le enmbiamos un correo electrónico para restablecer su contraseña, ingrese su correo electrónico asociado a su cuenta.',
      'en': '',
    },
    'ucj9cvex': {
      'es': 'Tu Email',
      'en': '',
    },
    'ensuwfnh': {
      'es': 'Enviar Enlace',
      'en': '',
    },
    'p3rnhfa0': {
      'es': 'Restablecer\nContraseña',
      'en': '',
    },
    '823qc2gx': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // LlamadaPoder
  {
    'uh5885p6': {
      'es': 'Llamada de Poder',
      'en': 'Power Call',
    },
    'gxa2w5op': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Ajustss
  {
    '4jy4m0px': {
      'es': 'AJUSTES DE CUENTA DE USUARIO',
      'en': 'MEET OUR TEAM',
    },
    't8uwcvfb': {
      'es': 'Edita y personaliza tu app.',
      'en':
          'More than 50 years of experience in our team, willing to share their knowledge and experiences with you, together reaching continuous success in real and sustainable digital businesses.',
    },
    'e6x1crl2': {
      'es': 'Ajustes de Perfil',
      'en': 'Profile Settings',
    },
    'rjruuntc': {
      'es': 'Editar perfil de usuario',
      'en': 'Edit user profile',
    },
    'gcszrfez': {
      'es': 'Subir foto perfil',
      'en': 'Upload profile photo',
    },
    '8z4yltos': {
      'es': 'Tu Nombre',
      'en': 'Your name',
    },
    'n6rp13p2': {
      'es': 'Tu Email',
      'en': 'Your email',
    },
    'x6q67zw8': {
      'es': 'Nombre de Usuario',
      'en': 'Username',
    },
    'grsayrtu': {
      'es': 'Código País',
      'en': 'Country Code',
    },
    '43h2cnra': {
      'es': 'Número WhatsApp',
      'en': 'WhatsApp number',
    },
    'r5b1929r': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'wbyqa2jo': {
      'es': 'Field is required',
      'en': '',
    },
    'vbw5rmkz': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '6qbnsdjl': {
      'es': 'Field is required',
      'en': '',
    },
    'y4vkd1pg': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '4mnyiizc': {
      'es': '*',
      'en': '',
    },
    'lpphgesh': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'dw721q3h': {
      'es': 'Field is required',
      'en': '',
    },
    'ydyn0o49': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mik5iz45': {
      'es': 'Mostrar Disclaimer',
      'en': 'Show Disclaimer',
    },
    'ptekb9s0': {
      'es': 'Español',
      'en': 'Spanish',
    },
    '7r5ul721': {
      'es': 'Inglés',
      'en': 'English',
    },
    'd6e17cl2': {
      'es': 'Ajustes de Seguridad',
      'en': 'Security Settings',
    },
    'b5ree65x': {
      'es':
          'Restablece tu  password mediante tu email asociado a tu cuenta, te enviaremos un correo electrónico con el enlace.',
      'en': 'Edit user profile',
    },
    'nvqm9xfa': {
      'es': 'Tu Email',
      'en': '',
    },
    '1h50cjxj': {
      'es': 'Enviar Enlace',
      'en': 'Edit profile',
    },
    'lqj2f8tj': {
      'es': 'Verificación  Biométrica',
      'en': 'Edit user profile',
    },
    'pdtvt5ax': {
      'es': 'Activar',
      'en': 'Edit profile',
    },
    '7l0wbnev': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Eventss
  {
    '18fuhtrj': {
      'es': 'EVENTOS EN LÍNEA',
      'en': 'MEET OUR TEAM',
    },
    'c4aixzjy': {
      'es':
          'Accede a todos los eventos más importantes del negocio, recibe notificaciones en WhatsApp 15 minutos antes.',
      'en':
          'More than 50 years of experience in our team, willing to share their knowledge and experiences with you, together reaching continuous success in real and sustainable digital businesses.',
    },
    'd3owdy5q': {
      'es': 'Presentaciones de Negocios',
      'en': 'Business Presentations',
    },
    'mtlkvwaq': {
      'es':
          'Regístrate para recibir notificaciones 15 y 30 minutos antes de iniciar este evento, recibirás el enlace de acceso por Email y WhatsApp\n\nHORA: 20 Hrs. Perú Lima.\nDías: Lunes, sábado y domingo.',
      'en':
          'Sign up to receive notifications 15 and 30 minutes before starting this event, you will receive the access link by Email and WhatsApp\n\nTIME: 8:00 p.m. Lima Peru.\nDays: Monday, Saturday and Sunday.',
    },
    'z0efdxgv': {
      'es': 'Llamada de Poder',
      'en': 'Power Call',
    },
    '3pgt1kfp': {
      'es':
          'Regístrate para recibir notificaciones 15 y 30 minutos antes de iniciar este evento, recibirás el enlace de acceso por Email y WhatsApp\n\nHORA: 11 Hrs. Perú Lima.\nDías: Lunes y jueves.',
      'en':
          'Sign up to receive notifications 15 and 30 minutes before starting this event, you will receive the access link by Email and WhatsApp\n\nTIME: 11 a.m. Lima Peru.\nDays: Monday and Thursday.',
    },
    '4g4zuckc': {
      'es': 'Clases de Trading',
      'en': 'Trading Classes',
    },
    'k3d3xkwk': {
      'es':
          'Regístrate para recibir notificaciones 15 y 30 minutos antes de iniciar este evento, recibirás el enlace de acceso por Email y WhatsApp\n\nHORA:21 Hrs. Perú Lima.\nDías: Martes y Jueves',
      'en':
          'Sign up to receive notifications 15 and 30 minutes before starting this event, you will receive the access link by Email and WhatsApp\n\nTIME: 21 Hrs. Lima Peru.\nDays: Tuesday and Thursday',
    },
    'cjcvw4ir': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // claseTrading
  {
    'zdtfgefi': {
      'es': 'Clases de Trading',
      'en': 'Trading Classes',
    },
    'k49qi75e': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Presentaciones
  {
    'oi168xoo': {
      'es': 'Presentaciones de Negocios',
      'en': 'Business Presentations',
    },
    'il4l9kt1': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // ConstructorFunnels
  {
    '4hs9rk56': {
      'es': 'CONSTRUCTOR DE FUNNELS',
      'en': '',
    },
    'suhqob85': {
      'es':
          'Visualiza y aterriza los negocios digitales, con la más alta calidad y pasión, estando en la vanguardia y los estándares que el mundo HOY necesita.',
      'en': '',
    },
    'qd64rshf': {
      'es': 'MIS FUNNELS',
      'en': 'User Identity Verification',
    },
    'tmn4rlvo': {
      'es': 'Tu funnel esta a la espera de la aprovacion de un administrador',
      'en': '',
    },
    'lq1rjda2': {
      'es': 'INFORMACION DE LA EMPRESA',
      'en': '',
    },
    'kf3n8ai3': {
      'es': 'Registrarme',
      'en': '',
    },
    '3pm55ff5': {
      'es':
          'Analiza la información y toma una decisión sabia para invertir o promover un negocio.',
      'en': '',
    },
    'wx2h5349': {
      'es': 'Empresa',
      'en': '',
    },
    'uh66zeri': {
      'es': 'Inicio de Operaciones',
      'en': '',
    },
    'epfwdt1s': {
      'es': 'N° de Registro Legal',
      'en': '',
    },
    'q55c8sx2': {
      'es': 'Direccion Fiscal.',
      'en': '',
    },
    'jkbk2u8d': {
      'es': 'Sitio Web Oficial',
      'en': '',
    },
    'zvt0s8cu': {
      'es': 'CEO',
      'en': '',
    },
    'mbu8mu3q': {
      'es': 'Nombre',
      'en': '',
    },
    '7pvgcmiy': {
      'es': 'Nacionalidad',
      'en': '',
    },
    '1tv3qqp4': {
      'es': 'N° de Identificacion',
      'en': '',
    },
    'yi7v2xcd': {
      'es': 'Cargo',
      'en': '',
    },
    'tpernv7p': {
      'es': 'Pool de Liquidez',
      'en': '',
    },
    '5axg7zq4': {
      'es': 'Pool 01',
      'en': '',
    },
    'anayn0yx': {
      'es': 'Pool 02',
      'en': '',
    },
    'pi0hkipv': {
      'es': 'Pool 02',
      'en': '',
    },
    'g90nlca5': {
      'es': 'Pool 02',
      'en': '',
    },
    'asdu60iu': {
      'es': 'Datos Financieros',
      'en': '',
    },
    'z48ewack': {
      'es': 'Usuarios Activos',
      'en': '',
    },
    'f9rqwy6f': {
      'es': 'Rentabilidad',
      'en': '',
    },
    'ymqrk90d': {
      'es': 'Liquidez de la Empresa',
      'en': '',
    },
    '6mp0podb': {
      'es': 'Proyeccion',
      'en': '',
    },
    '3n75dmqb': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Exchange
  {
    'nkw5vgjc': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // VerificacionID
  {
    'fdxrstzb': {
      'es': 'Ajustes',
      'en': 'settings',
    },
    'vwofh9mx': {
      'es': 'Ajustes',
      'en': 'settings',
    },
    'llnr5frf': {
      'es': '1',
      'en': '1',
    },
    'o5tjz7v6': {
      'es': '1',
      'en': '1',
    },
    '8h2tl6sg': {
      'es': 'Wallet DNT',
      'en': 'DNT Wallet',
    },
    '6a2r0b1x': {
      'es': 'Crear Post',
      'en': 'Create Post',
    },
    'pdvjbf00': {
      'es': 'Verificación de Identidad',
      'en': 'Identity Verification',
    },
    'kisegoxn': {
      'es': 'Verificación de Identidad de usuario',
      'en': 'User Identity Verification',
    },
    'bv2wu64t': {
      'es': 'Nacionalidad',
      'en': 'Nationality',
    },
    'gty39kx9': {
      'es': 'Nombre completo',
      'en': 'Full name',
    },
    '0uq09dbs': {
      'es': 'Carnet Identidad',
      'en': 'Identity card',
    },
    'mav7u3d4': {
      'es': 'Pasaporte',
      'en': 'Passport',
    },
    'qy2n3i0s': {
      'es': 'Licencia de Conducir',
      'en': 'Driver\'s license',
    },
    'fpdjizq6': {
      'es': 'Seleccione el tipo de documento',
      'en': 'Select the type of document',
    },
    '1zrvjb75': {
      'es': 'Número de documento',
      'en': 'Document number',
    },
    'tfgm75tx': {
      'es': 'Dirección de residencia',
      'en': 'Residence address',
    },
    'z7ne26yy': {
      'es': 'Subir foto frontal',
      'en': 'upload front photo',
    },
    'owl1nboa': {
      'es': 'Subir foto reverso',
      'en': 'Upload reverse photo',
    },
    'kuelo7sy': {
      'es': 'Subir foto selfi',
      'en': 'upload selfie photo',
    },
    'qoi2tbt6': {
      'es': 'Enviar Documentos',
      'en': 'Send documents',
    },
    'avry92sf': {
      'es': 'Campo requerido',
      'en': 'Required field',
    },
    'iz4v6tak': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'leeztdhe': {
      'es': 'Field is required',
      'en': 'Field is required',
    },
    'pes4ode9': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    '5thkby9r': {
      'es': 'Field is required',
      'en': 'Field is required',
    },
    '4a7yvz1l': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'kqk0i73g': {
      'es': 'Field is required',
      'en': 'Field is required',
    },
    'hdm3m31q': {
      'es': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'uotx4uym': {
      'es': 'Verificación de Identidad de usuario',
      'en': 'User Identity Verification',
    },
    'vomr7kge': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // FunnnelGeneral
  {
    'zrbp632h': {
      'es':
          '\"SER, HACER y TENER son condiciones humanas, seguramente te enfocas en HACER y TENER, Te ofrezco recuperes tu SER y con plenitud construyamos negocios sanos\"',
      'en': '',
    },
    '7jh1l0ug': {
      'es': 'WhatsApp',
      'en': '',
    },
    'u7oue16r': {
      'es': 'Telegram',
      'en': '',
    },
    'uceb0bun': {
      'es': 'Instagram',
      'en': '',
    },
    'kj8u4bz5': {
      'es': 'Facebook',
      'en': '',
    },
    'rb4nycrk': {
      'es': 'WhatsApp',
      'en': '',
    },
    '24y48x4o': {
      'es': 'Telegram',
      'en': '',
    },
    '3zjm7ojf': {
      'es': 'Facebook',
      'en': '',
    },
    'xcun2x5a': {
      'es': 'Instagram',
      'en': '',
    },
    '8gowrbh6': {
      'es': 'Alcanza el Éxito con la Estrategia Desarrollada por Team DNT.',
      'en': '',
    },
    '4zexmwxz': {
      'es':
          'Una comunidad comprometida en compartir su estrategia, que te permita tener un estilo de vida que te mereces.',
      'en': '',
    },
    '9sy5cbjt': {
      'es': 'Alcanza el Éxito con la Estrategia Desarrollada por Team DNT.',
      'en': '',
    },
    '4jmpay4g': {
      'es':
          'Una comunidad comprometida en compartir su estrategia, que te permita tener un estilo de vida que te mereces.',
      'en': '',
    },
    'vxnbdav7': {
      'es': 'CONOCE NUESTRA ESTRATÉGIA',
      'en': '',
    },
    'uq9ovp9f': {
      'es': 'Home',
      'en': '',
    },
  },
  // EditarFunnel
  {
    '6k5vg7ot': {
      'es': 'EDITAR FUNNEL',
      'en': 'MEET OUR TEAM',
    },
    '2l4f9kqp': {
      'es': 'Personaliza tu funnel y comparte en tus redes sociales.',
      'en':
          'More than 50 years of experience in our team, willing to share their knowledge and experiences with you, together reaching continuous success in real and sustainable digital businesses.',
    },
    'lbviwrrz': {
      'es': 'Editor',
      'en': 'training',
    },
    'ne9oquge': {
      'es': 'EDITAR FUNNEL',
      'en': 'User Identity Verification',
    },
    '5bbn6hdb': {
      'es': 'COFIGURACIONES GENERALES',
      'en': 'User Identity Verification',
    },
    '1ppwnzz6': {
      'es': 'GUARDAR',
      'en': 'Edit profile',
    },
    'mrrnlj5z': {
      'es': 'Titulo',
      'en': '',
    },
    'v3razj4p': {
      'es': '',
      'en': '',
    },
    '0gw1gvzy': {
      'es': '',
      'en': '',
    },
    '2kwrqvao': {
      'es': 'Dirección URL',
      'en': '',
    },
    'zn9p7ums': {
      'es': '',
      'en': '',
    },
    'r1znosys': {
      'es': '',
      'en': '',
    },
    'xoljyzju': {
      'es': 'Descripción',
      'en': '',
    },
    'o5rylho6': {
      'es': '',
      'en': '',
    },
    '6yeflhnb': {
      'es': '',
      'en': '',
    },
    'z2sqan59': {
      'es': 'PROSPECCIÓN DEL NEGOCIO',
      'en': 'User Identity Verification',
    },
    'dr3at797': {
      'es': 'GUARDAR',
      'en': 'Edit profile',
    },
    'g8lf42d2': {
      'es': 'Enlace de Referido',
      'en': '',
    },
    '7lu71o22': {
      'es': '',
      'en': '',
    },
    '3leaqw32': {
      'es': '',
      'en': '',
    },
    'nqrrmz3p': {
      'es': 'REDES SOCIALES',
      'en': 'User Identity Verification',
    },
    '0evh16lf': {
      'es': 'GUARDAR',
      'en': 'Edit profile',
    },
    'gglz1f2y': {
      'es': 'Facebook (usuario)',
      'en': '',
    },
    '3pwkagsf': {
      'es': '',
      'en': '',
    },
    'ud2jx2a0': {
      'es': '',
      'en': '',
    },
    'kt7kj5xz': {
      'es': 'Instagram (usuario)',
      'en': '',
    },
    'frf51wjd': {
      'es': '',
      'en': '',
    },
    '10c7muwk': {
      'es': '',
      'en': '',
    },
    '1ksip4o2': {
      'es': 'Código País (+504)',
      'en': '',
    },
    '8fs480zj': {
      'es': 'Seleccionar...',
      'en': '',
    },
    'mqsv4psb': {
      'es': 'WhatsApp (987654321)',
      'en': '',
    },
    'nh1pmqqx': {
      'es': '',
      'en': '',
    },
    'akahcmnf': {
      'es': '',
      'en': '',
    },
    'u0trypko': {
      'es': 'Mensaje WhatsApp',
      'en': '',
    },
    '4lpdvx1e': {
      'es': '',
      'en': '',
    },
    '0lx0b2ez': {
      'es': 'Escribe un mensaje de innicio...',
      'en': '',
    },
    '76q9wzmz': {
      'es': 'Usuario de Telegram (usuario)',
      'en': '',
    },
    'cycj9hgy': {
      'es': '',
      'en': '',
    },
    'txzxfkxr': {
      'es': '',
      'en': '',
    },
    '1ibwqlpg': {
      'es': 'DATOS PERSOALES',
      'en': 'User Identity Verification',
    },
    'h82ehf23': {
      'es': 'GUARDAR',
      'en': 'Edit profile',
    },
    'io1klumn': {
      'es': 'Nombre',
      'en': '',
    },
    'bpq7a3is': {
      'es': '',
      'en': '',
    },
    'lq5s3t5e': {
      'es': '',
      'en': '',
    },
    'xy1zb8hj': {
      'es': 'Foto de Perfil',
      'en': '',
    },
    'emrzkx55': {
      'es': 'Biografía',
      'en': '',
    },
    'oc7s98hf': {
      'es': '',
      'en': '',
    },
    'm2ers4ll': {
      'es': 'Describe tu perfil en el negocio que promocionas...',
      'en': '',
    },
    '6i3b9160': {
      'es': 'MIS PROSPECTOS',
      'en': '',
    },
    'xc2u27tm': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Funnnel
  {
    'ws0lslvs': {
      'es': 'DIGITAL',
      'en': '',
    },
    '6aag1kvm': {
      'es': 'NETWORKERS',
      'en': '',
    },
    '24i0q0cd': {
      'es': 'TEAM',
      'en': '',
    },
    'ni9ehg9a': {
      'es':
          'El Equipo Digital Networkers, da la gran oportunidad de integrarte en una comunidad internacional de desarrollo tecnológico.',
      'en': '',
    },
    'd0dy1h0b': {
      'es':
          'Visualiza y aterriza los negocios digitales, con la más alta calidad y pasión, estando en la vanguardia y los estándares que el mundo HOY necesita.',
      'en': '',
    },
    'b955ooce': {
      'es': '¡Se Parte de nuestra comunidad!',
      'en': '',
    },
    'mt0h8mfv': {
      'es': 'HERRAMIENTAS',
      'en': '',
    },
    '23s0dtwt': {
      'es': 'Esto te ofrecemos',
      'en': '',
    },
    'uelmwybo': {
      'es':
          'Concentrémonos en la gratitud y el crecimiento para que podamos vivir vidas más sanas, ricas, satisfactorias, apasionadas y con propósito, para que podamos ayudar a otros a hacer lo mismo. Ya sea que eso signifique triunfar en los negocios, reavivar su relación o descubrir quién es realmente.',
      'en': '',
    },
    'ibxkt83c': {
      'es': 'Entrenamientos',
      'en': '',
    },
    'kb47bejd': {
      'es':
          'Acceso a un área de entrenamientos de alto valor para duplicar tu liderazgo y potenciar tus habilidades',
      'en': '',
    },
    '9650lqkg': {
      'es': 'Plan de Acción',
      'en': '',
    },
    '7c32lq27': {
      'es':
          'Sumérgete a un plan de acción, y opten resultados desde tus primeros 15 días de pertenecer a nuestro equipo.',
      'en': '',
    },
    '4tlqbrdd': {
      'es': 'Constructor',
      'en': '',
    },
    'iemezg6h': {
      'es':
          'Potente constructor de funnels personalizados para gestionar y promover tus negocios en línea.',
      'en': '',
    },
    'gzqjv1s6': {
      'es': 'Eventos',
      'en': '',
    },
    'ay914avi': {
      'es':
          'Accede a todos los eventos más importantes del negocio, recibe notificaciones en WhatsApp 15 minutos antes.',
      'en': '',
    },
    '9bcs0i1c': {
      'es': 'DiseñaThor',
      'en': '',
    },
    '3go2qqki': {
      'es':
          'Sistema canvas para crear imagenes de bienvenida a tus nuevos socios dentro de tu negocio que promocionas.',
      'en': '',
    },
    'iuh7uv88': {
      'es': 'Agenda Personal',
      'en': '',
    },
    '6fnfgs9i': {
      'es':
          'Gestiona tu tiempo con nuestro sistema de Agenday logra tener una rutina sana en tu día a día.',
      'en': '',
    },
    'u8xkx093': {
      'es': 'Recursos',
      'en': '',
    },
    'xbsv8rhe': {
      'es': 'Encuentra los recursos descargables para promover tu negocio',
      'en': '',
    },
    '5ytcka9w': {
      'es': 'USUARIOS',
      'en': '',
    },
    'pgfjr1ty': {
      'es': 'Últimos usuarios registrados',
      'en': '',
    },
    'exm5i4ko': {
      'es':
          'Una comunidad con valor agregado, cuenta con usuarios que usan nuestras herramientas digitales.',
      'en': '',
    },
    'gl6r6lvd': {
      'es': 'SOCIAL DNT',
      'en': '',
    },
    'v7dh1vx9': {
      'es': 'Noticias y novedades de los líderes.',
      'en': '',
    },
    'g4mbl911': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    '34c049ha': {
      'es': 'Testimonios',
      'en': '',
    },
    '96x3tqa2': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'pqv0dcur': {
      'es': 'Eventos',
      'en': '',
    },
    'n0k5peml': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    '8ibft20x': {
      'es': 'Noticias',
      'en': '',
    },
    'rr6ui3vt': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    '7v5te0pl': {
      'es': 'Chat Privado',
      'en': '',
    },
    'idlhew34': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'innx7795': {
      'es': 'Comentarios',
      'en': '',
    },
    'ua9otl3i': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'v8p8e59b': {
      'es': 'Favoritos',
      'en': '',
    },
    'koj3588l': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'objdsut0': {
      'es': 'Testimonios',
      'en': '',
    },
    'sxri9ot6': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'm4220nx3': {
      'es': 'Eventos',
      'en': '',
    },
    'xpdxf67d': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'w1belp0v': {
      'es': 'Noticias',
      'en': '',
    },
    '9jsw84be': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'cz7t1bal': {
      'es': 'Chat Privado',
      'en': '',
    },
    'rjoqpv9z': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'ocmi7tll': {
      'es': 'Comentario',
      'en': '',
    },
    'rprnawlb': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    '044syj33': {
      'es': 'Favoritos',
      'en': '',
    },
    'g12nggo4': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.\n',
      'en': '',
    },
    'xpx7raoa': {
      'es': 'NEGOCIOS',
      'en': '',
    },
    'okdklb0a': {
      'es': 'Analisis, respaldo, investigacion y promosion.',
      'en': '',
    },
    '3zljueal': {
      'es':
          'Visualizamos  y aterrizamos los negocios digitales, bajo un estricto analisis en su rentabilidad y lo mas importante, la confiabilidad y respaldo de los productos o servicios a promocionar de un negocio.',
      'en': '',
    },
    'f7b8io6q': {
      'es': 'WALLET DNT',
      'en': '',
    },
    'oom4zfbl': {
      'es': 'Espacio de intercambio garantizado.',
      'en': '',
    },
    'gibluznu': {
      'es':
          'Visualizamos  y aterrizamos los negocios digitales, bajo un estricto analisis en su rentabilidad y lo mas importante, la confiabilidad y respaldo de los productos o servicios a promocionar de un negocio.',
      'en': '',
    },
    'qxflot4h': {
      'es': 'Enviar',
      'en': '',
    },
    '9gwi40qd': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    'cyw6cgm5': {
      'es': 'Recargar',
      'en': '',
    },
    '9n6n78a2': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    'rwabqv0b': {
      'es': 'Retirar',
      'en': '',
    },
    'ju4sc47k': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    's39cjbv8': {
      'es': 'Seguridad',
      'en': '',
    },
    '6wtea8ew': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    'dfvyh9ic': {
      'es': 'Usuarios',
      'en': '',
    },
    'fhd4amdf': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    'mdsihfai': {
      'es': 'Moneda local',
      'en': '',
    },
    '6yvp9cb1': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    'hn0azusm': {
      'es': 'Enviar',
      'en': '',
    },
    'f66q1zcd': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    'ealbtzgz': {
      'es': 'Recargar',
      'en': '',
    },
    'qi7rt26p': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    'jjmlh1al': {
      'es': 'Retirar',
      'en': '',
    },
    'rpgtyrd5': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    '105lyy6w': {
      'es': 'Seguridad',
      'en': '',
    },
    'kqtjvity': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    '79a03ibe': {
      'es': 'Usuarios',
      'en': '',
    },
    'q0abhn8j': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    '1j36ghib': {
      'es': 'Moneda local',
      'en': '',
    },
    'af1y29fc': {
      'es':
          'Te entregamos un área espefíficamente para mostrar tus resultados y compartirlo en tus redes sociales, segmentado en temas de alto valor para el crecimiento de tu equipo.',
      'en': '',
    },
    'dv8ula2j': {
      'es': 'CONTACTOS',
      'en': '',
    },
    '94bpzike': {
      'es': 'Estamos siempre a tu servicio',
      'en': '',
    },
    '4c64vu65': {
      'es':
          'Para tener una experincia unica en nuestra comunidad, te damos acceso a los datos de contacto de uno de nuestros usuarios frecuentes en nuestra plataforma.',
      'en': '',
    },
    '37kjkobx': {
      'es':
          'Siempre estamos emosiados de conocer nuvos talentos y socios, contactame para ayudarte a resolver tus dudas.',
      'en': '',
    },
    'iirva2o7': {
      'es': 'WhatsApp',
      'en': '',
    },
    '64q4l4ac': {
      'es': 'Telegram',
      'en': '',
    },
    'lwb4rymw': {
      'es': 'Facebook',
      'en': '',
    },
    'p61bte7i': {
      'es': 'Instagram',
      'en': '',
    },
    '0jqlgojt': {
      'es': 'www.teamdnt.pro',
      'en': '',
    },
    'e5p3iebp': {
      'es': 'INICIO',
      'en': '',
    },
    'lvvhex5s': {
      'es': 'CONTACTO',
      'en': '',
    },
    'xgaw6f5r': {
      'es': 'ENTRAR',
      'en': '',
    },
    'oxlfq1bf': {
      'es': 'REGISTRO',
      'en': '',
    },
    'hkz0naus': {
      'es': 'Home',
      'en': '',
    },
  },
  // esperar
  {
    'b7ze30va': {
      'es': 'ESTAMOS VERIFICANDO SUS DATOS',
      'en': '',
    },
    'a5cwc9qf': {
      'es': 'Un momento por favor...',
      'en': '',
    },
    'fm0m7x7n': {
      'es': 'Home',
      'en': '',
    },
  },
  // Login
  {
    'ucy3jdnv': {
      'es': 'Acceda a su cuenta iniciando sesión a continuación.',
      'en': '',
    },
    'vi92ko63': {
      'es': 'Tu Email',
      'en': '',
    },
    'ojbizyla': {
      'es': 'Escribe tu email...',
      'en': '',
    },
    'dlulox8y': {
      'es': 'Tu Password',
      'en': '',
    },
    'nbjug7tr': {
      'es': 'Password...',
      'en': '',
    },
    'h6ot862w': {
      'es': 'Login',
      'en': '',
    },
    's4zb5te3': {
      'es': '*',
      'en': '',
    },
    'fp40vnmy': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'gewcu3g8': {
      'es': '*',
      'en': '',
    },
    'q46vqh24': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'x1vbsyjn': {
      'es': '¿Has olvidado tu contraseña?',
      'en': '',
    },
    '8ybdfwq8': {
      'es': 'Login',
      'en': '',
    },
  },
  // Disclaimer
  {
    's0sq0lsj': {
      'es': 'Descargo de Responsabilidad',
      'en': 'Disclaimer',
    },
    'ubl2lva1': {
      'es':
          'www.teamdnt.pro es una comunidad de emprendedores digitales, descentralizada con el objetivo de aportar educación e ideas de proyectos basados en las nuevas tendencias como lo son las criptomonedas, nfts, trading y todo tipo de proyectos blockchain.',
      'en':
          'www.digitaletworkers.pro is a community of digital entrepreneurs, decentralized with the aim of providing education and project ideas based on new trends such as cryptocurrencies, nfts, trading and all kinds of blockchain projects.',
    },
    'ck86bw42': {
      'es':
          'Por lo tanto, la comunidad www.teamdnt.pro utiliza proyectos de terceros o empresas como un vehículo financiero para obtener ingresos extras y ningún miembro capta dinero ni administra dinero de terceros.',
      'en':
          'Therefore, the www.digitalnetworkers.pro community uses third party projects or companies as a financial vehicle to earn extra income and no member raises money or manages money from third parties.',
    },
    'on7e172n': {
      'es':
          'Todos los proyectos que la comunidad DNT promueve son estudiados y analizados, los cuales pasan un filtro para poder determinar si presentarlo a sus miembros como una opción de negocio.',
      'en':
          'All the projects that the DNT community promotes are studied and analyzed, which pass a filter in order to determine whether to present it to its members as a business option.',
    },
    '6rgy4z7t': {
      'es':
          'Tomando en cuenta que las inversiones en el mercado de las criptomonedas son de alto riesgo y tal riesgo debe ser asumido por su parte con responsabilidad colocando el capital que esté dispuesto a perder en caso de alguna eventualidad que no depende de la comunidad DNT ni de la persona que lo invito a conocer el proyecto.',
      'en':
          'Taking into account that investments in the cryptocurrency market are high risk and such risk must be assumed by you responsibly, placing the capital you are willing to lose in case of any eventuality that does not depend on the DNT community or the person who invited him to learn about the project.',
    },
    's3ckhpwz': {
      'es':
          'Tomando en cuenta que las inversiones en el mercado de las criptomonedas son de alto riesgo y tal riesgo debe ser asumido por su parte con responsabilidad colocando el capital que esté dispuesto a perder en caso de alguna eventualidad que no depende de la comunidad DNT ni de la persona que lo invito a conocer el proyecto.',
      'en':
          'Consequently, I declare the www.digitalnetworkers.pro community and the person who invited me free of any responsibility for anything that happens with third-party projects that are developed within the DNT community.',
    },
    'hecsniao': {
      'es': 'Tu Firma',
      'en': 'Sign Our Disclaimer',
    },
    'e0vz7q29': {
      'es': 'Tu Nombre Completo',
      'en': 'Your full name',
    },
    'ftdv3tqj': {
      'es': 'Número de Identidad',
      'en': 'ID number',
    },
    'epvo2u4o': {
      'es': 'Completar',
      'en': 'To complete',
    },
    'nkmxy2jz': {
      'es': 'Field is required',
      'en': '',
    },
    'iir8uzn9': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'w2k6kz0c': {
      'es': '*',
      'en': '',
    },
    '73c0r0df': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
  },
  // EnviarSolicitudDNT
  {
    '9z1sz43h': {
      'es': 'BIENVENIDO ',
      'en': '',
    },
    'a4bhovcv': {
      'es':
          'ENVIA TU SOLICITUD DE ACCESO A NUESTRAS HERRAMIENTAS DE SEGUN LA EMPRESA QUE PROMOSIONAS',
      'en': '',
    },
    'vc4bj1rz': {
      'es': 'Envia datos reales, que seran verificados por un administrador.',
      'en': '',
    },
    'gloq7ugw': {
      'es': 'Empresa',
      'en': '',
    },
    'mwdyq4vk': {
      'es': 'Selecciona...',
      'en': '',
    },
    'r38cenhq': {
      'es': 'Usuario',
      'en': '',
    },
    'p3cximj3': {
      'es': 'Escribe tu usuario...',
      'en': '',
    },
    'cx7xurtm': {
      'es': 'URL Referido',
      'en': '',
    },
    'cetnf1sm': {
      'es': 'Escribe tu usuario...',
      'en': '',
    },
    've7wvay3': {
      'es': 'Enviar Solicitud',
      'en': '',
    },
    'ovqn1sj4': {
      'es': 'REGRESAR AL DHASBOARD',
      'en': '',
    },
    '76aa359s': {
      'es': '',
      'en': '',
    },
    'ly76vycy': {
      'es': '*',
      'en': '',
    },
    'hnwpdb5r': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hl711n3v': {
      'es': 'Field is required',
      'en': '',
    },
    'npr7sdhl': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '9guf3kjm': {
      'es': 'Home',
      'en': '',
    },
  },
  // docDisclaimer
  {
    '4cio1usn': {
      'es': 'Descargo de Responsabilidad',
      'en': 'Disclaimer',
    },
    'evd5mk0p': {
      'es':
          'www.teamdnt.pro es una comunidad de emprendedores digitales, descentralizada con el objetivo de aportar educación e ideas de proyectos basados en las nuevas tendencias como lo son las criptomonedas, nfts, trading y todo tipo de proyectos blockchain.',
      'en':
          'www.digitaletworkers.pro is a community of digital entrepreneurs, decentralized with the aim of providing education and project ideas based on new trends such as cryptocurrencies, nfts, trading and all kinds of blockchain projects.',
    },
    'qhcd86o0': {
      'es':
          'Por lo tanto, la comunidad www.teamdnt.pro utiliza proyectos de terceros o empresas como un vehículo financiero para obtener ingresos extras y ningún miembro capta dinero ni administra dinero de terceros.',
      'en':
          'Therefore, the www.digitalnetworkers.pro community uses third party projects or companies as a financial vehicle to earn extra income and no member raises money or manages money from third parties.',
    },
    'ls40iq2t': {
      'es':
          'Todos los proyectos que la comunidad DNT promueve son estudiados y analizados, los cuales pasan un filtro para poder determinar si presentarlo a sus miembros como una opción de negocio.',
      'en':
          'All the projects that the DNT community promotes are studied and analyzed, which pass a filter in order to determine whether to present it to its members as a business option.',
    },
    'am4ewh0t': {
      'es':
          'Tomando en cuenta que las inversiones en el mercado de las criptomonedas son de alto riesgo y tal riesgo debe ser asumido por su parte con responsabilidad colocando el capital que esté dispuesto a perder en caso de alguna eventualidad que no depende de la comunidad DNT ni de la persona que lo invito a conocer el proyecto.',
      'en':
          'Taking into account that investments in the cryptocurrency market are high risk and such risk must be assumed by you responsibly, placing the capital you are willing to lose in case of any eventuality that does not depend on the DNT community or the person who invited him to learn about the project.',
    },
    'h24n46iz': {
      'es':
          'En consecuencia, declaro libre de toda responsabilidad a la comunidad www.teamdnt.pro y a la persona que me invito de cualquier cosa que pase con los proyectos de terceros que se desarrollan dentro de la comunidad DNT.',
      'en':
          'Consequently, I declare the www.digitalnetworkers.pro community and the person who invited me free of any responsibility for anything that happens with third-party projects that are developed within the DNT community.',
    },
    'r7ss21yg': {
      'es': 'Pag. 01',
      'en': 'Page 01',
    },
    'iesp8f23': {
      'es': 'www.teamdnt.pro',
      'en': 'www.digitalnetworkers.pro',
    },
  },
  // Servicios
  {
    'do5jc5ol': {
      'es': 'SERVICIOS (Opsional)',
      'en': '',
    },
    'abf1spz5': {
      'es':
          'Visualiza y aterriza los negocios digitales, con la más alta calidad y pasión, estando en la vanguardia y los estándares que el mundo HOY necesita.',
      'en': '',
    },
    '2mco1v6k': {
      'es': 'FUNNEL',
      'en': '',
    },
    'v9dlgbu6': {
      'es': 'ENTRAR',
      'en': '',
    },
    'nsbqwt8c': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // CreandoCuenta
  {
    'g9k4gjc8': {
      'es': 'ESTAMOS CREANDO SU CUENTA',
      'en': '',
    },
    '1pm5d5qk': {
      'es': 'Un momento por favor...',
      'en': '',
    },
  },
  // InformedeEmpresa
  {
    'bv9i6rw0': {
      'es': '¿QUÉ EMPRESA ES?',
      'en': '',
    },
    'k782ikw4': {
      'es': 'Nombre de la empresa',
      'en': '',
    },
    'yoyec9mz': {
      'es': 'DESCRIPCION DE LA EMPRESA',
      'en': '',
    },
    '99jpgz5u': {
      'es': 'Informe de la empresa',
      'en': '',
    },
    '8zux823c': {
      'es': 'DATOS DE LA EMPRESA',
      'en': '',
    },
    'gohgxfmh': {
      'es': 'NOMBRE: ',
      'en': '',
    },
    '8q2ypgox': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'eqju2mdj': {
      'es': 'ORIGEN: ',
      'en': '',
    },
    'sy20ej1l': {
      'es': 'Rusia',
      'en': '',
    },
    'w355ub40': {
      'es': 'CATEGORIA: ',
      'en': '',
    },
    '08tihc3r': {
      'es': 'SEMÁFORO: ',
      'en': '',
    },
    '9d0ymv6g': {
      'es': 'Riesgo Alto',
      'en': '',
    },
    '8lq9u4kc': {
      'es': 'Riesgo Medio',
      'en': '',
    },
    '8187fg36': {
      'es': 'Riesgo Bajo',
      'en': '',
    },
    '1pt7z82f': {
      'es': 'FECHA DE INICIO: ',
      'en': '',
    },
    '8ecnbxqw': {
      'es': '[ Agosto/Octubre/2021]',
      'en': '',
    },
    'rkgiwvkh': {
      'es': 'WEB: ',
      'en': '',
    },
    '0bc4ciac': {
      'es': ' https://mediachain.inc/',
      'en': '',
    },
    '5k62eapu': {
      'es': 'POOL DE LIQUIDEZ',
      'en': '',
    },
    'zt2au982': {
      'es': 'NOMBRE: ',
      'en': '',
    },
    't8erdt0l': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'cabgo9k6': {
      'es': 'MULTI Wallet',
      'en': '',
    },
    'wfu0efs1': {
      'es': '[ MULTI Wallet]',
      'en': '',
    },
    'o4vp2lsm': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'kv51xubb': {
      'es': 'PLAY2EARN:',
      'en': '',
    },
    'cnzpqqhp': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'nscshsqk': {
      'es': 'NFT MARKETPLACE:',
      'en': '',
    },
    'k6sew6og': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'b8a1i7d2': {
      'es': 'CRYPTO SCHOOL:',
      'en': '',
    },
    '0jssx2cm': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'r4s2f1od': {
      'es': 'MEDIAVERSE:',
      'en': '',
    },
    'h0byg4vn': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    '8rh6wdw0': {
      'es': 'FARMING:',
      'en': '',
    },
    'hb41kt1y': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'joxp7jpy': {
      'es': 'MCPAD:',
      'en': '',
    },
    'qmfan3xm': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    '4w2hmb3v': {
      'es': 'LEADERSHIP ACADEMY:',
      'en': '',
    },
    'iqqznfcj': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'tgoj53c9': {
      'es': 'PARTNER PROGRAM:',
      'en': '',
    },
    '64l0gdq3': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'kzxfvesh': {
      'es': 'MEDIA STORE:',
      'en': '',
    },
    'bikobt78': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    '2r20vpvc': {
      'es': 'CEO: ',
      'en': '',
    },
    'sk97h0oy': {
      'es': 'Sergey Sevantsyan',
      'en': '',
    },
    '3dfxtm1o': {
      'es': 'CATEGORIA: ',
      'en': '',
    },
    't6b21tjh': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'q0ghpmmm': {
      'es': 'NACIONALIDAD: ',
      'en': '',
    },
    'w6hgjxi7': {
      'es': '[ Rusia]',
      'en': '',
    },
    'apl3n2ts': {
      'es': 'DATOS FINANCIEROS',
      'en': '',
    },
    'qzq9ntyr': {
      'es': 'NOMBRE: ',
      'en': '',
    },
    'yqx98a0f': {
      'es': '[ MediaCoin]',
      'en': '',
    },
    'r5vqil2c': {
      'es': 'INVERSION MINIMA: ',
      'en': '',
    },
    'ggdrea79': {
      'es': '50 USDT',
      'en': '',
    },
    '9v2msppd': {
      'es': 'RENTABILIDAD: ',
      'en': '',
    },
    'r3p1l6dh': {
      'es': '10% Al Mes',
      'en': '',
    },
    '2zrkxbvk': {
      'es': 'RETIRO MINIMO: ',
      'en': '',
    },
    '1mbgt2t1': {
      'es': '50 USDT',
      'en': '',
    },
    'qdh7n0jy': {
      'es': 'COMISION DE RETIROS:',
      'en': '',
    },
    'rgxfli90': {
      'es': '1%',
      'en': '',
    },
    'q99pkh3c': {
      'es': 'ENVIAR',
      'en': '',
    },
    'cu904k0g': {
      'es': 'Home',
      'en': '',
    },
  },
  // ComentarPost
  {
    'xu0hqiva': {
      'es': 'Comentar...',
      'en': 'Comment...',
    },
  },
  // UsuariosChat
  {
    'iwa8c625': {
      'es': 'Usuarios Conectados',
      'en': 'Users online',
    },
    'oxq78wfk': {
      'es': 'Seleccione un amigo para chatear',
      'en': 'Select a friend to chat',
    },
  },
  // CrearModal
  {
    'khgbkhu8': {
      'es': 'Crear Story',
      'en': 'Create Story',
    },
    'l4jcumsx': {
      'es': 'Comparte un video o foto.',
      'en': 'Share a video or photo.',
    },
    '7tym6v21': {
      'es': 'Crear Post',
      'en': 'Create Post',
    },
    'fdqektj6': {
      'es': 'Comparte un video o foto.',
      'en': 'Share a video or photo.',
    },
  },
  // MenuIzquierdo
  {
    'tvtsrs5t': {
      'es': 'HOME',
      'en': 'HOME',
    },
    'dbz1n0t1': {
      'es': 'HERRAMIENTAS',
      'en': 'EXPANSION',
    },
    'qgtia82p': {
      'es': 'NEGOCIOS',
      'en': 'EVENTS',
    },
    '82jb4igz': {
      'es': 'WALLET DNT',
      'en': 'PROSPECTING',
    },
    'hywxzycm': {
      'es': 'SOCIAL DNT',
      'en': 'RESOURCES',
    },
    'ky1p2xz4': {
      'es': 'SERVICIOS',
      'en': 'QUANTUM',
    },
    'aelod4li': {
      'es': 'SOPORTE',
      'en': 'SUPPORT',
    },
    '627l2po1': {
      'es': 'Salir',
      'en': '',
    },
  },
  // comenStory
  {
    '787htnfx': {
      'es': 'Comments',
      'en': 'comments',
    },
    '9w8n4a59': {
      'es': 'Publicado',
      'en': 'Published',
    },
    'izbwj49r': {
      'es': 'Comentar...',
      'en': 'Comment...',
    },
  },
  // eliminarPos
  {
    '7w60sz0m': {
      'es': 'Eliminar este Post',
      'en': 'Delete this Post',
    },
    'gvzgy048': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // DisclaiMer
  {
    'w0si7wsj': {
      'es': 'Descargo de Responsabilidad',
      'en': 'Disclaimer',
    },
    'yauq7ius': {
      'es':
          'www.teamdnt.pro es una comunidad de emprendedores digitales, descentralizada con el objetivo de aportar educación e ideas de proyectos basados en las nuevas tendencias como lo son las criptomonedas, nfts, trading y todo tipo de proyectos blockchain.',
      'en':
          'www.digitaletworkers.pro is a community of digital entrepreneurs, decentralized with the aim of providing education and project ideas based on new trends such as cryptocurrencies, nfts, trading and all kinds of blockchain projects.',
    },
    'xp3kwk2m': {
      'es':
          'Por lo tanto, la comunidad www.teamdnt.pro utiliza proyectos de terceros o empresas como un vehículo financiero para obtener ingresos extras y ningún miembro capta dinero ni administra dinero de terceros.',
      'en':
          'Therefore, the www.digitalnetworkers.pro community uses third party projects or companies as a financial vehicle to earn extra income and no member raises money or manages money from third parties.',
    },
    'px12kuxz': {
      'es':
          'Todos los proyectos que la comunidad DNT promueve son estudiados y analizados, los cuales pasan un filtro para poder determinar si presentarlo a sus miembros como una opción de negocio.',
      'en':
          'All the projects that the DNT community promotes are studied and analyzed, which pass a filter in order to determine whether to present it to its members as a business option.',
    },
    '3gw7stx4': {
      'es':
          'Tomando en cuenta que las inversiones en el mercado de las criptomonedas son de alto riesgo y tal riesgo debe ser asumido por su parte con responsabilidad colocando el capital que esté dispuesto a perder en caso de alguna eventualidad que no depende de la comunidad DNT ni de la persona que lo invito a conocer el proyecto.',
      'en':
          'Taking into account that investments in the cryptocurrency market are high risk and such risk must be assumed by you responsibly, placing the capital you are willing to lose in case of any eventuality that does not depend on the DNT community or the person who invited him to learn about the project.',
    },
    'e4ljsmp3': {
      'es':
          'En consecuencia, declaro libre de toda responsabilidad a la comunidad www.teamdnt.pro y a la persona que me invito de cualquier cosa que pase con los proyectos de terceros que se desarrollan dentro de la comunidad DNT.',
      'en':
          'Consequently, I declare the www.digitalnetworkers.pro community and the person who invited me free of any responsibility for anything that happens with third-party projects that are developed within the DNT community.',
    },
    'xy9l80j3': {
      'es': 'Pag. 01',
      'en': 'Page 01',
    },
    'wkynqyt6': {
      'es': 'www.digitalnetworkers.pro',
      'en': 'www.digitalnetworkers.pro',
    },
  },
  // menuSeting
  {
    'a4ly2o9z': {
      'es': 'Mi Perfil',
      'en': 'My profile',
    },
    'zb1zqdv9': {
      'es': 'Social DNT',
      'en': 'DNT network',
    },
    'qyjaylt6': {
      'es': 'Wallet DNT',
      'en': 'DNT Wallet',
    },
    'elevb0e6': {
      'es': 'Negocios',
      'en': 'business',
    },
    'f7vd9qc0': {
      'es': 'Servicios',
      'en': 'business',
    },
    's59af55r': {
      'es': 'Admin',
      'en': 'admin',
    },
    '878r71ay': {
      'es': 'Ajustes',
      'en': 'settings',
    },
    'd2we5p6o': {
      'es': 'Desconectarse',
      'en': 'Go out',
    },
  },
  // WhatsApp_Funel
  {
    'feuy1pi0': {
      'es': 'ESCRIBE UN MENNSAJE',
      'en': 'comments',
    },
    'd2unrkos': {
      'es': 'Tu mensaje...',
      'en': 'Comment...',
    },
  },
  // noticiasDerecha
  {
    'juv3xjqk': {
      'es': 'ÚLTIMAS NOVEDADES',
      'en': 'NEW NEWS',
    },
    'wxrz6o40': {
      'es': '15',
      'en': '',
    },
  },
  // menuSuperior
  {
    'lmc4xfu0': {
      'es': 'Copiar Funnel',
      'en': '',
    },
    'b56evbbj': {
      'es': 'En Espera',
      'en': '',
    },
  },
  // EncabezadoAdmin
  {
    'hockemcw': {
      'es': 'Administrador',
      'en': '',
    },
    'kfmcq35y': {
      'es': 'Dashboard',
      'en': '',
    },
    'xh7b6lsu': {
      'es': 'Panel Admin',
      'en': '',
    },
  },
  // MenuAdmin
  {
    'wj9drbxo': {
      'es': 'Dashboard',
      'en': '',
    },
    'rvh4t6dv': {
      'es': 'Gestor Usuarios',
      'en': '',
    },
    'yzt1g5ge': {
      'es': 'Gestor Interaz',
      'en': '',
    },
    '0j9jtfy8': {
      'es': 'Gestor Wallet',
      'en': '',
    },
    'e0lief7l': {
      'es': 'Gestor Social',
      'en': '',
    },
    'vnnbp7e7': {
      'es': 'Desconectarse',
      'en': '',
    },
  },
  // DataUsuarrios
  {
    'j1tfm6l9': {
      'es': 'PERFIL DE USUARIO',
      'en': 'comments',
    },
    'j2le377w': {
      'es': 'WhatsApp',
      'en': '',
    },
    '42dzyr4v': {
      'es': 'Permisos de Acceso',
      'en': '',
    },
    'fyxhl8hk': {
      'es': 'Team DNT',
      'en': '',
    },
    'kptqqtie': {
      'es': 'Comerciante',
      'en': '',
    },
    'ntyd0db0': {
      'es': 'Representante',
      'en': '',
    },
    'bx4688gn': {
      'es': 'Administrador',
      'en': '',
    },
    'mgk2v194': {
      'es': 'Disclaimer',
      'en': '',
    },
    'fhggx7jl': {
      'es': 'Usuario',
      'en': '',
    },
    'hertbjza': {
      'es': 'N°_DI',
      'en': '',
    },
    'jawdsdvr': {
      'es': 'Empresa',
      'en': '',
    },
    'i7a0p4n9': {
      'es': 'Fecha de Firma',
      'en': '',
    },
    'o2pphtsx': {
      'es': 'Docmento',
      'en': '',
    },
    'psxstfg0': {
      'es': 'Solicitud de Herramientas',
      'en': '',
    },
    'bff6ke8e': {
      'es': 'Empresa',
      'en': '',
    },
    '5wmbdgbt': {
      'es': 'Usuario',
      'en': '',
    },
    'ep892w0w': {
      'es': 'Fecha de Solicitud',
      'en': '',
    },
    'jlvzgym6': {
      'es': 'Estado',
      'en': '',
    },
  },
  // AddsEmpresa
  {
    'iajx6nzp': {
      'es': 'AGREGAR UN NUEVO NEGOCIO',
      'en': 'comments',
    },
    'bufo6132': {
      'es': 'Nombre',
      'en': '',
    },
    'by11y0y7': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'pc3vqpk5': {
      'es': 'Descripsion',
      'en': '',
    },
    '1dxjyv2x': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    '4nm07pc2': {
      'es': 'URL de Acceso',
      'en': '',
    },
    'r67qucc9': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'y7vw79ya': {
      'es': 'Pais',
      'en': '',
    },
    'wfaia4jt': {
      'es': 'Please select...',
      'en': '',
    },
    'p1page05': {
      'es': 'Logotipoo (500x500 px) PNG',
      'en': '',
    },
    'g14okvtw': {
      'es': 'Agregar al Equipo',
      'en': '',
    },
  },
  // AddsTeam
  {
    'ot46r5dg': {
      'es': 'CREAR USUARIO DE EQUIPO',
      'en': 'comments',
    },
    'l3tgm99j': {
      'es': 'Nombre',
      'en': '',
    },
    '18yxp39g': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    '6jn8a1cj': {
      'es': 'Descripsion',
      'en': '',
    },
    'oxlznx7q': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'vajsra9i': {
      'es': 'Pais',
      'en': '',
    },
    'mfrjxt91': {
      'es': 'Please select...',
      'en': '',
    },
    '1vlrtmnd': {
      'es': 'Colores',
      'en': '',
    },
    'o764y94b': {
      'es': 'Colore #01',
      'en': '',
    },
    'wkvqzjmm': {
      'es': 'Colore #01',
      'en': '',
    },
    'mdjz5ipp': {
      'es': 'Foto (500x500 px)',
      'en': '',
    },
    '6rp9qdxk': {
      'es': 'Agregar al Equipo',
      'en': '',
    },
  },
  // EditarTeam
  {
    '8sda88ip': {
      'es': 'EDITAR DATOS DE USUARIO',
      'en': 'comments',
    },
    'a0h8batz': {
      'es': 'Nombre',
      'en': '',
    },
    '4vlzqheo': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'ulbt5dpg': {
      'es': 'Descripsion',
      'en': '',
    },
    'd41wb0ff': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'wxrjqgxd': {
      'es': 'Pais',
      'en': '',
    },
    'axxyy5p6': {
      'es': 'Please select...',
      'en': '',
    },
    'tmwek6zp': {
      'es': 'Colores',
      'en': '',
    },
    'ymolrdy9': {
      'es': 'Color #01',
      'en': '',
    },
    'eociilef': {
      'es': 'Color #02',
      'en': '',
    },
    'fti0ozd6': {
      'es': 'Foto (500x500 px)',
      'en': '',
    },
    'dmgkcnbg': {
      'es': 'Actualizar',
      'en': '',
    },
    'prht9rb4': {
      'es': 'Eliminar',
      'en': '',
    },
    'ufitg2xj': {
      'es': 'Publicar',
      'en': '',
    },
    '48ddre0q': {
      'es': 'Publicado',
      'en': '',
    },
  },
  // AddsDashboard
  {
    '97cwzqw7': {
      'es': 'AGREGAR NUEVA NOTICIA DE DASHBOARD',
      'en': 'comments',
    },
    'wfwmokps': {
      'es': 'Titulo',
      'en': '',
    },
    '59ndczhy': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'erj5f0ru': {
      'es': 'Descripsion',
      'en': '',
    },
    '5wfy1yty': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'b2q92q9w': {
      'es': 'Colores',
      'en': '',
    },
    'fvevugo8': {
      'es': 'Colore #01',
      'en': '',
    },
    'qhqwxfzd': {
      'es': 'Colore #01',
      'en': '',
    },
    'to7scv6i': {
      'es': 'Imagen (1366x300 px)',
      'en': '',
    },
    '6xksjgsh': {
      'es': 'Agregar Noticia',
      'en': '',
    },
  },
  // EditarDashboard
  {
    '9k2qm4yb': {
      'es': 'ACCTUALIZAR NOTICIA DE DASHBOARD',
      'en': 'comments',
    },
    'r10zv8ci': {
      'es': 'Titulo',
      'en': '',
    },
    '71ean7ae': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'womxhhe4': {
      'es': 'Descripsion',
      'en': '',
    },
    'fyudomdr': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    '92i448dh': {
      'es': 'Colores',
      'en': '',
    },
    'nuuabwqx': {
      'es': 'Color #01',
      'en': '',
    },
    '19i8l2b9': {
      'es': 'Color #02',
      'en': '',
    },
    'arbb05d9': {
      'es': 'Imagen (1366x300 px)',
      'en': '',
    },
    'c4q6jg2x': {
      'es': 'Acctualizar',
      'en': '',
    },
    'txdt8s5i': {
      'es': 'Eliminar',
      'en': '',
    },
    'dglx764p': {
      'es': 'Publicar',
      'en': '',
    },
    '2wzjuzyf': {
      'es': 'Publicado',
      'en': '',
    },
  },
  // EditarEmpresa
  {
    '3fcu80wz': {
      'es': 'ACTUALIZAR NEGOCIO',
      'en': 'comments',
    },
    '66gbzq9i': {
      'es': 'Nombre',
      'en': '',
    },
    'ou7wjhry': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    't99jipco': {
      'es': 'Descripsion',
      'en': '',
    },
    'bw30693v': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'rsn7nt7p': {
      'es': 'URL de Acceso',
      'en': '',
    },
    'jcfw22wp': {
      'es': 'Escribe aqui...',
      'en': '',
    },
    'c5odj6tf': {
      'es': 'Pais',
      'en': '',
    },
    'a04cay1a': {
      'es': 'Please select...',
      'en': '',
    },
    'nsmkn5e9': {
      'es': 'Logotipoo (500x500 px) PNG',
      'en': '',
    },
    's3uf1ufe': {
      'es': 'Actualizar',
      'en': '',
    },
    'hlu9j24x': {
      'es': 'Eliminar',
      'en': '',
    },
    'cgmwds7o': {
      'es': 'Publicar',
      'en': '',
    },
    'w3c4mzlg': {
      'es': 'Publicado',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'ibv5lotz': {
      'es': '',
      'en': '',
    },
    'm60s8ley': {
      'es': '',
      'en': '',
    },
    'gb1o6v0o': {
      'es': '',
      'en': '',
    },
    'ppqh8xxu': {
      'es': '',
      'en': '',
    },
    'gpjztje2': {
      'es': '',
      'en': '',
    },
    'yspvrzff': {
      'es': '',
      'en': '',
    },
    '2quws5jl': {
      'es': '',
      'en': '',
    },
    'mvvqm1tn': {
      'es': '',
      'en': '',
    },
    'hle89wqz': {
      'es': '',
      'en': '',
    },
    '2q3tz2wi': {
      'es': '',
      'en': '',
    },
    'xqqxixvj': {
      'es': '',
      'en': '',
    },
    'cs0czr25': {
      'es': '',
      'en': '',
    },
    'zyzuhz3s': {
      'es': '',
      'en': '',
    },
    'd2xof3x5': {
      'es': '',
      'en': '',
    },
    'lisavwly': {
      'es': '',
      'en': '',
    },
    '3ga7e9sq': {
      'es': '',
      'en': '',
    },
    'emkccjpx': {
      'es': '',
      'en': '',
    },
    'gj1o96uo': {
      'es': '',
      'en': '',
    },
    'q4ek17zg': {
      'es': '',
      'en': '',
    },
    'yb9cqy0r': {
      'es': '',
      'en': '',
    },
    'o31ro68e': {
      'es': '',
      'en': '',
    },
    '3gy5c297': {
      'es': '',
      'en': '',
    },
    'vr39cr92': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
