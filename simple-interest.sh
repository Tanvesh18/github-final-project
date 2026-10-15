#!/bin/bash

# Simple Interest Calculator
# Calculates simple interest from user input.

echo "Enter the principal:"
read -r p

echo "Enter rate of interest per year:"
read -r r

echo "Enter time period in years:"
read -r t

simple_interest=$(awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN { printf "%.2f", (p*r*t)/100 }')

echo "The simple interest is: $simple_interest"