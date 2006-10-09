%module sw_report_gnome
%{
/* Includes the header in the wrapper code */
#include <config.h>
#include <gtk/gtk.h>
#include <dialog-column-view.h>
#include <gnc-plugin-page-report.h>
#include <window-report.h>
%}


void gnc_report_raise_editor(SCM report);
void gnc_main_window_open_report(int report_id, GncMainWindow *window);
GtkWidget * gnc_report_window_default_params_editor(SCM options, SCM report);
GtkWidget * gnc_column_view_edit_options(SCM options, SCM view);

