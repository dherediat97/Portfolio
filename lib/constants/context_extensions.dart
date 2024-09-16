import 'package:flutter/material.dart';
import 'package:portfolio/l10n/localizations/app_localizations.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);
}
