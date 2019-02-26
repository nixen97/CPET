solution "Extension"
   configurations { "Debug", "Release" }
   outputdir = "../build/test/"
   
   -- A project defines one build target
   project "Lib"
      kind "SharedLib"
      language "C"
      staticruntime "off"
      files { "**.h", "**.c" }
      defines { "STRIP_PYTHON", "EXT_SO" }

      configuration "Debug"
         defines { "DEBUG" }
         flags { "Symbols" }

      configuration "Release"
         defines { "NDEBUG" }
         flags { "Optimize" }