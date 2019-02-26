#ifdef STRIP_PYTHON
    #if defined(_MSC_VER)
        // Windows
        #ifdef EXT_SO
            #define EXT_API __declspec(export)
        #else
            #define EXT_API __declspec(import)
        #endif

    #elif defined(__GNUC__)
        // GCC
        #ifdef EXT_SO
            #define EXT_API __attribute__((visibility("default")))
        #else
            #define EXT_API
        #endif
    #else
        #define EXT_API
    #endif
#endif