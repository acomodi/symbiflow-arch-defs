#!/usr/bin/env sh

# Checking status of all CIs
/check-status.py || echo '::set-output name=skip::true' && exit

# If all CIs are successful, generate the latest artifact link
mkdir install && symbiflow_get_latest_artifact_url > install/latest || echo '::set-output name=skip::true'
