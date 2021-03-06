#!/bin/sh
REQUESTS=$1
CONCURRENCY=$2
URL=$3
FILE_NAME=$4

if [ $# -ne 4 ]; then
    echo "Usage: $0 [requests] [concurrency] [url] [png]"
    exit 1
fi

echo 'Request ' $REQUESTS
echo 'Concurrency ' $CONCURRENCY
echo 'URL ' "$URL"

cmd="ab -e output.csv -n $REQUESTS -c $CONCURRENCY $URL"
echo $cmd
${cmd}
sed 1d output.csv > stats.csv
echo '\
set terminal png font "/Library/Fonts/Times\ New\ Roman.ttf" 14; \
set output "'$FILE_NAME'"; \
set datafile separator ","; \
set title "'$REQUESTS' requests with '$CONCURRENCY' concurrent connections"; \
set xlabel "Percentages served"; \
set ylabel "Response time (milliseconds)"; \
plot "stats.csv" notitle' | gnuplot -persist
