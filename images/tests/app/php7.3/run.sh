#!/bin/bash

cd /app
chmod -R 777 ./tmp
chmod -R 777 ./logs
bin/cake server
