package = "ipdb"
version = "beta-2"
source = {
  url = "git://github.com/ym/ipdb-c.git"
}
dependencies = {
  "lua >= 5.1"
}
external_dependencies = {
   JSON_C = {
      header = "json-c/json.h"
   }
}
build = {
  type = "builtin",
  modules = {
    ipdb = {
      libraries = {"json-c"},
      sources = {"ipdb.c", "ipdb-lua.c"}
    }
  }
}