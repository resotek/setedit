# This file is automatically generated by RHIDE Version 1.4.7.8
# created with the command:
# gpr2mak infview.gpr
ifeq ($(strip $(RHIDE_OS_LIBS_PATH)),)
RHIDE_OS_LIBS_PATH=../../tvision/linux ../libbzip2
endif
ifeq ($(strip $(SUPPORT_INC)),)
SUPPORT_INC=../libbzip2
endif
ifeq ($(strip $(TVISION_INC)),)
TVISION_INC=
endif
vpath_src=../infview ../settvuti ../extra ../../tvision/classes ../infview/names ../infview/streams ../mainsrc ../setedit
vpath %.c $(vpath_src)
vpath %.cc $(vpath_src)
vpath %.cpp $(vpath_src)
vpath %.C $(vpath_src)
vpath %.cxx $(vpath_src)
vpath %.s $(vpath_src)
vpath %.S $(vpath_src)
vpath %.p $(vpath_src)
vpath %.pas $(vpath_src)
vpath %.f $(vpath_src)
vpath %.for $(vpath_src)
vpath %.F $(vpath_src)
vpath %.fpp $(vpath_src)
vpath %.i $(vpath_src)
vpath %.ii $(vpath_src)
vpath %.m $(vpath_src)
vpath %.asm $(vpath_src)
vpath %.nsm $(vpath_src)
vpath_obj=objinf
vpath %.o $(vpath_obj)
RHIDE_GCC=gcc
RHIDE_AS=gcc
RHIDE_GXX=gcc
RHIDE_GPC=gpc
RHIDE_FPC=ppc386
RHIDE_AR=ar
RHIDE_LD=gcc
RHIDE_G77=g77
RHIDE_NASM=nasm
RHIDE_LD_PASCAL=gpc
RHIDE_LD_FPC=ld
RHIDE_GNATBIND=gnatbind
RHIDE_RM=rm
RHIDE_ARFLAGS=rcs
RHIDE_TYPED_LIBS.f=g2c m
RHIDE_TYPED_LIBS.for=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS.F=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS.fpp=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS_GPC=gpc m
RHIDE_TYPED_LIBS_FPC=fpc
RHIDE_TYPED_LIBS.p=$(RHIDE_TYPED_LIBS_$(PASCAL_TYPE))
RHIDE_TYPED_LIBS.pas=$(RHIDE_TYPED_LIBS.p)
RHIDE_TYPED_LIBS.pp=$(RHIDE_TYPED_LIBS_FPC)
RHIDE_TYPED_LIBS_DJGPP.cc=stdcxx
RHIDE_TYPED_LIBS_Linux.cc=stdc++
RHIDE_TYPED_LIBS.cc=$(RHIDE_TYPED_LIBS_$(RHIDE_OS).cc)
RHIDE_TYPED_LIBS.cpp=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.cxx=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.C=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.ii=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.l=fl
RHIDE_TYPED_LIBS.m=objc
RHIDE_TYPED_LIBS.adb=gnat
RHIDE_TYPED_LIBS_SUFFIXES=$(sort $(foreach item,$(PROJECT_ITEMS),$(suffix\
	$(item))))
RHIDE_TYPED_LIBS=$(foreach\
	suff,$(RHIDE_TYPED_LIBS_SUFFIXES),$(RHIDE_TYPED_LIBS$(suff)))
RHIDE_INCLUDES=$(SPECIAL_CFLAGS) $(addprefix -I,$(INCLUDE_DIRS))
RHIDE_LIBDIRS=$(addprefix -L,$(LIB_DIRS))
RHIDE_LIBS=$(addprefix -l,$(LIBS) $(RHIDE_TYPED_LIBS) $(RHIDE_OS_LIBS))
RHIDE_LDFLAGS=$(SPECIAL_LDFLAGS) $(addprefix -Xlinker ,$(LD_EXTRA_FLAGS))
RHIDE_NASM_TARGET_DJGPP=coff
RHIDE_NASM_TARGET_Linux=elf
RHIDE_NASM_TARGET=$(RHIDE_NASM_TARGET_$(RHIDE_OS))
RHIDE_COMPILE_NASM=$(RHIDE_NASM) -f $(RHIDE_NASM_TARGET) $(LOCAL_OPT) -o\
	$(OUTFILE)  $(SOURCE_NAME)
RHIDE_COMPILE_FORTRAN=$(RHIDE_G77) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_F_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_FORTRAN_FORCE=$(RHIDE_G77) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_F_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	-x f77 $(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_C=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS) $(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS) $(LOCAL_OPT) $(RHIDE_OS_CFLAGS) -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_C_FORCE=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	-x c $(LOCAL_OPT)  $(CPPFLAGS) $(CFLAGS) $(RHIDE_OS_CFLAGS) -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_CC=$(RHIDE_GXX) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS) $(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_CXX_LANG_FLAGS) $(C_EXTRA_FLAGS) $(RHIDE_OS_CXXFLAGS) $(LOCAL_OPT) -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_CC_FORCE=$(RHIDE_GXX) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS)\
	$(C_CXX_LANG_FLAGS) $(C_EXTRA_FLAGS)  $(CPPFLAGS) $(CXXFLAGS)\
	$(RHIDE_OS_CXXFLAGS) -x c++ $(LOCAL_OPT)   -c $(SOURCE_NAME) -o\
	$(OUTFILE)
RHIDE_COMPILE_ASM=$(RHIDE_AS) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_EXTRA_FLAGS) $(LOCAL_OPT)  -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_ASM_FORCE=$(RHIDE_AS) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_EXTRA_FLAGS) -x assembler\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_GPC_FLAGS=$(RHIDE_INCLUDES) $(C_DEBUG_FLAGS) $(C_OPT_FLAGS)\
	$(C_WARN_FLAGS)  $(C_P_LANG_FLAGS) $(C_EXTRA_FLAGS)
RHIDE_COMPILE_GPC=$(RHIDE_GPC) $(RHIDE_GPC_FLAGS) $(LOCAL_OPT)  -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_GPC_FORCE=$(RHIDE_GPC) $(RHIDE_GPC_FLAGS) -x pascal\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_FPC_FLAGS=$(C_FPC_LANG_FLAGS) $(LOCAL_OPT) $(addprefix\
	-Up,$(INCLUDE_DIRS))  $(C_EXTRA_FLAGS)
RHIDE_COMPILE_FPC=$(RHIDE_FPC) $(RHIDE_FPC_FLAGS) -E- $(SOURCE_NAME)
RHIDE_COMPILE_FPC_FORCE=$(RHIDE_FPC) $(RHIDE_FPC_FLAGS) -B -E-\
	$(SOURCE_NAME)
RHIDE_COMPILE_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(LDFLAGS) -static $(RHIDE_LDFLAGS) $(C_EXTRA_FLAGS) -o $(OUTFILE)  $(OBJFILES) $(LIBRARIES) $(RHIDE_LIBS)
RHIDE_COMPILE_LINK_GPC=$(RHIDE_LD_PASCAL) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS)\
	-o $(OUTFILE)  $(OBJFILES) $(LIBRARIES) $(RHIDE_LDFLAGS) $(LDFLAGS)\
	$(RHIDE_LIBS)
RHIDE_COMPILE_LINK_GPC_AUTOMAKE=$(RHIDE_LD_PASCAL) $(RHIDE_LIBDIRS)  -o\
	$(OUTFILE) --automake="$(strip $(RHIDE_GPC_FLAGS))"\
	$(RHIDE_GPC_FLAGS)  $(SOURCE_NAME) $(LIBRARIES) $(LDFLAGS)\
	$(RHIDE_LDFLAGS) $(RHIDE_LIBS)
RHIDE_COMPILE_PASCAL=$(RHIDE_COMPILE_$(PASCAL_TYPE))
RHIDE_COMPILE_PASCAL_FORCE=$(RHIDE_COMPILE_$(PASCAL_TYPE)_FORCE)
RHIDE_COMPILE_LINK_PASCAL_AUTOMAKE=$(RHIDE_COMPILE_LINK_$(PASCAL_TYPE)_AUTOMAKE)
RHIDE_COMPILE_LINK_PASCAL=$(RHIDE_COMPILE_LINK_$(PASCAL_TYPE))
RHIDE_FPC_LIBDIRS_DJGPP=$(DJDIR)/lib
RHIDE_FPC_LIBDIRS_Linux=/usr/local/lib /usr/lib /lib
RHIDE_FPC_LIBDIRS=$(RHIDE_FPC_LIBDIRS_$(RHIDE_OS))
RHIDE_FPC_LINK_FLAGS_DJGPP=-O coff-go32-exe $(RHIDE_LIBDIRS) $(addprefix\
	-L,$(RHIDE_FPC_LIBDIRS))
RHIDE_FPC_LINK_FLAGS_Linux=$(RHIDE_LIBDIRS) $(addprefix\
	-L,$(RHIDE_FPC_LIBDIRS))
RHIDE_FPC_LINK_FLAGS=$(RHIDE_FPC_LINK_FLAGS_$(RHIDE_OS))
RHIDE_COMPILE_LINK_FPC=$(RHIDE_LD_FPC) -o $(OUTFILE) $(OBJFILES)\
	$(RHIDE_FPC_LINK_FLAGS)   $(LIBRARIES) $(RHIDE_LIBS)
RHIDE_COMPILE_LINK_FPC_AUTOMAKE=$(RHIDE_FPC) -o$(OUTFILE) $(SOURCE_NAME)\
	$(RHIDE_FPC_FLAGS) -E+
RHIDE_COMPILE_ARCHIVE=$(RHIDE_AR) $(RHIDE_ARFLAGS) $(OUTFILE) $(OBJFILES)
RHIDE_COMPILE_ADA=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	$(LOCAL_OPT)  $(C_ADA_LANG_FLAGS)  $(CPPFLAGS) $(CFLAGS)\
	$(RHIDE_OS_CFLAGS) -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_ADA_BIND_FILE=$(addprefix _,$(setsuffix .c,$(OUTFILE)))
RHIDE_COMPILE_LINK_ADA_BIND=$(RHIDE_GNATBIND) -o $(RHIDE_ADA_BIND_FILE)\
	$(setsuffix .ali,$(OUTFILE))
RHIDE_COMPILE_LINK_ADA_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE)  $(RHIDE_ADA_BIND_FILE) $(OBJFILES) $(LIBRARIES)\
	$(LDFLAGS)  $(RHIDE_LDFLAGS) $(RHIDE_LIBS)
_RHIDE_COMPILE_LINK_ADA=$(RHIDE_COMPILE_LINK_ADA_BIND);\
	$(RHIDE_COMPILE_LINK_ADA_LINK);   $(RHIDE_RM)\
	$(RHIDE_ADA_BIND_FILE)
RHIDE_COMPILE_LINK_ADA=gnatbl $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE)  $(setsuffix .ali,$(OUTFILE)) $(LIBRARIES) $(LDFLAGS) \
	$(RHIDE_LDFLAGS) $(RHIDE_LIBS)
RHIDE_COMPILE.c.o=$(RHIDE_COMPILE_C)
RHIDE_COMPILE.cc.o=$(RHIDE_COMPILE_CC)
RHIDE_COMPILE.p.o=$(RHIDE_COMPILE_PASCAL)
RHIDE_COMPILE.pas.o=$(RHIDE_COMPILE.p.o)
RHIDE_COMPILE.pp.o=$(RHIDE_COMPILE_FPC)
RHIDE_COMPILE.pas.s.GPC=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_GPC))
RHIDE_COMPILE.pas.s.FPC=$(RHIDE_COMPILE_FPC) -a -s
RHIDE_COMPILE.pas.s=$(RHIDE_COMPILE.pas.s.$(PASCAL_TYPE))
RHIDE_COMPILE.f.o=$(RHIDE_COMPILE_FORTRAN)
RHIDE_COMPILE.nsm.o=$(RHIDE_COMPILE_NASM)
RHIDE_COMPILE.s.o=$(RHIDE_COMPILE_ASM)
RHIDE_COMPILE.c.s=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_C))
RHIDE_COMPILE.c.i=$(subst -c $(SOURCE_NAME),-E\
	$(SOURCE_NAME),$(RHIDE_COMPILE_C))
RHIDE_COMPILE.i.s=$(RHIDE_COMPILE.c.s)
RHIDE_COMPILE.cc.s=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_CC))
RHIDE_COMPILE.cc.ii=$(subst -c $(SOURCE_NAME),-E\
	$(SOURCE_NAME),$(RHIDE_COMPILE_CC))
RHIDE_COMPILE.ii.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cpp.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.cxx.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.C.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.pas.o=$(RHIDE_COMPILE.p.o)
RHIDE_COMPILE.for.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.F.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.fpp.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.asm.o=$(RHIDE_COMPILE.nsm.o)
RHIDE_COMPILE.cpp.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cxx.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.C.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cpp.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.cxx.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.C.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.adb.o=$(RHIDE_COMPILE_ADA)
RHIDE_FSDB=fsdb $(OUTFILE) $(addprefix -p ,$(SRC_DIRS)) $(PROG_ARGS)
RHIDE_GDB=gdb $(OUTFILE) $(addprefix -d ,$(SRC_DIRS))
DEFAULT_GREP_MASK=*.[cfhmnps]*
RHIDE_GREP=grep -n $(prompt arguments for GREP,$(WUC) $(DEFAULT_GREP_MASK))
RHIDE_GPROF=gprof $(OUTFILE)
RHIDE_RLOG=$(shell rlog -R $(rlog_arg))
RHIDE_CO=$(shell co -q $(co_arg))
RHIDE_STANDARD_INCLUDES_DJGPP=$(addprefix $(DJDIR)/,include include/sys\
	lang/cxx lang/cxx/std)
RHIDE_STANDARD_INCLUDES_Linux=$(addprefix /usr/,include include/sys\
	include/g++ include/g++/std)
RHIDE_STANDARD_INCLUDES=$(RHIDE_STANDARD_INCLUDES_$(RHIDE_OS))
RHIDE_CONFIG_DIRS_DJGPP=. $(RHIDE_SHARE) $(HOME) $(DJDIR)/share/rhide
RHIDE_CONFIG_DIRS_Linux=. $(RHIDE_SHARE) $(HOME) /usr/local/share/rhide\
	/usr/share/rhide  /local/share/rhide /share/rhide
RHIDE_CONFIG_DIRS=$(RHIDE_CONFIG_DIRS_$(RHIDE_OS))\
	$(RHIDE_BIN_DIR)/../share/rhide
RHIDE_PATH_SEPARATOR_DJGPP=;
RHIDE_PATH_SEPARATOR_Linux=:
RHIDE_PATH_SEPARATOR=$(RHIDE_PATH_SEPARATOR_$(RHIDE_OS))
RHIDE_GCC=gcc
RHIDE_GXX=gcc
RHIDE_LD=gcc
RHIDE_AR=ar
RHIDE_OS_CFLAGS=-O2 -Wall -Werror -gstabs+3 -pipe
RHIDE_OS_CXXFLAGS=-O2 -Wall -Werror -gstabs+3 -pipe
RHIDE_STDINC=/usr/include /usr/local/include /usr/include/g++ /usr/local/include/g++ /usr/lib/gcc-lib /usr/local/lib/gcc-lib ../libbzip2
RHIDE_OS_LIBS=rhtv ncurses m gpm bz2 mpegsnd z pcre 
RHIDE_OS_LIBS_PATH=../../tvision/linux ../libbzip2
TVISION_INC=../../tvision/include
SUPPORT_INC=../libbzip2
RHIDE_COMPILE_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(LDFLAGS) -static $(RHIDE_LDFLAGS) $(C_EXTRA_FLAGS) -o $(OUTFILE)  $(OBJFILES) $(LIBRARIES) $(RHIDE_LIBS)
RHIDE_COMPILE_C=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS) $(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS) $(LOCAL_OPT) $(RHIDE_OS_CFLAGS) -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_CC=$(RHIDE_GXX) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS) $(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_CXX_LANG_FLAGS) $(C_EXTRA_FLAGS) $(RHIDE_OS_CXXFLAGS) $(LOCAL_OPT) -c $(SOURCE_NAME) -o $(OUTFILE)
INCLUDE_DIRS=../include ../settvuti/include ../infview/include\
	$(TVISION_INC) ../extra ../librhuti $(SUPPORT_INC) ../easydiag\
	../setedit/include
LIB_DIRS=$(RHIDE_OS_LIBS_PATH) .
C_DEBUG_FLAGS=
C_OPT_FLAGS=
C_WARN_FLAGS=
C_C_LANG_FLAGS=
C_CXX_LANG_FLAGS=
C_P_LANG_FLAGS=
C_FPC_LANG_FLAGS=
C_F_LANG_FLAGS=
C_ADA_LANG_FLAGS=
LIBS=rhtv gcc pcre z
LD_EXTRA_FLAGS=
C_EXTRA_FLAGS=-DFOR_EDITOR -DNoEditorSpecific
LOCAL_OPT=$(subst ___~~~___, ,$(subst $(notdir $<)___,,$(filter $(notdir\
	$<)___%,$(LOCAL_OPTIONS))))
OBJFILES=objinf/codepage.o objinf/dyncat.o objinf/fstrcmp.o\
	objinf/gzfiles.o objinf/inf.o objinf/infbase.o objinf/infdummy.o\
	objinf/infmain.o objinf/infmenu.o objinf/manview.o\
	objinf/nhiscoll.o objinf/ninfview.o objinf/ninfwind.o\
	objinf/nmanwind.o objinf/sinf.o objinf/sman.o objinf/strncpyz.o
LIBRARIES=libeasyd.a librhuti.a libsettv.a
SOURCE_NAME=$<
OUTFILE=$@
SPECIAL_CFLAGS=
SPECIAL_LDFLAGS=
PROG_ARGS=libc
SRC_DIRS=../infview ../settvuti ../extra ../../tvision/classes\
	../infview/names ../infview/streams ../mainsrc ../setedit
WUC=
EDITORS=
RHIDE_OS=$(RHIDE_OS_)
ifeq ($(strip $(RHIDE_OS)),)
ifneq ($(strip $(DJDIR)),)
RHIDE_OS_:=DJGPP
else
RHIDE_OS_:=$(shell uname)
endif
endif

MAIN_TARGET=infview.exe
PROJECT_ITEMS=codepage.cc dyncat.cc easydiag.gpr fstrcmp.c gzfiles.cc\
	inf.cc infbase.cc infdummy.cc infmain.cc infmenu.cc librhuti.gpr\
	manview.cc nhiscoll.cc ninfview.cc ninfwind.cc nmanwind.cc\
	settv.gpr sinf.cc sman.cc strncpyz.cc
DEFAULT_MASK=*
RHIDE_BIN_DIR=/usr/bin
PASCAL_TYPE=GPC
%.o: %.c
	$(RHIDE_COMPILE.c.o)
%.o: %.i
	$(RHIDE_COMPILE_C)
%.o: %.cc
	$(RHIDE_COMPILE.cc.o)
%.o: %.cpp
	$(RHIDE_COMPILE.cpp.o)
%.o: %.cxx
	$(RHIDE_COMPILE.cxx.o)
%.o: %.C
	$(RHIDE_COMPILE.C.o)
%.o: %.ii
	$(RHIDE_COMPILE_CC)
%.o: %.s
	$(RHIDE_COMPILE.s.o)
%.o: %.S
	$(RHIDE_COMPILE_ASM)
%.s: %.c
	$(RHIDE_COMPILE.c.s)
%.s: %.i
	$(RHIDE_COMPILE.i.s)
%.s: %.cc
	$(RHIDE_COMPILE.cc.s)
%.s: %.cpp
	$(RHIDE_COMPILE.cpp.s)
%.s: %.cxx
	$(RHIDE_COMPILE.cxx.s)
%.s: %.C
	$(RHIDE_COMPILE.C.s)
%.o: %.pas
	$(RHIDE_COMPILE.pas.o)
%.o: %.p
	$(RHIDE_COMPILE.p.o)
%.o: %.pp
	$(RHIDE_COMPILE.pp.o)
%.s: %.pas
	$(RHIDE_COMPILE.pas.s)
%.o: %.m
	$(RHIDE_COMPILE_OBJC)
%.o: %.f
	$(RHIDE_COMPILE.f.o)
%.o: %.for
	$(RHIDE_COMPILE.for.o)
%.o: %.F
	$(RHIDE_COMPILE.F.o)
%.o: %.fpp
	$(RHIDE_COMPILE.fpp.o)
%.o: %.asm
	$(RHIDE_COMPILE.asm.o)
%.o: %.nsm
	$(RHIDE_COMPILE.nsm.o)
%.o: %.adb
	$(RHIDE_COMPILE.adb.o)
%.i: %.c
	$(RHIDE_COMPILE.c.i)
%.s: %.c
	$(RHIDE_COMPILE.c.s)
%.ii: %.cc
	$(RHIDE_COMPILE.cc.ii)
%.s: %.cc
	$(RHIDE_COMPILE.cc.s)
%.ii: %.cpp
	$(RHIDE_COMPILE.cpp.ii)
%.s: %.cpp
	$(RHIDE_COMPILE.cpp.s)
%.ii: %.cxx
	$(RHIDE_COMPILE.cxx.ii)
%.s: %.cxx
	$(RHIDE_COMPILE.cxx.s)
%.ii: %.C
	$(RHIDE_COMPILE.C.ii)
%.s: %.C
	$(RHIDE_COMPILE.C.s)
all::
DEPS_0= objinf/codepage.o objinf/dyncat.o objinf/fstrcmp.o objinf/gzfiles.o\
	objinf/inf.o objinf/infbase.o objinf/infdummy.o objinf/infmain.o\
	objinf/infmenu.o objinf/manview.o objinf/nhiscoll.o\
	objinf/ninfview.o objinf/ninfwind.o objinf/nmanwind.o objinf/sinf.o\
	objinf/sman.o objinf/strncpyz.o libeasyd.a librhuti.a libsettv.a
NO_LINK=
LINK_FILES=$(filter-out $(NO_LINK),$(DEPS_0))
infview.exe:: $(DEPS_0)
	$(RHIDE_COMPILE_LINK)
DEPS_1=codepage.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/app.h\
	../../tvision/include/tv/backgrnd.h\
	../../tvision/include/tv/button.h\
	../../tvision/include/tv/checkbox.h\
	../../tvision/include/tv/clrdlg.h\
	../../tvision/include/tv/clrselct.h\
	../../tvision/include/tv/cluster.h\
	../../tvision/include/tv/collectn.h\
	../../tvision/include/tv/colorsel.h\
	../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/desktop.h\
	../../tvision/include/tv/dialog.h\
	../../tvision/include/tv/dialogs.h\
	../../tvision/include/tv/dirlibo.h\
	../../tvision/include/tv/drawbuf.h ../../tvision/include/tv/event.h\
	../../tvision/include/tv/frame.h ../../tvision/include/tv/group.h\
	../../tvision/include/tv/history.h\
	../../tvision/include/tv/indicato.h\
	../../tvision/include/tv/inputln.h ../../tvision/include/tv/intl.h\
	../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/listbox.h\
	../../tvision/include/tv/lstviewr.h\
	../../tvision/include/tv/menubox.h ../../tvision/include/tv/menus.h\
	../../tvision/include/tv/menuview.h\
	../../tvision/include/tv/mnoselct.h\
	../../tvision/include/tv/no_mss.h ../../tvision/include/tv/nscoll.h\
	../../tvision/include/tv/nssorcol.h\
	../../tvision/include/tv/object.h\
	../../tvision/include/tv/objects.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/point.h ../../tvision/include/tv/program.h\
	../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/radiobtn.h ../../tvision/include/tv/rect.h\
	../../tvision/include/tv/resource.h\
	../../tvision/include/tv/screen.h\
	../../tvision/include/tv/scrlbar.h\
	../../tvision/include/tv/sortcoll.h\
	../../tvision/include/tv/statslin.h\
	../../tvision/include/tv/stddlg.h\
	../../tvision/include/tv/streambl.h\
	../../tvision/include/tv/strncoll.h\
	../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvobjs.h ../../tvision/include/tv/tvutil.h\
	../../tvision/include/tv/view.h ../../tvision/include/tv/views.h\
	../../tvision/include/tv/window.h\
	../../tvision/include/tv/yes_mss.h ../include/ced_coma.h\
	../include/ced_inte.h ../include/ceditor.h\
	../setedit/include/codepage.h ../settvuti/include/setstack.h\
	../settvuti/include/settvuti.h ../settvuti/include/tnocastc.h\
	../settvuti/include/tprogdia.h
objinf/codepage.o:: $(DEPS_1)
	$(RHIDE_COMPILE.cc.o)
DEPS_2=dyncat.cc ../extra/dyncat.h
objinf/dyncat.o:: $(DEPS_2)
	$(RHIDE_COMPILE.cc.o)
DEPS_3=
.PHONY: easydiag.gpr.force
all:: easydiag.gpr.force
easydiag.gpr.force:
	$(MAKE) -f easydiag.mak
DEPS_4=fstrcmp.c
objinf/fstrcmp.o:: $(DEPS_4)
	$(RHIDE_COMPILE.c.o)
DEPS_5=gzfiles.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/intl.h ../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/msgbox.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/stddlg.h ../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvutil.h ../../tvision/include/tv/views.h\
	../include/ceditint.h ../include/configed.h ../include/gzfiles.h
objinf/gzfiles.o:: $(DEPS_5)
	$(RHIDE_COMPILE.cc.o)
DEPS_6=inf.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/button.h\
	../../tvision/include/tv/checkbox.h\
	../../tvision/include/tv/cluster.h\
	../../tvision/include/tv/cmdset.h\
	../../tvision/include/tv/collectn.h\
	../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/dialog.h\
	../../tvision/include/tv/dialogs.h\
	../../tvision/include/tv/drawbuf.h ../../tvision/include/tv/event.h\
	../../tvision/include/tv/filedlg.h\
	../../tvision/include/tv/findrepl.h\
	../../tvision/include/tv/frame.h ../../tvision/include/tv/group.h\
	../../tvision/include/tv/history.h\
	../../tvision/include/tv/inputln.h ../../tvision/include/tv/intl.h\
	../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/label.h ../../tvision/include/tv/listbox.h\
	../../tvision/include/tv/lstviewr.h\
	../../tvision/include/tv/menus.h ../../tvision/include/tv/msgbox.h\
	../../tvision/include/tv/no_mss.h ../../tvision/include/tv/nscoll.h\
	../../tvision/include/tv/nssorcol.h\
	../../tvision/include/tv/object.h\
	../../tvision/include/tv/objects.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/palette.h ../../tvision/include/tv/point.h\
	../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/radiobtn.h ../../tvision/include/tv/rect.h\
	../../tvision/include/tv/resource.h\
	../../tvision/include/tv/scrlbar.h\
	../../tvision/include/tv/scroller.h\
	../../tvision/include/tv/sitem.h\
	../../tvision/include/tv/sortcoll.h\
	../../tvision/include/tv/sortlibo.h\
	../../tvision/include/tv/statslin.h\
	../../tvision/include/tv/stddlg.h\
	../../tvision/include/tv/streambl.h\
	../../tvision/include/tv/strmblcl.h\
	../../tvision/include/tv/strncoll.h\
	../../tvision/include/tv/sttctext.h\
	../../tvision/include/tv/system.h\
	../../tvision/include/tv/tkeyext.h ../../tvision/include/tv/tkeys.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvobjs.h ../../tvision/include/tv/tvutil.h\
	../../tvision/include/tv/view.h ../../tvision/include/tv/views.h\
	../../tvision/include/tv/window.h\
	../../tvision/include/tv/yes_mss.h ../extra/dyncat.h\
	../include/ced_coma.h ../include/ced_exte.h ../include/ceditint.h\
	../include/ceditor.h ../include/configed.h ../include/tvsetuti.h\
	../infview/include/inf.h ../infview/include/infbase.h\
	../infview/include/infbaser.h ../infview/include/infr.h\
	../settvuti/include/diaghelp.h ../settvuti/include/edhists.h\
	../settvuti/include/fileopen.h ../settvuti/include/fiopeaid.h\
	../settvuti/include/setstack.h ../settvuti/include/settvuti.h\
	../settvuti/include/tdiagrow.h ../settvuti/include/tnocastc.h\
	../settvuti/include/tprogrdi.h ../settvuti/include/tprogres.h
objinf/inf.o:: $(DEPS_6)
	$(RHIDE_COMPILE.cc.o)
DEPS_7=infbase.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/collectn.h\
	../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/dialogs.h\
	../../tvision/include/tv/drawbuf.h ../../tvision/include/tv/intl.h\
	../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/listbox.h\
	../../tvision/include/tv/lstviewr.h\
	../../tvision/include/tv/msgbox.h ../../tvision/include/tv/no_mss.h\
	../../tvision/include/tv/nscoll.h\
	../../tvision/include/tv/nssorcol.h\
	../../tvision/include/tv/object.h\
	../../tvision/include/tv/objects.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/point.h ../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/rect.h ../../tvision/include/tv/resource.h\
	../../tvision/include/tv/sortcoll.h\
	../../tvision/include/tv/sortlibo.h\
	../../tvision/include/tv/stddlg.h\
	../../tvision/include/tv/streambl.h\
	../../tvision/include/tv/strmblcl.h\
	../../tvision/include/tv/strncoll.h\
	../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvobjs.h ../../tvision/include/tv/tvutil.h\
	../../tvision/include/tv/view.h ../../tvision/include/tv/views.h\
	../../tvision/include/tv/yes_mss.h ../extra/dyncat.h\
	../include/ceditint.h ../include/configed.h ../include/gzfiles.h\
	../include/tvsetuti.h ../infview/include/infbase.h\
	../infview/include/infbaser.h ../settvuti/include/setstack.h\
	../settvuti/include/settvuti.h ../settvuti/include/tnocastc.h\
	../settvuti/include/tprogdia.h
objinf/infbase.o:: $(DEPS_7)
	$(RHIDE_COMPILE.cc.o)
DEPS_8=infdummy.cc
objinf/infdummy.o:: $(DEPS_8)
	$(RHIDE_COMPILE.cc.o)
DEPS_9=infmain.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/app.h\
	../../tvision/include/tv/applictn.h\
	../../tvision/include/tv/button.h\
	../../tvision/include/tv/chdirdlg.h\
	../../tvision/include/tv/cmdset.h\
	../../tvision/include/tv/collectn.h\
	../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/desktop.h\
	../../tvision/include/tv/dialog.h\
	../../tvision/include/tv/dialogs.h\
	../../tvision/include/tv/drawbuf.h\
	../../tvision/include/tv/editors.h ../../tvision/include/tv/event.h\
	../../tvision/include/tv/filedlg.h\
	../../tvision/include/tv/fpbase.h\
	../../tvision/include/tv/fpstream.h ../../tvision/include/tv/gkey.h\
	../../tvision/include/tv/group.h ../../tvision/include/tv/intl.h\
	../../tvision/include/tv/iopstrm.h\
	../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/label.h ../../tvision/include/tv/listbox.h\
	../../tvision/include/tv/lstviewr.h\
	../../tvision/include/tv/menus.h ../../tvision/include/tv/msgbox.h\
	../../tvision/include/tv/no_mss.h ../../tvision/include/tv/nscoll.h\
	../../tvision/include/tv/nssorcol.h\
	../../tvision/include/tv/object.h\
	../../tvision/include/tv/objects.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/palette.h ../../tvision/include/tv/point.h\
	../../tvision/include/tv/program.h\
	../../tvision/include/tv/pstream.h ../../tvision/include/tv/rect.h\
	../../tvision/include/tv/resource.h\
	../../tvision/include/tv/screen.h\
	../../tvision/include/tv/scrlbar.h\
	../../tvision/include/tv/scroller.h\
	../../tvision/include/tv/sortcoll.h\
	../../tvision/include/tv/sortlibo.h\
	../../tvision/include/tv/statslin.h\
	../../tvision/include/tv/stddlg.h\
	../../tvision/include/tv/streambl.h\
	../../tvision/include/tv/strncoll.h\
	../../tvision/include/tv/sttctext.h\
	../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvobjs.h ../../tvision/include/tv/tvutil.h\
	../../tvision/include/tv/view.h ../../tvision/include/tv/views.h\
	../../tvision/include/tv/window.h\
	../../tvision/include/tv/yes_mss.h ../easydiag/easydia1.h\
	../easydiag/easydiag.h ../easydiag/tsbutton.h ../easydiag/tslabel.h\
	../easydiag/tslistbo.h ../easydiag/tssortlb.h\
	../easydiag/tssortva.h ../easydiag/tsview.h ../easydiag/tsviewco.h\
	../include/ced_coma.h ../include/ceditint.h ../include/ceditor.h\
	../include/configed.h ../include/tvsetuti.h\
	../infview/include/inf.h ../infview/include/infalone.h\
	../infview/include/infbase.h ../infview/include/infbaser.h\
	../infview/include/infr.h ../infview/include/manview.h\
	../setedit/include/codepage.h ../setedit/include/pal.h\
	../settvuti/include/setstack.h ../settvuti/include/settvuti.h\
	../settvuti/include/tnocastc.h
objinf/infmain.o:: $(DEPS_9)
	$(RHIDE_COMPILE.cc.o)
DEPS_10=infmenu.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/app.h\
	../../tvision/include/tv/applictn.h\
	../../tvision/include/tv/cmdset.h\
	../../tvision/include/tv/collectn.h\
	../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/desktop.h\
	../../tvision/include/tv/dialog.h\
	../../tvision/include/tv/dialogs.h\
	../../tvision/include/tv/drawbuf.h\
	../../tvision/include/tv/editors.h ../../tvision/include/tv/event.h\
	../../tvision/include/tv/filedlg.h ../../tvision/include/tv/group.h\
	../../tvision/include/tv/intl.h ../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/listbox.h\
	../../tvision/include/tv/lstviewr.h\
	../../tvision/include/tv/menubar.h\
	../../tvision/include/tv/menuitem.h\
	../../tvision/include/tv/menus.h\
	../../tvision/include/tv/menuview.h\
	../../tvision/include/tv/msgbox.h ../../tvision/include/tv/no_mss.h\
	../../tvision/include/tv/nscoll.h\
	../../tvision/include/tv/nssorcol.h\
	../../tvision/include/tv/object.h\
	../../tvision/include/tv/objects.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/palette.h ../../tvision/include/tv/point.h\
	../../tvision/include/tv/program.h\
	../../tvision/include/tv/pstream.h ../../tvision/include/tv/rect.h\
	../../tvision/include/tv/resource.h\
	../../tvision/include/tv/scrlbar.h\
	../../tvision/include/tv/scroller.h\
	../../tvision/include/tv/sortcoll.h\
	../../tvision/include/tv/statsdef.h\
	../../tvision/include/tv/statsitm.h\
	../../tvision/include/tv/statslin.h\
	../../tvision/include/tv/stddlg.h\
	../../tvision/include/tv/streambl.h\
	../../tvision/include/tv/strncoll.h\
	../../tvision/include/tv/submenu.h\
	../../tvision/include/tv/system.h ../../tvision/include/tv/tkeys.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvobjs.h ../../tvision/include/tv/tvutil.h\
	../../tvision/include/tv/view.h ../../tvision/include/tv/views.h\
	../../tvision/include/tv/window.h\
	../../tvision/include/tv/yes_mss.h ../include/ced_coma.h\
	../include/ceditor.h ../include/tvsetuti.h ../infview/include/inf.h\
	../infview/include/infalone.h ../infview/include/infbase.h\
	../infview/include/infbaser.h ../infview/include/infr.h\
	../settvuti/include/setstack.h ../settvuti/include/settvuti.h\
	../settvuti/include/tnocastc.h
objinf/infmenu.o:: $(DEPS_10)
	$(RHIDE_COMPILE.cc.o)
DEPS_11=
.PHONY: librhuti.gpr.force
all:: librhuti.gpr.force
librhuti.gpr.force:
	$(MAKE) -f librhuti.mak
DEPS_12=manview.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/app.h\
	../../tvision/include/tv/button.h\
	../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/desktop.h\
	../../tvision/include/tv/dialog.h\
	../../tvision/include/tv/dialogs.h\
	../../tvision/include/tv/drawbuf.h ../../tvision/include/tv/event.h\
	../../tvision/include/tv/frame.h ../../tvision/include/tv/group.h\
	../../tvision/include/tv/history.h\
	../../tvision/include/tv/inputln.h ../../tvision/include/tv/intl.h\
	../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/label.h ../../tvision/include/tv/no_mss.h\
	../../tvision/include/tv/nscoll.h ../../tvision/include/tv/object.h\
	../../tvision/include/tv/objects.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/palette.h ../../tvision/include/tv/point.h\
	../../tvision/include/tv/pstream.h ../../tvision/include/tv/rect.h\
	../../tvision/include/tv/scrlbar.h\
	../../tvision/include/tv/scroller.h\
	../../tvision/include/tv/stddlg.h\
	../../tvision/include/tv/streambl.h\
	../../tvision/include/tv/sttctext.h\
	../../tvision/include/tv/system.h\
	../../tvision/include/tv/tkeyext.h ../../tvision/include/tv/tkeys.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvobjs.h ../../tvision/include/tv/tvutil.h\
	../../tvision/include/tv/view.h ../../tvision/include/tv/views.h\
	../../tvision/include/tv/window.h\
	../../tvision/include/tv/yes_mss.h ../easydiag/easydia1.h\
	../easydiag/easydiag.h ../easydiag/tsbutton.h\
	../easydiag/tsinplin.h ../easydiag/tslabel.h ../easydiag/tsvegrp.h\
	../easydiag/tsview.h ../easydiag/tsviewco.h ../extra/dyncat.h\
	../include/ced_coma.h ../include/ceditor.h\
	../infview/include/manview.h ../librhuti/rhutils.h\
	../setedit/include/codepage.h ../settvuti/include/diaghelp.h\
	../settvuti/include/settvuti.h
objinf/manview.o:: $(DEPS_12)
	$(RHIDE_COMPILE.cc.o)
DEPS_13=nhiscoll.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/intl.h ../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/stddlg.h ../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvutil.h ../../tvision/include/tv/views.h\
	../settvuti/include/settvuti.h
objinf/nhiscoll.o:: $(DEPS_13)
	$(RHIDE_COMPILE.cc.o)
DEPS_14=ninfview.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/intl.h ../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/stddlg.h ../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvutil.h ../../tvision/include/tv/views.h\
	../settvuti/include/settvuti.h
objinf/ninfview.o:: $(DEPS_14)
	$(RHIDE_COMPILE.cc.o)
DEPS_15=ninfwind.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/intl.h ../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/stddlg.h ../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvutil.h ../../tvision/include/tv/views.h\
	../settvuti/include/settvuti.h
objinf/ninfwind.o:: $(DEPS_15)
	$(RHIDE_COMPILE.cc.o)
DEPS_16=nmanwind.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/intl.h ../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/stddlg.h ../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvutil.h ../../tvision/include/tv/views.h\
	../settvuti/include/settvuti.h
objinf/nmanwind.o:: $(DEPS_16)
	$(RHIDE_COMPILE.cc.o)
DEPS_17=
.PHONY: settv.gpr.force
all:: settv.gpr.force
settv.gpr.force:
	$(MAKE) -f settv.mak
DEPS_18=sinf.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/collectn.h\
	../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/dialog.h\
	../../tvision/include/tv/dialogs.h\
	../../tvision/include/tv/drawbuf.h ../../tvision/include/tv/event.h\
	../../tvision/include/tv/group.h ../../tvision/include/tv/intl.h\
	../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/listbox.h\
	../../tvision/include/tv/lstviewr.h\
	../../tvision/include/tv/no_mss.h ../../tvision/include/tv/nscoll.h\
	../../tvision/include/tv/nssorcol.h\
	../../tvision/include/tv/object.h\
	../../tvision/include/tv/objects.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/point.h ../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/rect.h ../../tvision/include/tv/resource.h\
	../../tvision/include/tv/scrlbar.h\
	../../tvision/include/tv/scroller.h\
	../../tvision/include/tv/sortcoll.h\
	../../tvision/include/tv/stddlg.h\
	../../tvision/include/tv/streambl.h\
	../../tvision/include/tv/strmblcl.h\
	../../tvision/include/tv/strncoll.h\
	../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvobjs.h ../../tvision/include/tv/tvutil.h\
	../../tvision/include/tv/view.h ../../tvision/include/tv/views.h\
	../../tvision/include/tv/window.h\
	../../tvision/include/tv/yes_mss.h ../include/tvsetuti.h\
	../infview/include/inf.h ../infview/include/infbase.h\
	../infview/include/infbaser.h ../infview/include/infr.h\
	../settvuti/include/setstack.h ../settvuti/include/settvuti.h\
	../settvuti/include/tnocastc.h
objinf/sinf.o:: $(DEPS_18)
	$(RHIDE_COMPILE.cc.o)
DEPS_19=sman.cc ../../tvision/include/compatlayer.h\
	../../tvision/include/tv.h ../../tvision/include/tv/configtv.h\
	../../tvision/include/tv/drawbuf.h ../../tvision/include/tv/group.h\
	../../tvision/include/tv/intl.h ../../tvision/include/tv/ipstream.h\
	../../tvision/include/tv/no_mss.h ../../tvision/include/tv/nscoll.h\
	../../tvision/include/tv/object.h\
	../../tvision/include/tv/objects.h\
	../../tvision/include/tv/opstream.h\
	../../tvision/include/tv/point.h ../../tvision/include/tv/pstream.h\
	../../tvision/include/tv/rect.h ../../tvision/include/tv/scroller.h\
	../../tvision/include/tv/stddlg.h\
	../../tvision/include/tv/streambl.h\
	../../tvision/include/tv/strmblcl.h\
	../../tvision/include/tv/system.h\
	../../tvision/include/tv/tobjstrm.h\
	../../tvision/include/tv/ttypes.h\
	../../tvision/include/tv/tvconfig.h\
	../../tvision/include/tv/tvobjs.h ../../tvision/include/tv/tvutil.h\
	../../tvision/include/tv/view.h ../../tvision/include/tv/views.h\
	../../tvision/include/tv/window.h\
	../../tvision/include/tv/yes_mss.h ../include/tvsetuti.h\
	../infview/include/manview.h
objinf/sman.o:: $(DEPS_19)
	$(RHIDE_COMPILE.cc.o)
DEPS_20=strncpyz.cc
objinf/strncpyz.o:: $(DEPS_20)
	$(RHIDE_COMPILE.cc.o)
all:: infview.exe
