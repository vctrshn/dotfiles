if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

if (!has('nvim-0.5.0'))
  syn keyword phpStorageClass async final public private static class extends const abstract use interface trait require contained
endif
