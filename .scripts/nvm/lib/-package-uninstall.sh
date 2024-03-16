#!/bin/zsh
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/-package-uninstall.sh

. ./.scripts/zshrc/lib/-delete-line-if-exists.sh

_nvm_package_uninstall() {
    local FUNCTION_NAME="_nvm_package_uninstall"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_packageUninstall "nvm"

    _zshrc_deleteLineIfExists '# [NVM] BELOW 3 LINES REQUIRED'
    _zshrc_deleteLineIfExists 'source ~/.nvm/nvm.sh'
}
