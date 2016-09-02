#!/bin/bash
set -eo pipefail

mkdir /var/www
cd /var/www

# clone repo
git clone $GIT_URL .

# Checkout to specific branch if defined
if [ "$GIT_BRANCH" != "" ]; then
    git checkout $GIT_BRANCH
fi

# remove git dir
rm -rf .git

echo "Now serving static site!"
nginx
