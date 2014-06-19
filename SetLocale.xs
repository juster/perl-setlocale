#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

MODULE = SetLocale PACKAGE = SetLocale

char *
setlocale(cat, locale)
  int cat
  char * locale

