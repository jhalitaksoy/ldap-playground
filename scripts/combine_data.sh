#!/bin/bash

# Output file (can be changed or directed to STDOUT)
output_file=$1

echo "" >> "$output_file"
echo "" >> "$output_file"
echo "### Big Data (auto generated)" >> "$output_file"
echo "" >> "$output_file"

echo "### Groups (auto generated)" >> "$output_file"
echo "" >> "$output_file"

cat "groups.ldif" >> "$output_file"

echo "### Users (auto generated)" >> "$output_file"
echo "" >> "$output_file"

cat "users.ldif" >> "$output_file"

echo "Combined files to $output_file."