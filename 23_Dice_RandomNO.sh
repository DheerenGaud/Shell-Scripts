#!/bin/bash

RandNo=$RANDOM
dice=$(( ($RandNo % 6) + 1 ))
echo "Dice Front : $dice"
