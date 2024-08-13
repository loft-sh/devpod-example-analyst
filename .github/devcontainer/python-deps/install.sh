#!/usr/bin/env bash

echo "Install python depencencies"

IFS="," read -r -a DEFAULT_UTILS <<< "${REQUIREMENTS}"

for util in "${DEFAULT_UTILS[@]}"; do
if ! type ${util} > /dev/null 2>&1; then
    "${PIPX_DIR}pipx" install --system-site-packages --pip-args '--no-cache-dir --force-reinstall' ${util}
else
    echo "${util} already installed. Skipping."
fi
done
