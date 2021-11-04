function __fish_exa_install --on-event fish-exa_install
    set -U EXA_STANDARD_OPTIONS "--git" "--header" "--icons"
    set -U EXA_LL_OPTIONS "--long" "--group" "--extended"
    set -U EXA_LA_OPTIONS "--all" "--binary" "--links" "--inode" "--blocks"
    set -U EXA_LD_OPTIONS "--list-dirs"
    set -U EXA_LE_OPTIONS "--extended" "--created" "--modified" "--accessed" "--changed"
    set -U EXA_LT_OPTIONS "--tree" "--level"
end

function __fish_exa_update --on-event fish-exa_update
    __fish_exa_uninstall
    __fish_exa_install
end

function __fish_exa_uninstall --on-event fish-exa_uninstall
    set --erase EXA_STANDARD_OPTIONS
    set --erase EXA_LL_OPTIONS
    set --erase EXA_LA_OPTIONS
    set --erase EXA_LD_OPTIONS
    set --erase EXA_LE_OPTIONS
    set --erase EXA_LT_OPTIONS
    functions --erase l
    # We don't erase ls here because it could be the system ls and it doesn't need any options
    functions --erase ll
    functions --erase exa_git
    functions --erase la
    functions --erase ld
    functions --erase lt
    functions --erase lg
    functions --erase le
end
