#!/bin/bash
TEST_FILE="activity.txt"
date >> $TEST_FILE
git add $TEST_FILE
git commit -m "Manual push test"
git push origin main