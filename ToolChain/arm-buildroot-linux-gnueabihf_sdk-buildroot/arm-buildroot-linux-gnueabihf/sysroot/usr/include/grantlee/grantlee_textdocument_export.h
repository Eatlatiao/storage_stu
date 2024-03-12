
#ifndef GRANTLEE_TEXTDOCUMENT_EXPORT_H
#define GRANTLEE_TEXTDOCUMENT_EXPORT_H

#ifdef GRANTLEE_TEXTDOCUMENT_STATIC_DEFINE
#  define GRANTLEE_TEXTDOCUMENT_EXPORT
#  define GRANTLEE_TEXTDOCUMENT_NO_EXPORT
#else
#  ifndef GRANTLEE_TEXTDOCUMENT_EXPORT
#    ifdef Grantlee_TextDocument_EXPORTS
        /* We are building this library */
#      define GRANTLEE_TEXTDOCUMENT_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define GRANTLEE_TEXTDOCUMENT_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef GRANTLEE_TEXTDOCUMENT_NO_EXPORT
#    define GRANTLEE_TEXTDOCUMENT_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef GRANTLEE_TEXTDOCUMENT_DEPRECATED
#  define GRANTLEE_TEXTDOCUMENT_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef GRANTLEE_TEXTDOCUMENT_DEPRECATED_EXPORT
#  define GRANTLEE_TEXTDOCUMENT_DEPRECATED_EXPORT GRANTLEE_TEXTDOCUMENT_EXPORT GRANTLEE_TEXTDOCUMENT_DEPRECATED
#endif

#ifndef GRANTLEE_TEXTDOCUMENT_DEPRECATED_NO_EXPORT
#  define GRANTLEE_TEXTDOCUMENT_DEPRECATED_NO_EXPORT GRANTLEE_TEXTDOCUMENT_NO_EXPORT GRANTLEE_TEXTDOCUMENT_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef GRANTLEE_TEXTDOCUMENT_NO_DEPRECATED
#    define GRANTLEE_TEXTDOCUMENT_NO_DEPRECATED
#  endif
#endif

#endif /* GRANTLEE_TEXTDOCUMENT_EXPORT_H */