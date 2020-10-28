#!/bin/bash
# shellcheck disable=SC2034
# ACTIONS_RUNNER_INPUT_NAME is used by config.sh
ACTIONS_RUNNER_INPUT_NAME=$HOSTNAME
# configure runner
export RUNNER_ALLOW_RUNASROOT=1
/runner/config.sh --unattended --replace --work "/tmp" --url "$ACTIONS_RUNNER_INPUT_URL" --token "$RUNNER_TOKEN" --labels k8s-github-runner
# start runner
# https://github.com/actions/runner/issues/246#issuecomment-615293718
/runner/bin/runsvc.sh
