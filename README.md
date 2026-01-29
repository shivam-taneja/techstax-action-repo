# TechStaX Action Repository

## Overview
This repository serves as the event source for the `TechStaX Developer Assessment`. It is designed to trigger GitHub Webhook events that are consumed and stored by the `webhook-repo` backend service.

**Related Repository:** [Backend Webhook Service (webhook-repo)](https://github.com/shivam-taneja/techstax-webhook-repo.git)

## Purpose
The primary function of this repository is to generate specific Git events for testing the webhook integration. It supports the following actions:

* **PUSH**: Triggered when commits are pushed to any branch.
* **PULL_REQUEST**: Triggered when a pull request is opened or synchronized.
* **MERGE**: Triggered when a pull request is successfully merged (processed as a closed PR with merge status).

## Automated Testing Scripts
To streamline the assessment review, individual shell scripts are provided in the `actions/` directory. These scripts require the **GitHub CLI (gh)** to be authenticated.

### 1. Trigger Push Action
Commits a timestamp to `activity.txt` and pushes directly to the `main` branch.

```bash
./actions/push.sh
```

### 2. Trigger Pull Request Action
Creates a unique feature branch, pushes changes, and opens a Pull Request against main.

```bash
./actions/pull_request.sh
```

### 3. Trigger Merge Action (Brownie Points)
Merges the most recently opened Pull Request via the CLI to trigger the merge event logic.

```bash
./actions/merge.sh
```

## Manual Usage Instructions
Alternatively, you can trigger these events manually via the GitHub interface:

* **Push**: Commit any file change and push to main.
* **Pull Request**: Create a new branch, push it, and open a PR on GitHub.
* **Merge**: On an open PR, click the "Merge pull request" button.

## Integration Configuration

* **Payload URL**: Configured to target the `/webhook` endpoint of the backend receiver.
* **Content Type**: `application/json`
* **Secret**: HMAC SHA256 signature verification is enabled for secure communication.