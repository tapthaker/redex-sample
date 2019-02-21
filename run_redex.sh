#!/bin/bash
./redex --config ./redex_config.json --proguard-map ./mapping.txt --keep seeds.txt -P configuration.txt --out app-release-redex.apk app-release.apk
