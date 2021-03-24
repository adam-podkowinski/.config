 "C++ Class Generator
 function! Class(ClassName)
    "==================  editing header file =====================
     let header = "./include/".a:ClassName.".h"
     :vsp %:h/.h
     call append(0,"#pragma once")
     call append(1,"")
     call append(2,"class ".a:ClassName )
     call append(3, "{")
     call append(4, "   public:")
     call append(5, "      ".a:ClassName."();")
     call append(6, "      virtual ~".a:ClassName."();")
     call append(7, "   protected:")
     call append(8, "   private:")
     call append(9, "};")
     :execute 'write' header
     :w
   "================== editing source file ========================
     let src    = a:ClassName.".cpp"
     :vsp %:h/.cpp
     call append(0,"#include "."\"".a:ClassName.".h"."\"")
     call append(1," ")
     call append(2,a:ClassName."::".a:ClassName."()")
     call append(3,"{")
     call append(4,"//ctor ")
     call append(5,"}")
     call append(6," ")
     call append(7," ")
     call append(8, a:ClassName."::~".a:ClassName."()")
     call append(9,"{")
     call append(10,"//dtor ")
     call append(11,"}")
     :execute 'write' src
     :w
     :q
     :q
endfunction

