# My First DevOps Web App Project

A simple Node.js application built with **Express.js** packaged with Docker and deployed using GitHub Actions.

----------------------------------------------------

## Prerequisites
- Node.js (v18) and npm  
- Docker installed and running  
- GitHub account with Actions enabled

## Project Structure
├── app.js # Main application file
├── package.json # Project dependencies & scripts
├── Dockerfile # Docker build instructions
└── README.md # Project documentation

## What This Project Demonstrates
- How to containerize a Node.js app with Docker  
- Setting up a GitHub Actions CI/CD pipeline  
- Automated build, test, and deployment workflows

## Run Locally
npm install
node app.js

## Run with Docker
docker build -t my-node-app .
docker run -p 3001:3001 my-node-app

--------------------------------------------------

CI/CD Workflow Overview 

Automated build and deployment is handled by GitHub Actions.
Every push to the main branch triggers:

1. Code checkout

2. Dependency install

3. Docker build & test

4. Deployment

-------------------------------------------------

What I Learnt

1. Writing a minimal but production-ready Dockerfile

2. Automating deployments with GitHub Actions

------------------------------------------------

Troubleshooting Common Issues and Solutions

1. Port already in use: I ran into this when trying to start the app locally. The fix was either changing the PORT in app.js or stopping the other process that was using the same port.

2. Docker build fails: At one point, my Docker build kept failing. It turned out my Dockerfile wasn’t fully aligned with the dependencies in package.json. Once I fixed that and reinstalled the missing dependencies, the build worked.

3. GitHub Actions fails: I had some failed pipeline runs. Most of them were caused by small syntax errors in the .github/workflows/ci-cd.yml file or missing secrets in GitHub. Double-checking those solved the problem.


