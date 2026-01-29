# TechStaX Action Repository

## Overview
This repository serves as the event source for the TechStaX Developer Assessment. It is designed to trigger GitHub Webhook events that are consumed by the `webhook-repo` backend service.

**🔗 Related Repository:** [Backend Webhook Service (webhook-repo)](https://github.com/shivam-taneja/techstax-webhook-repo.git)

## Purpose
The primary function of this repository is to generate specific Git events for testing the webhook integration. It supports the following actions:

* **PUSH**: Triggered when commits are pushed to any branch.
* **PULL_REQUEST**: Triggered when a pull request is opened or synchronized.
* **MERGE**: Triggered when a pull request is successfully merged into a base branch.

## Integration
This repository is configured to send payloads to the receiver endpoint defined in the `webhook-repo`.

## Usage Instructions
To test the full flow of the assessment:
1.  **Push Action**: Commit changes to a file and push to any branch to generate a "PUSH" event.
2.  **Pull Request Action**: Create a new branch and open a Pull Request against `main` to generate a "PULL_REQUEST" event.
3.  **Merge Action**: Merge an existing Pull Request to generate a "MERGE" event (processed as a closed PR with merge status).