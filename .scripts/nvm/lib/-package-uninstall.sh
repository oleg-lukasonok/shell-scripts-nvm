#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

. ./.scripts/os-manager/lib/--index.sh

_nvm_package_uninstall() {
    local FUNCTION_NAME="_nvm_package_uninstall"
    _loggers_info "${FUNCTION_NAME}"

    _osManager_packageUninstall "nvm"
}
