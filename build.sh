#!/bin/sh -e
set -x
flatpak-builder --user --repo=tinymediamanager --force-clean build-dir org.tinymediamanager.TinyMediaManager.json
flatpak --user remote-add --no-gpg-verify --if-not-exists tinymediamanager tinymediamanager
flatpak install tinymediamanager org.tinymediamanager.TinyMediaManager
flatpak update tinymediamanager org.tinymediamanager.TinyMediaManager
