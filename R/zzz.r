.onAttach <- function(libname, pkgname) {
  packageStartupMessage("R/alspac version ", utils::packageVersion("alspac"), ".")
  loadDictionaries()
  tryCatch(setDataDir(), error=function(e) packageStartupMessage(conditionMessage(e)))
}


