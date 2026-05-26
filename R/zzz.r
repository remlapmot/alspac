.onAttach <- function(libname, pkgname) {
  packageStartupMessage("R/alspac version ", utils::packageVersion("alspac"), ".\n",
                        "We have made several changes to how the extractVars function works.\n",
                        "This may lead to slightly different formatting compared to previously.\n",
                        "See also the new createDictionary function.")
  loadDictionaries()
  tryCatch(setDataDir(), error=function(e) packageStartupMessage(conditionMessage(e)))
}


