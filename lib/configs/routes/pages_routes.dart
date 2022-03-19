import 'package:flutter/material.dart';

import '../../blocs/blocs.dart';
import '../../pages/pages.dart';

List<Page> onGenerateAppViewPages(
  AuthStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AuthStatus.authenticated:
      return [HomePage.page()];
    case AuthStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
