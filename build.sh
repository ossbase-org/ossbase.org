#!/bin/bash

cd website
hugo
rsync --include ".*" -v -rz --checksum public/ ubuntu@illich.paperbay.org:/var/www/ossbase.org

