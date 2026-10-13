#!/bin/bash
tok=$(cat ~/token.gh)

curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-GitHub-Api-Version: 2026-03-10" \
	https://api.github.com/repos/KylanDelpouve/tp-graphes/actions/artifacts > gh-artifacts.json

curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $tok" \
	-H "X-GitHub-Api-Version: 2026-03-10" \
	https://api.github.com/repos/KylanDelpouve/tp-graphes/actions/artifacts/10698190268/zip \
	--output artifact.zip

unzip artifact.zip
