#!/bin/sh

DEVPI_ADDITIONAL_PARAMETERS="--host=0.0.0.0 --serverdir /devpi"

if [ "${OFFLINE_MODE}" == "true" ]; then
    DEVPI_ADDITIONAL_PARAMETERS="$DEVPI_ADDITIONAL_PARAMETERS --offline-mode"
fi

devpi-server $DEVPI_ADDITIONAL_PARAMETERS
