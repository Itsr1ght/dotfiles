return {
    cmd = {"zls"},
    filetypes = {"zig", "zon"},
    root_markers = {'build.zig', 'build.zig.zon', ".git"},
    settings = {
        enable_inlay_hints = true,
        inlay_hints_show_variable_type_hints = true,
        inlay_hints_show_parameter_name_hints = true,
        inlay_hints_hide_redundant_param_names = true,
    },
}
