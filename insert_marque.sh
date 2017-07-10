#!/bin/bash

while read p; do
    marque_name=`echo $p | cut -d"," -f1`
    marque_href=`echo $p | cut -d"," -f2`
    curl -XPOST 'localhost:9200/lacentrale/marque/?pretty' -H 'Content-Type: application/json' -d "{\"name\": \"$marque_name\",\"href\":\"$marque_href\"}"
done < marques.txt
