# Donk Project
# Copyright (c) 2021 Warriorstar Orion <orion@snowfrost.garden>
# SPDX-License-Identifier: MIT
load("@wso_third_party_buildfiles//:cef.bzl", "MAC_COPTS", "MAC_DEFINES", "WINDOWS_COPTS", "WINDOWS_DEFINES", "WINDOWS_LINKOPTS")
load("@rules_cc//cc:defs.bzl", "cc_library")

config_setting(
    name = "windows",
    values = {"cpu": "x64_windows"},
)

LIBCEF_INCLUDE_SRCS = [
    "include/cef_accessibility_handler.h",
    "include/cef_api_hash.h",
    "include/cef_app.h",
    "include/cef_audio_handler.h",
    "include/cef_auth_callback.h",
    "include/cef_base.h",
    "include/cef_browser.h",
    "include/cef_browser_process_handler.h",
    "include/cef_callback.h",
    "include/cef_client.h",
    "include/cef_command_line.h",
    "include/cef_config.h",
    "include/cef_context_menu_handler.h",
    "include/cef_cookie.h",
    "include/cef_crash_util.h",
    "include/cef_devtools_message_observer.h",
    "include/cef_dialog_handler.h",
    "include/cef_display_handler.h",
    "include/cef_dom.h",
    "include/cef_download_handler.h",
    "include/cef_download_item.h",
    "include/cef_drag_data.h",
    "include/cef_drag_handler.h",
    "include/cef_extension.h",
    "include/cef_extension_handler.h",
    "include/cef_file_util.h",
    "include/cef_find_handler.h",
    "include/cef_focus_handler.h",
    "include/cef_frame.h",
    "include/cef_image.h",
    "include/cef_jsdialog_handler.h",
    "include/cef_keyboard_handler.h",
    "include/cef_life_span_handler.h",
    "include/cef_load_handler.h",
    "include/cef_media_router.h",
    "include/cef_menu_model.h",
    "include/cef_menu_model_delegate.h",
    "include/cef_navigation_entry.h",
    "include/cef_origin_whitelist.h",
    "include/cef_parser.h",
    "include/cef_path_util.h",
    "include/cef_print_handler.h",
    "include/cef_print_settings.h",
    "include/cef_process_message.h",
    "include/cef_process_util.h",
    "include/cef_registration.h",
    "include/cef_render_handler.h",
    "include/cef_render_process_handler.h",
    "include/cef_request.h",
    "include/cef_request_callback.h",
    "include/cef_request_context.h",
    "include/cef_request_context_handler.h",
    "include/cef_request_handler.h",
    "include/cef_resource_bundle.h",
    "include/cef_resource_bundle_handler.h",
    "include/cef_resource_handler.h",
    "include/cef_resource_request_handler.h",
    "include/cef_response.h",
    "include/cef_response_filter.h",
    "include/cef_scheme.h",
    "include/cef_server.h",
    "include/cef_ssl_info.h",
    "include/cef_ssl_status.h",
    "include/cef_stream.h",
    "include/cef_string_visitor.h",
    "include/cef_task.h",
    "include/cef_thread.h",
    "include/cef_trace.h",
    "include/cef_urlrequest.h",
    "include/cef_v8.h",
    "include/cef_values.h",
    "include/cef_version.h",
    "include/cef_waitable_event.h",
    "include/cef_web_plugin.h",
    "include/cef_x509_certificate.h",
    "include/cef_xml_reader.h",
    "include/cef_zip_reader.h",
]

LIBCEF_INCLUDE_SRCS_MAC = [
    "include/cef_application_mac.h",
    "include/cef_sandbox_mac.h",
]

LIBCEF_INCLUDE_SRCS_WINDOWS = [
    "include/cef_sandbox_win.h",
]

LIBCEF_INCLUDE_CAPI_TEST_SRCS = [
    "include/capi/test/cef_test_helpers_capi.h",
    "include/capi/test/cef_translator_test_capi.h",
]

LIBCEF_INCLUDE_TEST_SRCS = [
    "include/test/cef_test_helpers.h",
    "include/test/cef_translator_test.h",
]

LIBCEF_INCLUDE_BASE_SRCS = [
    "include/base/cef_atomic_ref_count.h",
    "include/base/cef_atomicops.h",
    "include/base/cef_basictypes.h",
    "include/base/cef_bind.h",
    "include/base/cef_bind_helpers.h",
    "include/base/cef_build.h",
    "include/base/cef_callback.h",
    "include/base/cef_callback_forward.h",
    "include/base/cef_callback_helpers.h",
    "include/base/cef_callback_list.h",
    "include/base/cef_cancelable_callback.h",
    "include/base/cef_lock.h",
    "include/base/cef_logging.h",
    "include/base/cef_macros.h",
    "include/base/cef_move.h",
    "include/base/cef_platform_thread.h",
    "include/base/cef_ref_counted.h",
    "include/base/cef_scoped_ptr.h",
    "include/base/cef_string16.h",
    "include/base/cef_template_util.h",
    "include/base/cef_thread_checker.h",
    "include/base/cef_trace_event.h",
    "include/base/cef_tuple.h",
    "include/base/cef_weak_ptr.h",
]

LIBCEF_INCLUDE_BASE_INTERNAL_SRCS = [
    "include/base/internal/cef_bind_internal.h",
    "include/base/internal/cef_callback_internal.h",
    "include/base/internal/cef_lock_impl.h",
    "include/base/internal/cef_raw_scoped_refptr_mismatch_checker.h",
    "include/base/internal/cef_thread_checker_impl.h",
    "include/base/internal/cef_net_error_list.h",
]

LIBCEF_INCLUDE_BASE_INTERNAL_SRCS_LINUX = [
    "include/base/internal/cef_atomicops_arm64_gcc.h",
    "include/base/internal/cef_atomicops_arm_gcc.h",
    "include/base/internal/cef_atomicops_atomicword_compat.h",
    "include/base/internal/cef_atomicops_x86_gcc.h",
]

LIBCEF_INCLUDE_BASE_INTERNAL_SRCS_MAC = [
    "include/base/internal/cef_atomicops_atomicword_compat.h",
    "include/base/internal/cef_atomicops_mac.h",
]

LIBCEF_INCLUDE_BASE_INTERNAL_SRCS_WINDOWS = [
    "include/base/internal/cef_atomicops_arm64_msvc.h",
    "include/base/internal/cef_atomicops_x86_msvc.h",
    "include/base/internal/cef_bind_internal_win.h",
]

LIBCEF_INCLUDE_CAPI_SRCS = [
    "include/capi/cef_accessibility_handler_capi.h",
    "include/capi/cef_app_capi.h",
    "include/capi/cef_audio_handler_capi.h",
    "include/capi/cef_auth_callback_capi.h",
    "include/capi/cef_base_capi.h",
    "include/capi/cef_browser_capi.h",
    "include/capi/cef_browser_process_handler_capi.h",
    "include/capi/cef_callback_capi.h",
    "include/capi/cef_client_capi.h",
    "include/capi/cef_command_line_capi.h",
    "include/capi/cef_context_menu_handler_capi.h",
    "include/capi/cef_cookie_capi.h",
    "include/capi/cef_crash_util_capi.h",
    "include/capi/cef_devtools_message_observer_capi.h",
    "include/capi/cef_dialog_handler_capi.h",
    "include/capi/cef_display_handler_capi.h",
    "include/capi/cef_dom_capi.h",
    "include/capi/cef_download_handler_capi.h",
    "include/capi/cef_download_item_capi.h",
    "include/capi/cef_drag_data_capi.h",
    "include/capi/cef_drag_handler_capi.h",
    "include/capi/cef_extension_capi.h",
    "include/capi/cef_extension_handler_capi.h",
    "include/capi/cef_file_util_capi.h",
    "include/capi/cef_find_handler_capi.h",
    "include/capi/cef_focus_handler_capi.h",
    "include/capi/cef_frame_capi.h",
    "include/capi/cef_image_capi.h",
    "include/capi/cef_jsdialog_handler_capi.h",
    "include/capi/cef_keyboard_handler_capi.h",
    "include/capi/cef_life_span_handler_capi.h",
    "include/capi/cef_load_handler_capi.h",
    "include/capi/cef_media_router_capi.h",
    "include/capi/cef_menu_model_capi.h",
    "include/capi/cef_menu_model_delegate_capi.h",
    "include/capi/cef_navigation_entry_capi.h",
    "include/capi/cef_origin_whitelist_capi.h",
    "include/capi/cef_parser_capi.h",
    "include/capi/cef_path_util_capi.h",
    "include/capi/cef_print_handler_capi.h",
    "include/capi/cef_print_settings_capi.h",
    "include/capi/cef_process_message_capi.h",
    "include/capi/cef_process_util_capi.h",
    "include/capi/cef_registration_capi.h",
    "include/capi/cef_render_handler_capi.h",
    "include/capi/cef_render_process_handler_capi.h",
    "include/capi/cef_request_callback_capi.h",
    "include/capi/cef_request_capi.h",
    "include/capi/cef_request_context_capi.h",
    "include/capi/cef_request_context_handler_capi.h",
    "include/capi/cef_request_handler_capi.h",
    "include/capi/cef_resource_bundle_capi.h",
    "include/capi/cef_resource_bundle_handler_capi.h",
    "include/capi/cef_resource_handler_capi.h",
    "include/capi/cef_resource_request_handler_capi.h",
    "include/capi/cef_response_capi.h",
    "include/capi/cef_response_filter_capi.h",
    "include/capi/cef_scheme_capi.h",
    "include/capi/cef_server_capi.h",
    "include/capi/cef_ssl_info_capi.h",
    "include/capi/cef_ssl_status_capi.h",
    "include/capi/cef_stream_capi.h",
    "include/capi/cef_string_visitor_capi.h",
    "include/capi/cef_task_capi.h",
    "include/capi/cef_thread_capi.h",
    "include/capi/cef_trace_capi.h",
    "include/capi/cef_urlrequest_capi.h",
    "include/capi/cef_v8_capi.h",
    "include/capi/cef_values_capi.h",
    "include/capi/cef_waitable_event_capi.h",
    "include/capi/cef_web_plugin_capi.h",
    "include/capi/cef_x509_certificate_capi.h",
    "include/capi/cef_xml_reader_capi.h",
    "include/capi/cef_zip_reader_capi.h",
]

LIBCEF_INCLUDE_CAPI_VIEWS_SRCS = [
    "include/capi/views/cef_box_layout_capi.h",
    "include/capi/views/cef_browser_view_capi.h",
    "include/capi/views/cef_browser_view_delegate_capi.h",
    "include/capi/views/cef_button_capi.h",
    "include/capi/views/cef_button_delegate_capi.h",
    "include/capi/views/cef_display_capi.h",
    "include/capi/views/cef_fill_layout_capi.h",
    "include/capi/views/cef_label_button_capi.h",
    "include/capi/views/cef_layout_capi.h",
    "include/capi/views/cef_menu_button_capi.h",
    "include/capi/views/cef_menu_button_delegate_capi.h",
    "include/capi/views/cef_panel_capi.h",
    "include/capi/views/cef_panel_delegate_capi.h",
    "include/capi/views/cef_scroll_view_capi.h",
    "include/capi/views/cef_textfield_capi.h",
    "include/capi/views/cef_textfield_delegate_capi.h",
    "include/capi/views/cef_view_capi.h",
    "include/capi/views/cef_view_delegate_capi.h",
    "include/capi/views/cef_window_capi.h",
    "include/capi/views/cef_window_delegate_capi.h",
]

LIBCEF_INCLUDE_INTERNAL_SRCS = [
    "include/internal/cef_export.h",
    "include/internal/cef_logging_internal.h",
    "include/internal/cef_ptr.h",
    "include/internal/cef_string.h",
    "include/internal/cef_string_list.h",
    "include/internal/cef_string_map.h",
    "include/internal/cef_string_multimap.h",
    "include/internal/cef_string_types.h",
    "include/internal/cef_string_wrappers.h",
    "include/internal/cef_thread_internal.h",
    "include/internal/cef_time.h",
    "include/internal/cef_trace_event_internal.h",
    "include/internal/cef_types.h",
    "include/internal/cef_types_wrappers.h",
]

LIBCEF_INCLUDE_INTERNAL_SRCS_LINUX = [
    "include/internal/cef_linux.h",
    "include/internal/cef_types_linux.h",
]

LIBCEF_INCLUDE_INTERNAL_SRCS_WINDOWS = [
    "include/internal/cef_types_win.h",
    "include/internal/cef_win.h",
]

LIBCEF_INCLUDE_VIEWS_SRCS = [
    "include/views/cef_box_layout.h",
    "include/views/cef_browser_view.h",
    "include/views/cef_browser_view_delegate.h",
    "include/views/cef_button.h",
    "include/views/cef_button_delegate.h",
    "include/views/cef_display.h",
    "include/views/cef_fill_layout.h",
    "include/views/cef_label_button.h",
    "include/views/cef_layout.h",
    "include/views/cef_menu_button.h",
    "include/views/cef_menu_button_delegate.h",
    "include/views/cef_panel.h",
    "include/views/cef_panel_delegate.h",
    "include/views/cef_scroll_view.h",
    "include/views/cef_textfield.h",
    "include/views/cef_textfield_delegate.h",
    "include/views/cef_view.h",
    "include/views/cef_view_delegate.h",
    "include/views/cef_window.h",
    "include/views/cef_window_delegate.h",
]

LIBCEF_INCLUDE_WRAPPER_SRCS = [
    "include/wrapper/cef_byte_read_handler.h",
    "include/wrapper/cef_closure_task.h",
    "include/wrapper/cef_helpers.h",
    "include/wrapper/cef_message_router.h",
    "include/wrapper/cef_resource_manager.h",
    "include/wrapper/cef_scoped_temp_dir.h",
    "include/wrapper/cef_stream_resource_handler.h",
    "include/wrapper/cef_xml_object.h",
    "include/wrapper/cef_zip_archive.h",
]

cc_library(
    name = "cef_headers",
    hdrs = LIBCEF_INCLUDE_BASE_INTERNAL_SRCS +
           LIBCEF_INCLUDE_BASE_SRCS +
           LIBCEF_INCLUDE_CAPI_SRCS +
           LIBCEF_INCLUDE_CAPI_TEST_SRCS +
           LIBCEF_INCLUDE_CAPI_VIEWS_SRCS +
           LIBCEF_INCLUDE_INTERNAL_SRCS +
           LIBCEF_INCLUDE_SRCS +
           LIBCEF_INCLUDE_TEST_SRCS +
           LIBCEF_INCLUDE_VIEWS_SRCS +
           LIBCEF_INCLUDE_WRAPPER_SRCS +
           select({
               "//:windows": LIBCEF_INCLUDE_BASE_INTERNAL_SRCS_WINDOWS +
                             LIBCEF_INCLUDE_INTERNAL_SRCS_WINDOWS +
                             LIBCEF_INCLUDE_SRCS_WINDOWS,
           }),
    copts = select({
        "//:windows": WINDOWS_COPTS,
    }),
    defines = select({
        "//:windows": WINDOWS_DEFINES,
    }),
    includes = ["include"],
    visibility = ["//visibility:public"],
)

LIBCEF_SRCS = [
    "libcef_dll/ptr_util.h",
    "libcef_dll/shutdown_checker.cc",
    "libcef_dll/shutdown_checker.h",
    "libcef_dll/transfer_util.cc",
    "libcef_dll/transfer_util.h",
    "libcef_dll/wrapper_types.h",
]

LIBCEF_BASE_SRCS = [
    "libcef_dll/base/cef_atomicops_x86_gcc.cc",
    "libcef_dll/base/cef_bind_helpers.cc",
    "libcef_dll/base/cef_callback_helpers.cc",
    "libcef_dll/base/cef_callback_internal.cc",
    "libcef_dll/base/cef_lock.cc",
    "libcef_dll/base/cef_lock_impl.cc",
    "libcef_dll/base/cef_logging.cc",
    "libcef_dll/base/cef_ref_counted.cc",
    "libcef_dll/base/cef_string16.cc",
    "libcef_dll/base/cef_thread_checker_impl.cc",
    "libcef_dll/base/cef_weak_ptr.cc",
]

LIBCEF_CPPTOC_SRCS = [
    "libcef_dll/cpptoc/accessibility_handler_cpptoc.cc",
    "libcef_dll/cpptoc/accessibility_handler_cpptoc.h",
    "libcef_dll/cpptoc/app_cpptoc.cc",
    "libcef_dll/cpptoc/app_cpptoc.h",
    "libcef_dll/cpptoc/audio_handler_cpptoc.cc",
    "libcef_dll/cpptoc/audio_handler_cpptoc.h",
    "libcef_dll/cpptoc/base_ref_counted_cpptoc.cc",
    "libcef_dll/cpptoc/base_ref_counted_cpptoc.h",
    "libcef_dll/cpptoc/base_scoped_cpptoc.cc",
    "libcef_dll/cpptoc/base_scoped_cpptoc.h",
    "libcef_dll/cpptoc/browser_process_handler_cpptoc.cc",
    "libcef_dll/cpptoc/browser_process_handler_cpptoc.h",
    "libcef_dll/cpptoc/client_cpptoc.cc",
    "libcef_dll/cpptoc/client_cpptoc.h",
    "libcef_dll/cpptoc/completion_callback_cpptoc.cc",
    "libcef_dll/cpptoc/completion_callback_cpptoc.h",
    "libcef_dll/cpptoc/context_menu_handler_cpptoc.cc",
    "libcef_dll/cpptoc/context_menu_handler_cpptoc.h",
    "libcef_dll/cpptoc/cookie_access_filter_cpptoc.cc",
    "libcef_dll/cpptoc/cookie_access_filter_cpptoc.h",
    "libcef_dll/cpptoc/cookie_visitor_cpptoc.cc",
    "libcef_dll/cpptoc/cookie_visitor_cpptoc.h",
    "libcef_dll/cpptoc/cpptoc_ref_counted.h",
    "libcef_dll/cpptoc/cpptoc_scoped.h",
    "libcef_dll/cpptoc/delete_cookies_callback_cpptoc.cc",
    "libcef_dll/cpptoc/delete_cookies_callback_cpptoc.h",
    "libcef_dll/cpptoc/dev_tools_message_observer_cpptoc.cc",
    "libcef_dll/cpptoc/dev_tools_message_observer_cpptoc.h",
    "libcef_dll/cpptoc/dialog_handler_cpptoc.cc",
    "libcef_dll/cpptoc/dialog_handler_cpptoc.h",
    "libcef_dll/cpptoc/display_handler_cpptoc.cc",
    "libcef_dll/cpptoc/display_handler_cpptoc.h",
    "libcef_dll/cpptoc/domvisitor_cpptoc.cc",
    "libcef_dll/cpptoc/domvisitor_cpptoc.h",
    "libcef_dll/cpptoc/download_handler_cpptoc.cc",
    "libcef_dll/cpptoc/download_handler_cpptoc.h",
    "libcef_dll/cpptoc/download_image_callback_cpptoc.cc",
    "libcef_dll/cpptoc/download_image_callback_cpptoc.h",
    "libcef_dll/cpptoc/drag_handler_cpptoc.cc",
    "libcef_dll/cpptoc/drag_handler_cpptoc.h",
    "libcef_dll/cpptoc/end_tracing_callback_cpptoc.cc",
    "libcef_dll/cpptoc/end_tracing_callback_cpptoc.h",
    "libcef_dll/cpptoc/extension_handler_cpptoc.cc",
    "libcef_dll/cpptoc/extension_handler_cpptoc.h",
    "libcef_dll/cpptoc/find_handler_cpptoc.cc",
    "libcef_dll/cpptoc/find_handler_cpptoc.h",
    "libcef_dll/cpptoc/focus_handler_cpptoc.cc",
    "libcef_dll/cpptoc/focus_handler_cpptoc.h",
    "libcef_dll/cpptoc/jsdialog_handler_cpptoc.cc",
    "libcef_dll/cpptoc/jsdialog_handler_cpptoc.h",
    "libcef_dll/cpptoc/keyboard_handler_cpptoc.cc",
    "libcef_dll/cpptoc/keyboard_handler_cpptoc.h",
    "libcef_dll/cpptoc/life_span_handler_cpptoc.cc",
    "libcef_dll/cpptoc/life_span_handler_cpptoc.h",
    "libcef_dll/cpptoc/load_handler_cpptoc.cc",
    "libcef_dll/cpptoc/load_handler_cpptoc.h",
    "libcef_dll/cpptoc/media_observer_cpptoc.cc",
    "libcef_dll/cpptoc/media_observer_cpptoc.h",
    "libcef_dll/cpptoc/media_route_create_callback_cpptoc.cc",
    "libcef_dll/cpptoc/media_route_create_callback_cpptoc.h",
    "libcef_dll/cpptoc/media_sink_device_info_callback_cpptoc.cc",
    "libcef_dll/cpptoc/media_sink_device_info_callback_cpptoc.h",
    "libcef_dll/cpptoc/menu_model_delegate_cpptoc.cc",
    "libcef_dll/cpptoc/menu_model_delegate_cpptoc.h",
    "libcef_dll/cpptoc/navigation_entry_visitor_cpptoc.cc",
    "libcef_dll/cpptoc/navigation_entry_visitor_cpptoc.h",
    "libcef_dll/cpptoc/pdf_print_callback_cpptoc.cc",
    "libcef_dll/cpptoc/pdf_print_callback_cpptoc.h",
    "libcef_dll/cpptoc/print_handler_cpptoc.cc",
    "libcef_dll/cpptoc/print_handler_cpptoc.h",
    "libcef_dll/cpptoc/read_handler_cpptoc.cc",
    "libcef_dll/cpptoc/read_handler_cpptoc.h",
    "libcef_dll/cpptoc/register_cdm_callback_cpptoc.cc",
    "libcef_dll/cpptoc/register_cdm_callback_cpptoc.h",
    "libcef_dll/cpptoc/render_handler_cpptoc.cc",
    "libcef_dll/cpptoc/render_handler_cpptoc.h",
    "libcef_dll/cpptoc/render_process_handler_cpptoc.cc",
    "libcef_dll/cpptoc/render_process_handler_cpptoc.h",
    "libcef_dll/cpptoc/request_context_handler_cpptoc.cc",
    "libcef_dll/cpptoc/request_context_handler_cpptoc.h",
    "libcef_dll/cpptoc/request_handler_cpptoc.cc",
    "libcef_dll/cpptoc/request_handler_cpptoc.h",
    "libcef_dll/cpptoc/resolve_callback_cpptoc.cc",
    "libcef_dll/cpptoc/resolve_callback_cpptoc.h",
    "libcef_dll/cpptoc/resource_bundle_handler_cpptoc.cc",
    "libcef_dll/cpptoc/resource_bundle_handler_cpptoc.h",
    "libcef_dll/cpptoc/resource_handler_cpptoc.cc",
    "libcef_dll/cpptoc/resource_handler_cpptoc.h",
    "libcef_dll/cpptoc/resource_request_handler_cpptoc.cc",
    "libcef_dll/cpptoc/resource_request_handler_cpptoc.h",
    "libcef_dll/cpptoc/response_filter_cpptoc.cc",
    "libcef_dll/cpptoc/response_filter_cpptoc.h",
    "libcef_dll/cpptoc/run_file_dialog_callback_cpptoc.cc",
    "libcef_dll/cpptoc/run_file_dialog_callback_cpptoc.h",
    "libcef_dll/cpptoc/scheme_handler_factory_cpptoc.cc",
    "libcef_dll/cpptoc/scheme_handler_factory_cpptoc.h",
    "libcef_dll/cpptoc/server_handler_cpptoc.cc",
    "libcef_dll/cpptoc/server_handler_cpptoc.h",
    "libcef_dll/cpptoc/set_cookie_callback_cpptoc.cc",
    "libcef_dll/cpptoc/set_cookie_callback_cpptoc.h",
    "libcef_dll/cpptoc/string_visitor_cpptoc.cc",
    "libcef_dll/cpptoc/string_visitor_cpptoc.h",
    "libcef_dll/cpptoc/task_cpptoc.cc",
    "libcef_dll/cpptoc/task_cpptoc.h",
    "libcef_dll/cpptoc/urlrequest_client_cpptoc.cc",
    "libcef_dll/cpptoc/urlrequest_client_cpptoc.h",
    "libcef_dll/cpptoc/v8accessor_cpptoc.cc",
    "libcef_dll/cpptoc/v8accessor_cpptoc.h",
    "libcef_dll/cpptoc/v8array_buffer_release_callback_cpptoc.cc",
    "libcef_dll/cpptoc/v8array_buffer_release_callback_cpptoc.h",
    "libcef_dll/cpptoc/v8handler_cpptoc.cc",
    "libcef_dll/cpptoc/v8handler_cpptoc.h",
    "libcef_dll/cpptoc/v8interceptor_cpptoc.cc",
    "libcef_dll/cpptoc/v8interceptor_cpptoc.h",
    "libcef_dll/cpptoc/web_plugin_info_visitor_cpptoc.cc",
    "libcef_dll/cpptoc/web_plugin_info_visitor_cpptoc.h",
    "libcef_dll/cpptoc/web_plugin_unstable_callback_cpptoc.cc",
    "libcef_dll/cpptoc/web_plugin_unstable_callback_cpptoc.h",
    "libcef_dll/cpptoc/write_handler_cpptoc.cc",
    "libcef_dll/cpptoc/write_handler_cpptoc.h",
]

LIBCEF_CPPTOC_VIEWS_SRCS = [
    "libcef_dll/cpptoc/views/browser_view_delegate_cpptoc.cc",
    "libcef_dll/cpptoc/views/browser_view_delegate_cpptoc.h",
    "libcef_dll/cpptoc/views/button_delegate_cpptoc.cc",
    "libcef_dll/cpptoc/views/button_delegate_cpptoc.h",
    "libcef_dll/cpptoc/views/menu_button_delegate_cpptoc.cc",
    "libcef_dll/cpptoc/views/menu_button_delegate_cpptoc.h",
    "libcef_dll/cpptoc/views/panel_delegate_cpptoc.cc",
    "libcef_dll/cpptoc/views/panel_delegate_cpptoc.h",
    "libcef_dll/cpptoc/views/textfield_delegate_cpptoc.cc",
    "libcef_dll/cpptoc/views/textfield_delegate_cpptoc.h",
    "libcef_dll/cpptoc/views/view_delegate_cpptoc.cc",
    "libcef_dll/cpptoc/views/view_delegate_cpptoc.h",
    "libcef_dll/cpptoc/views/window_delegate_cpptoc.cc",
    "libcef_dll/cpptoc/views/window_delegate_cpptoc.h",
]

LIBCEF_CTOCPP_SRCS = [
    "libcef_dll/ctocpp/auth_callback_ctocpp.cc",
    "libcef_dll/ctocpp/auth_callback_ctocpp.h",
    "libcef_dll/ctocpp/before_download_callback_ctocpp.cc",
    "libcef_dll/ctocpp/before_download_callback_ctocpp.h",
    "libcef_dll/ctocpp/binary_value_ctocpp.cc",
    "libcef_dll/ctocpp/binary_value_ctocpp.h",
    "libcef_dll/ctocpp/browser_ctocpp.cc",
    "libcef_dll/ctocpp/browser_ctocpp.h",
    "libcef_dll/ctocpp/browser_host_ctocpp.cc",
    "libcef_dll/ctocpp/browser_host_ctocpp.h",
    "libcef_dll/ctocpp/callback_ctocpp.cc",
    "libcef_dll/ctocpp/callback_ctocpp.h",
    "libcef_dll/ctocpp/command_line_ctocpp.cc",
    "libcef_dll/ctocpp/command_line_ctocpp.h",
    "libcef_dll/ctocpp/context_menu_params_ctocpp.cc",
    "libcef_dll/ctocpp/context_menu_params_ctocpp.h",
    "libcef_dll/ctocpp/cookie_manager_ctocpp.cc",
    "libcef_dll/ctocpp/cookie_manager_ctocpp.h",
    "libcef_dll/ctocpp/ctocpp_ref_counted.h",
    "libcef_dll/ctocpp/ctocpp_scoped.h",
    "libcef_dll/ctocpp/dictionary_value_ctocpp.cc",
    "libcef_dll/ctocpp/dictionary_value_ctocpp.h",
    "libcef_dll/ctocpp/domdocument_ctocpp.cc",
    "libcef_dll/ctocpp/domdocument_ctocpp.h",
    "libcef_dll/ctocpp/domnode_ctocpp.cc",
    "libcef_dll/ctocpp/domnode_ctocpp.h",
    "libcef_dll/ctocpp/download_item_callback_ctocpp.cc",
    "libcef_dll/ctocpp/download_item_callback_ctocpp.h",
    "libcef_dll/ctocpp/download_item_ctocpp.cc",
    "libcef_dll/ctocpp/download_item_ctocpp.h",
    "libcef_dll/ctocpp/drag_data_ctocpp.cc",
    "libcef_dll/ctocpp/drag_data_ctocpp.h",
    "libcef_dll/ctocpp/extension_ctocpp.cc",
    "libcef_dll/ctocpp/extension_ctocpp.h",
    "libcef_dll/ctocpp/file_dialog_callback_ctocpp.cc",
    "libcef_dll/ctocpp/file_dialog_callback_ctocpp.h",
    "libcef_dll/ctocpp/frame_ctocpp.cc",
    "libcef_dll/ctocpp/frame_ctocpp.h",
    "libcef_dll/ctocpp/get_extension_resource_callback_ctocpp.cc",
    "libcef_dll/ctocpp/get_extension_resource_callback_ctocpp.h",
    "libcef_dll/ctocpp/image_ctocpp.cc",
    "libcef_dll/ctocpp/image_ctocpp.h",
    "libcef_dll/ctocpp/jsdialog_callback_ctocpp.cc",
    "libcef_dll/ctocpp/jsdialog_callback_ctocpp.h",
    "libcef_dll/ctocpp/list_value_ctocpp.cc",
    "libcef_dll/ctocpp/list_value_ctocpp.h",
    "libcef_dll/ctocpp/media_route_ctocpp.cc",
    "libcef_dll/ctocpp/media_route_ctocpp.h",
    "libcef_dll/ctocpp/media_router_ctocpp.cc",
    "libcef_dll/ctocpp/media_router_ctocpp.h",
    "libcef_dll/ctocpp/media_sink_ctocpp.cc",
    "libcef_dll/ctocpp/media_sink_ctocpp.h",
    "libcef_dll/ctocpp/media_source_ctocpp.cc",
    "libcef_dll/ctocpp/media_source_ctocpp.h",
    "libcef_dll/ctocpp/menu_model_ctocpp.cc",
    "libcef_dll/ctocpp/menu_model_ctocpp.h",
    "libcef_dll/ctocpp/navigation_entry_ctocpp.cc",
    "libcef_dll/ctocpp/navigation_entry_ctocpp.h",
    "libcef_dll/ctocpp/post_data_ctocpp.cc",
    "libcef_dll/ctocpp/post_data_ctocpp.h",
    "libcef_dll/ctocpp/post_data_element_ctocpp.cc",
    "libcef_dll/ctocpp/post_data_element_ctocpp.h",
    "libcef_dll/ctocpp/print_dialog_callback_ctocpp.cc",
    "libcef_dll/ctocpp/print_dialog_callback_ctocpp.h",
    "libcef_dll/ctocpp/print_job_callback_ctocpp.cc",
    "libcef_dll/ctocpp/print_job_callback_ctocpp.h",
    "libcef_dll/ctocpp/print_settings_ctocpp.cc",
    "libcef_dll/ctocpp/print_settings_ctocpp.h",
    "libcef_dll/ctocpp/process_message_ctocpp.cc",
    "libcef_dll/ctocpp/process_message_ctocpp.h",
    "libcef_dll/ctocpp/registration_ctocpp.cc",
    "libcef_dll/ctocpp/registration_ctocpp.h",
    "libcef_dll/ctocpp/request_callback_ctocpp.cc",
    "libcef_dll/ctocpp/request_callback_ctocpp.h",
    "libcef_dll/ctocpp/request_context_ctocpp.cc",
    "libcef_dll/ctocpp/request_context_ctocpp.h",
    "libcef_dll/ctocpp/request_ctocpp.cc",
    "libcef_dll/ctocpp/request_ctocpp.h",
    "libcef_dll/ctocpp/resource_bundle_ctocpp.cc",
    "libcef_dll/ctocpp/resource_bundle_ctocpp.h",
    "libcef_dll/ctocpp/resource_read_callback_ctocpp.cc",
    "libcef_dll/ctocpp/resource_read_callback_ctocpp.h",
    "libcef_dll/ctocpp/resource_skip_callback_ctocpp.cc",
    "libcef_dll/ctocpp/resource_skip_callback_ctocpp.h",
    "libcef_dll/ctocpp/response_ctocpp.cc",
    "libcef_dll/ctocpp/response_ctocpp.h",
    "libcef_dll/ctocpp/run_context_menu_callback_ctocpp.cc",
    "libcef_dll/ctocpp/run_context_menu_callback_ctocpp.h",
    "libcef_dll/ctocpp/scheme_registrar_ctocpp.cc",
    "libcef_dll/ctocpp/scheme_registrar_ctocpp.h",
    "libcef_dll/ctocpp/select_client_certificate_callback_ctocpp.cc",
    "libcef_dll/ctocpp/select_client_certificate_callback_ctocpp.h",
    "libcef_dll/ctocpp/server_ctocpp.cc",
    "libcef_dll/ctocpp/server_ctocpp.h",
    "libcef_dll/ctocpp/sslinfo_ctocpp.cc",
    "libcef_dll/ctocpp/sslinfo_ctocpp.h",
    "libcef_dll/ctocpp/sslstatus_ctocpp.cc",
    "libcef_dll/ctocpp/sslstatus_ctocpp.h",
    "libcef_dll/ctocpp/stream_reader_ctocpp.cc",
    "libcef_dll/ctocpp/stream_reader_ctocpp.h",
    "libcef_dll/ctocpp/stream_writer_ctocpp.cc",
    "libcef_dll/ctocpp/stream_writer_ctocpp.h",
    "libcef_dll/ctocpp/task_runner_ctocpp.cc",
    "libcef_dll/ctocpp/task_runner_ctocpp.h",
    "libcef_dll/ctocpp/thread_ctocpp.cc",
    "libcef_dll/ctocpp/thread_ctocpp.h",
    "libcef_dll/ctocpp/urlrequest_ctocpp.cc",
    "libcef_dll/ctocpp/urlrequest_ctocpp.h",
    "libcef_dll/ctocpp/v8context_ctocpp.cc",
    "libcef_dll/ctocpp/v8context_ctocpp.h",
    "libcef_dll/ctocpp/v8exception_ctocpp.cc",
    "libcef_dll/ctocpp/v8exception_ctocpp.h",
    "libcef_dll/ctocpp/v8stack_frame_ctocpp.cc",
    "libcef_dll/ctocpp/v8stack_frame_ctocpp.h",
    "libcef_dll/ctocpp/v8stack_trace_ctocpp.cc",
    "libcef_dll/ctocpp/v8stack_trace_ctocpp.h",
    "libcef_dll/ctocpp/v8value_ctocpp.cc",
    "libcef_dll/ctocpp/v8value_ctocpp.h",
    "libcef_dll/ctocpp/value_ctocpp.cc",
    "libcef_dll/ctocpp/value_ctocpp.h",
    "libcef_dll/ctocpp/waitable_event_ctocpp.cc",
    "libcef_dll/ctocpp/waitable_event_ctocpp.h",
    "libcef_dll/ctocpp/web_plugin_info_ctocpp.cc",
    "libcef_dll/ctocpp/web_plugin_info_ctocpp.h",
    "libcef_dll/ctocpp/x509cert_principal_ctocpp.cc",
    "libcef_dll/ctocpp/x509cert_principal_ctocpp.h",
    "libcef_dll/ctocpp/x509certificate_ctocpp.cc",
    "libcef_dll/ctocpp/x509certificate_ctocpp.h",
    "libcef_dll/ctocpp/xml_reader_ctocpp.cc",
    "libcef_dll/ctocpp/xml_reader_ctocpp.h",
    "libcef_dll/ctocpp/zip_reader_ctocpp.cc",
    "libcef_dll/ctocpp/zip_reader_ctocpp.h",
]

LIBCEF_CTOCPP_VIEWS_SRCS = [
    "libcef_dll/ctocpp/views/box_layout_ctocpp.cc",
    "libcef_dll/ctocpp/views/box_layout_ctocpp.h",
    "libcef_dll/ctocpp/views/browser_view_ctocpp.cc",
    "libcef_dll/ctocpp/views/browser_view_ctocpp.h",
    "libcef_dll/ctocpp/views/button_ctocpp.cc",
    "libcef_dll/ctocpp/views/button_ctocpp.h",
    "libcef_dll/ctocpp/views/display_ctocpp.cc",
    "libcef_dll/ctocpp/views/display_ctocpp.h",
    "libcef_dll/ctocpp/views/fill_layout_ctocpp.cc",
    "libcef_dll/ctocpp/views/fill_layout_ctocpp.h",
    "libcef_dll/ctocpp/views/label_button_ctocpp.cc",
    "libcef_dll/ctocpp/views/label_button_ctocpp.h",
    "libcef_dll/ctocpp/views/layout_ctocpp.cc",
    "libcef_dll/ctocpp/views/layout_ctocpp.h",
    "libcef_dll/ctocpp/views/menu_button_ctocpp.cc",
    "libcef_dll/ctocpp/views/menu_button_ctocpp.h",
    "libcef_dll/ctocpp/views/menu_button_pressed_lock_ctocpp.cc",
    "libcef_dll/ctocpp/views/menu_button_pressed_lock_ctocpp.h",
    "libcef_dll/ctocpp/views/panel_ctocpp.cc",
    "libcef_dll/ctocpp/views/panel_ctocpp.h",
    "libcef_dll/ctocpp/views/scroll_view_ctocpp.cc",
    "libcef_dll/ctocpp/views/scroll_view_ctocpp.h",
    "libcef_dll/ctocpp/views/textfield_ctocpp.cc",
    "libcef_dll/ctocpp/views/textfield_ctocpp.h",
    "libcef_dll/ctocpp/views/view_ctocpp.cc",
    "libcef_dll/ctocpp/views/view_ctocpp.h",
    "libcef_dll/ctocpp/views/window_ctocpp.cc",
    "libcef_dll/ctocpp/views/window_ctocpp.h",
]

LIBCEF_WRAPPER_SRCS = [
    "libcef_dll/wrapper/cef_browser_info_map.h",
    "libcef_dll/wrapper/cef_byte_read_handler.cc",
    "libcef_dll/wrapper/cef_closure_task.cc",
    "libcef_dll/wrapper/cef_message_router.cc",
    "libcef_dll/wrapper/cef_resource_manager.cc",
    "libcef_dll/wrapper/cef_scoped_temp_dir.cc",
    "libcef_dll/wrapper/cef_stream_resource_handler.cc",
    "libcef_dll/wrapper/cef_xml_object.cc",
    "libcef_dll/wrapper/cef_zip_archive.cc",
    "libcef_dll/wrapper/libcef_dll_wrapper.cc",
    "libcef_dll/wrapper/libcef_dll_wrapper2.cc",
]

cc_library(
    name = "libcef_dll_wrapper",
    srcs = LIBCEF_SRCS +
           LIBCEF_BASE_SRCS +
           LIBCEF_CPPTOC_SRCS +
           LIBCEF_CPPTOC_VIEWS_SRCS +
           LIBCEF_CTOCPP_SRCS +
           LIBCEF_CTOCPP_VIEWS_SRCS +
           LIBCEF_WRAPPER_SRCS,
    defines = ["WRAPPING_CEF_SHARED"] + select({
        "//:windows": WINDOWS_DEFINES,
    }),
    visibility = ["//visibility:public"],
    copts = select({
        "//:windows": WINDOWS_COPTS,
    }),
    deps = [":cef_headers"],
)
