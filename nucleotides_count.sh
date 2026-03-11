#!/bin/bash

printf "%-15s %-5s %-5s %-5s %-5s\n" "Файл" "A" "T" "G" "C"
echo "---------------------------------------"

for file in *.fasta; do
    if [[ -s "$file" ]]; then
        content=$(grep -v "^>" "$file")
        
        count_A=$(echo "$content" | tr -cd 'Aa' | wc -c)
        count_T=$(echo "$content" | tr -cd 'Tt' | wc -c)
        count_G=$(echo "$content" | tr -cd 'Gg' | wc -c)
        count_C=$(echo "$content" | tr -cd 'Cc' | wc -c)
        
        printf "%-15s %-5d %-5d %-5d %-5d\n" "$file" "$count_A" "$count_T" "$count_G" "$count_C"
    fi
  done
