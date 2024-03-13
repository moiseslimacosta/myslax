#!/bin/bash

echo "teste 1"
sleep 3s

echo "teste 2"
sleep 3s

echo "teste 3"
sleep 3s

echo "try pushing second script"
curl -sSL https://raw.githubusercontent.com/moiseslimacosta/myslax/main/teste2.sh | bash