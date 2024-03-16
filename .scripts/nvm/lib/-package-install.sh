#!/bin/zsh
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/-package-install.sh

. ./.scripts/zshrc/lib/-add-line-if-not-exists.sh

_nvm_package_install() {
    local FUNCTION_NAME="_nvm_package_install"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_packageInstall "nvm"

    _zshrc_addLineIfNotExists '# [NVM] BELOW 1 LINES REQUIRED'
    _zshrc_addLineIfNotExists 'source ~/.nvm/nvm.sh'
}
