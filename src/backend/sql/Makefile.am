include $(top_srcdir)/test-templates/Makefile.decl
SUBDIRS = . test
TEST_SUBDIRS = test

# Now a shared library AND a GModule
lib_LTLIBRARIES = libgnc-backend-sql.la

# "${top_srcdir}/src/debug" below is for the splint header
AM_CPPFLAGS = \
  -I.. -I../.. \
  -DLOCALE_DIR=\""$(datadir)/locale"\" \
  -I${top_srcdir}/src/backend \
  -I${top_srcdir}/src/debug \
  -I${top_srcdir}/src/engine \
  -I${top_srcdir}/src/core-utils\
  -I${top_srcdir}/lib/libc\
  -I${top_srcdir}/src/libqof/qof \
  ${GLIB_CFLAGS} \
  ${GUILE_CFLAGS} \
  ${WARN_CFLAGS} \
  ${BOOST_CPPFLAGS}

libgnc_backend_sql_la_SOURCES = \
  gnc-backend-sql.cpp \
  gnc-account-sql.cpp \
  gnc-address-sql.cpp \
  gnc-bill-term-sql.cpp \
  gnc-book-sql.cpp \
  gnc-budget-sql.cpp \
  gnc-commodity-sql.cpp \
  gnc-customer-sql.cpp \
  gnc-employee-sql.cpp \
  gnc-entry-sql.cpp \
  gnc-invoice-sql.cpp \
  gnc-job-sql.cpp \
  gnc-lots-sql.cpp \
  gnc-order-sql.cpp \
  gnc-owner-sql.cpp \
  gnc-price-sql.cpp \
  gnc-recurrence-sql.cpp \
  gnc-schedxaction-sql.cpp \
  gnc-slots-sql.cpp \
  gnc-tax-table-sql.cpp \
  gnc-transaction-sql.cpp \
  gnc-vendor-sql.cpp \
  escape.cpp

noinst_HEADERS = \
  gnc-account-sql.h \
  gnc-address-sql.h \
  gnc-backend-sql.h \
  gnc-bill-term-sql.h \
  gnc-book-sql.h \
  gnc-budget-sql.h \
  gnc-commodity-sql.h \
  gnc-customer-sql.h \
  gnc-employee-sql.h \
  gnc-entry-sql.h \
  gnc-invoice-sql.h \
  gnc-job-sql.h \
  gnc-lots-sql.h \
  gnc-order-sql.h \
  gnc-owner-sql.h \
  gnc-price-sql.h \
  gnc-recurrence-sql.h \
  gnc-schedxaction-sql.h \
  gnc-slots-sql.h \
  gnc-tax-table-sql.h \
  gnc-transaction-sql.h \
  gnc-vendor-sql.h \
  escape.h

libgnc_backend_sql_la_LIBADD = \
   ${GLIB_LIBS} \
   ${GUILE_LIBS} \
   ${top_builddir}/src/engine/libgncmod-engine.la \
   ${top_builddir}/src/libqof/qof/libgnc-qof.la

AM_CPPFLAGS += -DG_LOG_DOMAIN=\"gnc.backend.sql\"
