#!/bin/bash

jobno=${TRAVIS_BUILD_NO}.3
echo $jobno" - job no"
echo ${TRAVIS_JOB_NO}" - job no2"
echo "script"
if [[ ${TRAVIS_JOB_NO} == ${TRAVIS_BUILD_NO}.3 ]];
then
    echo "if statement"
    php var/www/site/orangehrm/devTools/load/general/load-employees.php
	php var/www/site/orangehrm/devTools/load/recruitment/load-candidates.php
fi

exit 0;
	
