#!/bin/bash

# Number of groups to generate
n=$1  # Pass this as an argument when running the script

# Output file (can be changed or directed to STDOUT)
output_file="groups.ldif"

# Clear or create the output file
> "$output_file"

# Loop through and generate the groups
for ((i=10; i<=n; i++)); do
  echo "dn: cn=group$i,ou=groups2,dc=example,dc=org" >> "$output_file"
  echo "changetype: add" >> "$output_file"
  echo "objectClass: groupOfNames" >> "$output_file"
  echo "cn: group$i" >> "$output_file"
  echo "member: cn=ldaphalit2,ou=users,dc=example,dc=org" >> "$output_file"
  echo "" >> "$output_file"  # Add a blank line between entries
done

echo "Generated $n group entries in $output_file."