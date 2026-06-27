#!/usr/bin/env bash
set -euo pipefail

export PATH="/opt/homebrew/opt/ruby@3.1/bin:${PATH}"
export HOME="${PWD}/.home"
export GEM_HOME="${PWD}/vendor/bundle/ruby/3.1.0"
export GEM_PATH="${GEM_HOME}"
export GEM_SPEC_CACHE="${PWD}/.bundle/specs"

bundle exec jekyll serve --host 127.0.0.1 --port "${PORT:-4000}" --livereload
