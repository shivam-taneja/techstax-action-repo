#!/bin/bash
BRANCH_NAME="test-branch-$(date +%s)"
TEST_FILE="activity.txt"

git checkout -b $BRANCH_NAME
date >> $TEST_FILE
git add $TEST_FILE
git commit -m "Manual PR test"
git push origin $BRANCH_NAME

# Opens a PR from the new branch to main
gh pr create --title "Test PR for Webhook" --body "Testing pull request event" --base main --head $BRANCH_NAME