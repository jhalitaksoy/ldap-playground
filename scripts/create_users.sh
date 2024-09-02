#!/bin/bash

# Number of users to generate
n=$1  # Pass this as an argument when running the script

# Output file (can be changed or directed to STDOUT)
output_file="users.ldif"

# Clear or create the output file
> "$output_file"

# Group for all users
echo "dn: cn=commonGroup,ou=groups2,dc=example,dc=org" >> "$output_file"
echo "changetype: add" >> "$output_file"
echo "objectClass: groupOfNames" >> "$output_file"
echo "cn: commonGroup" >> "$output_file"
echo "member: cn=ldaphalit2,ou=users,dc=example,dc=org" >> "$output_file"
echo "" >> "$output_file"  # Add a blank line after the group entry

# Loop through and generate the users
for ((i=0; i<n; i++)); do
  echo "dn: cn=user$i,ou=users,dc=example,dc=org" >> "$output_file"
  echo "changetype: add" >> "$output_file"
  echo "objectClass: inetOrgPerson" >> "$output_file"
  echo "objectClass: organizationalPerson" >> "$output_file"
  echo "objectClass: person" >> "$output_file"
  echo "uid: user$i" >> "$output_file"
  echo "sn: surname" >> "$output_file"
  echo "givenName: user$i" >> "$output_file"
  echo "displayName: user$i surname" >> "$output_file"
  echo "userPassword: 1234" >> "$output_file"
  echo "mail: user$i@mail.org" >> "$output_file"
  echo "memberOf: cn=commonGroup,ou=groups2,dc=example,dc=org" >> "$output_file"
  echo "" >> "$output_file"  # Add a blank line between entries

  # Add the user to the commonGroup
  echo "dn: cn=commonGroup,ou=groups2,dc=example,dc=org" >> "$output_file"
  echo "changetype: modify" >> "$output_file"
  echo "add: member" >> "$output_file"
  echo "member: cn=user$i,ou=users,dc=example,dc=org" >> "$output_file"
  echo "" >> "$output_file"  # Add a blank line after each modification entry
done

echo "Generated $n user entries in $output_file."