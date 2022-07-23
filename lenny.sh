#!/usr/bin/env bash

# Lenny - Ideapad Dust Cleaner for Linux

# There are four available modes:
# * 0 -> Super Silent Mode
# * 1 -> Standard Mode
# * 2 -> Dust Cleaning
# * 4 -> Efficient Thermal Dissipation Mode

IDEAPAD_ACPI='/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/fan_mode'

function clean_dust() {

    local key=$1

    case $key in 
    0 | --silent)
        echo 0 > $IDEAPAD_ACPI
    ;;
    1 | --standard)
        echo 1 > $IDEAPAD_ACPI
    ;;
    2 | --dust)
	echo 2 > $IDEAPAD_ACPI
    ;;
    4 | --efficient)
	echo 4 > $IDEAPAD_ACPI    
    esac

}

function main() {
  clean_dust "$@"
}

main "$@"

