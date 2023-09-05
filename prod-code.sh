cd /home/infeon/Projects/devops/vired/ci_cd_pipeline
git checkout prod

#!/bin/bash
echo "This script is working"
# Get the latest commit ID from the git log
commit=$(git log -n 1 --format="%H")


# Check if the commit ID is new
if ! grep -q $commit /home/infeon/Projects/devops/vired/commit_check.txt; then

  echo "now in then block"
  # If the commit ID is new, move files from the source directory to the destination directory
  cp /home/infeon/Projects/devops/vired/ci_cd_pipeline/* /var/www/html/
  
  # Add the new commit ID to the commit check file
  echo "$commit" >> /home/infeon/Projects/devops/vired/commit_check.txt
fi

