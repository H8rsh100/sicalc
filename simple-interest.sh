#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest, and time period in years.
#
# Formula: SI = P * R * T / 100

echo "Enter the principal:"
read principal
echo "Enter rate of interest per year:"
read rate
echo "Enter time period in years:"
read time

if command -v bc >/dev/null 2>&1; then
    interest=$(echo "$principal * $rate * $time / 100" | bc -l)
else
    interest=$(awk "BEGIN { printf \"%.2f\", ($principal * $rate * $time) / 100 }")
fi

echo "The simple interest is: $interest"
