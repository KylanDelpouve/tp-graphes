#!/bin/bash
tok=$(cat ~/token.gh)

for id in $(cat liste-id.txt); do
	echo "Téléchargement artefact $id"

	curl -L \
		-H "Accept: application/vnd.github+json" \
		-H "Authorization: Bearer $tok" \
		-H "X-GitHub-Api-Version: 2026-03-10" \
		https://api.github.com/repos/KylanDelpouve/tp-graphes/actions/artifacts/$id/zip \
		--output artifact_$id.zip

	unzip -o artifact_$id.zip
done
