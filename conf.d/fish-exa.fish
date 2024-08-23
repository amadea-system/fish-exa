function __fish_exa_install --on-event fish-exa_install

    # Prefer eza as exa is unmaintained
    if type -q eza
        set -Ux __FISH_EXA_BINARY eza
    else
        set -Ux __FISH_EXA_BINARY exa
    end

    set -U EXA_STANDARD_OPTIONS "--git" "--header"              # "--icons"
    set -U EXA_LL_OPTIONS "--long" "--icons"                    # "--group"
    set -U EXA_LA_OPTIONS "--all" "--long" "--icons"            # "--binary" "--links" "--inode" "--blocks"
    set -U EXA_LD_OPTIONS "--only-dirs"
    set -U EXA_LE_OPTIONS "--extended" "--created" "--modified" "--accessed" "--changed" "--group"
    set -U EXA_LT_OPTIONS "--tree" "--level"
end

function __fish_exa_update --on-event fish-exa_update
    __fish_exa_uninstall
    __fish_exa_install
end

function __fish_exa_uninstall --on-event fish-exa_uninstall
    functions --erase l
    functions --erase la
    functions --erase lad
    functions --erase ld
    functions --erase le
    functions --erase ll
    functions --erase lld
    functions --erase llt
    functions --erase ls
    functions --erase lt

    # At least when we are using pre-created ../function/*.fish files, 
    # funcsave is not necessary as fisher will handle removing the files.
    
    # funcsave l
    # funcsave la
    # funcsave lad
    # funcsave ld
    # funcsave le
    # funcsave ll
    # funcsave lld
    # funcsave llt
    # funcsave ls
    # funcsave lt
    
    set --erase EXA_STANDARD_OPTIONS
    set --erase EXA_LL_OPTIONS
    set --erase EXA_LA_OPTIONS
    set --erase EXA_LD_OPTIONS
    set --erase EXA_LE_OPTIONS
    set --erase EXA_LT_OPTIONS
end
