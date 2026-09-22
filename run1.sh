if [ $# -eq 0 ]; then
	echo "erreur : argument manquant"
fi

tool=neato
$tool -Tpng $1.dot >$1.png
$tool -Tsvg $1.dot >$1.svg
