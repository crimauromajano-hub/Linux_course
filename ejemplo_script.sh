#!/bin/bash

echo -e "\n [+] Esta es tu direccion IP privada ----> $(ip a | grep wlp1s0 | awk '{print $2}')\n"
variable= "hooola"
$variable
 
