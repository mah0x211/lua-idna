package = "idna"
version = "scm-1"
source = {
    url = "git://github.com/mah0x211/lua-idna.git"
}
description = {
    summary = "libidn bindings for lua",
    homepage = "https://github.com/mah0x211/lua-idna", 
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1"
}
external_dependencies = {
    IDN = {
        header = "idna.h",
        library = "idn"
    }
}
build = {
    type = "builtin",
    modules = {
        idna = {
            sources = { 
                "src/idna.c",
            },
            libraries = { "idn" },
            incdirs = {
                "$(IDN_INCDIR)"
            },
            libdirs = {
                "$(IDN_LIBDIR)"
            }
        }
    }
}

