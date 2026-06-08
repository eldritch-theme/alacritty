default: write

_deploy_palette VARIANT \
    background \
    foreground comment \
    cyan green \
    purple red \
    yellow \
    cursor_accent vi_cursor_accent \
    search_match_bg hint_bg \
    selection_bg \
    term_black term_white \
    term_bright_black term_bright_white:
    sed \
        -e "s/@@BACKGROUND@@/{{background}}/g" \
        -e "s/@@FOREGROUND@@/{{foreground}}/g" \
        -e "s/@@COMMENT@@/{{comment}}/g" \
        -e "s/@@CYAN@@/{{cyan}}/g" \
        -e "s/@@GREEN@@/{{green}}/g" \
        -e "s/@@PURPLE@@/{{purple}}/g" \
        -e "s/@@RED@@/{{red}}/g" \
        -e "s/@@YELLOW@@/{{yellow}}/g" \
        -e "s/@@CURSOR_ACCENT@@/{{cursor_accent}}/g" \
        -e "s/@@VI_CURSOR_ACCENT@@/{{vi_cursor_accent}}/g" \
        -e "s/@@SEARCH_MATCH_BG@@/{{search_match_bg}}/g" \
        -e "s/@@HINT_BG@@/{{hint_bg}}/g" \
        -e "s/@@SELECTION_BG@@/{{selection_bg}}/g" \
        -e "s/@@TERM_BLACK@@/{{term_black}}/g" \
        -e "s/@@TERM_WHITE@@/{{term_white}}/g" \
        -e "s/@@TERM_BRIGHT_BLACK@@/{{term_bright_black}}/g" \
        -e "s/@@TERM_BRIGHT_WHITE@@/{{term_bright_white}}/g" \
        .eldritch-@@VARIANT@@.toml > themes/eldritch-{{VARIANT}}.toml

write:
    mkdir -p themes

    # Cthulhu palette
    just _deploy_palette "cthulhu" \
        "#212337" \
        "#ebfafa" "#7081d0" \
        "#04d1f9" "#37f499" \
        "#a48cf2" "#f16c75" \
        "#f1fc79" \
        "#f7c67f" "#a48cf2" \
        "#f7c67f" "#f1fc79" \
        "#323449" \
        "#212337" "#ebfafa" \
        "#323449" "#7081d0"

    # Abyss palette
    just _deploy_palette "abyss" \
        "#171928" \
        "#d8e6e6" "#506299" \
        "#0396b3" "#2dcc82" \
        "#8b75d9" "#cc5860" \
        "#ccd663" \
        "#d4a666" "#8b75d9" \
        "#d4a666" "#ccd663" \
        "#252738" \
        "#171928" "#d8e6e6" \
        "#252738" "#506299"

    # Dusk palette
    just _deploy_palette "dusk" \
        "#f0f3f4" \
        "#1e2029" "#5b73dc" \
        "#0ad6ff" "#38ff9f" \
        "#8a69f7" "#fb5b66" \
        "#fff952" \
        "#ffaf4d" "#8a69f7" \
        "#ffaf4d" "#8a69f7" \
        "#e2e6e8" \
        "#1e2029" "#f0f3f4" \
        "#5b73dc" "#1e2029"
