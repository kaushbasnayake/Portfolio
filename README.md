# Portfolio
ITBNM-2313-0008 / 0036

Portfolio Website 
Group Information 
•	Student 1: Kaushalya Basnayake - ITBNM-2313-0008 - Role: DevOps Engineer 
•	Student 2: Prabudi Kalindi - ITBNM-2313-0036 - Role: Full-Stack Developer 
Project Description 
This is a professional responsive portfolio website developed for a freelance agency to showcase services, projects, and skills.
Live Deployment 
Live URL:https://portfoliowebsite-project.netlify.app/
Build Status 
Technologies Used 
•	HTML5, CSS3, JavaScript 
•	GitHub Actions 
•	Deployment platform- Netlify 
Features 
•	Responsive landing page with services section 
•	Projects and Skills showcase section 
•	Functional navigation menu 
•	Fully automated CI/CD pipeline 
Branch Strategy 
We implemented the following branching strategy: 
•	main - Production branch 
•	develop - Integration branch 
•	feature/** - Feature development branches 


Individual Contributions 
 ITBNM-2313-0008
•	Repository initialization and configuration 
•	GitHub Actions CI/CD pipeline implementation 
•	Deployment setup and management 
•	Documented merge conflict resolution 
 ITBNM-2313-0036
•	Developed core application features and UI components 
•	Managed feature branches and frequent commits 
•	Created Pull Requests with descriptions and reviews 
•	Updated project documentation and README 
Setup Instructions 
Prerequisites 
•	Node.js ( v25.2.1)
•	Git 
Installation 
1.	Clone the repository: git clone [https://github.com/kaushbasnayake/Portfolio.git] 
2.	Navigate to project directory: cd [Portfolio website] 
3.	Install dependencies: npm install 
4.	Run development server: npm run dev 
Deployment Process 
The deployment is fully automated through GitHub Actions. Every push to the 'main' branch triggers the deployment workflow, which builds the project and deploys it to the cloud platform.

Challenges Faced 
• We didn't have a device to develop the frontend. We did it after the other group finished.
•Merge Conflict Resolution:  We created and resolved a merge conflict to practice professional Git collaboration workflows.
•CI/CD Configuration:  Setting up GitHub action workflow files to ensure successful builds and deployments was a significant learning challenge.
Professional Portfolio Website - Containerized Version

Assignment 2 : Docker Containerization & Architecture Design

Project Description
This project demonstrate the containerization of professional responsive portfolio website using Docker technology.It ensures environment consistency across development and production by packaging the application with an Nginx web server.

Technologies Used
Frontend:HTML5, CSS3, JavaScript

Containerization: Docker, Docker Compose
Base Image: Ngix:  stable-alpine (Optimized for size and security)

CI/CD: GitHub Actions (Automation Deployment)

Docker Implementation & Setup Instructions
The application is now containerized to eliminate the "it works on my machine " problem.

Prerequisites
Docker Desktop installed 

Docker Compose installed

1.Build and Run using Docker Compose
The entire application stack can be launched with a single command:

Bash
docker-compose up -d  --build
This command builds the image from the Dockerfile and starts the container.


The website will be accessible at: http://localhost:8080

2.Manual Docker Build (Optional)
Bash
 # Build the image
docker build -t portfolio-app .

# Run the container
docker run -d -p 8080:80 portfolio-app
3.Container Management
Stop the application: docker-compose down


Check container health: docker ps

Configuration & Environment Variables
Environment-specific settings are externalized to ensure portability.

Internal Port: 80 (Ngix default)

Extenal Port: 8080 (Mapped in docker-compose.yml)


Network: portfolio-network (Custom bridge network for isolation)


Repository Structure

Dockerfile: Defines the Ngix environment and build layers.


docker-compose.yml: Orchestrates the container services and resource limits.

.dockerignore: Excludes unnecessary  files (e.g., git, .vscode) to optimize build time and security.

Branch Strategy
main - Production branch

develop - Integration branch (Docker configuration updates pushed here)

feature- Feature development

Challenges Faced (Updated)
Merge Conflict Resolution: Resolved professional Git collaboration issues during Assignment 1.


Docker Path Errors: Resolved "Dockerfile not found" errors by standardizing file naming and directory structure.


Build Optimization: Overcame image bloat by implemanting an Airplane-based Ngix image and using .dockerignore.


