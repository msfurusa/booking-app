# Go Ticket Booking Application

This is a simple Go application that simulates a conference ticket booking system. The program interacts with users, validates their input, and books tickets for a conference. Additionally, it sends a ticket confirmation email using goroutines to simulate asynchronous processing.

## Prerequisites

- Go installed on your local machine
- Docker installed on your local machine
- Minikube installed on your local machine (optional for Kubernetes deployment)

## Getting Started

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/your-username/conference-ticket-booking.git
    cd conference-ticket-booking
    ```

2. **Build and Run Locally:**

    ```bash
    go build -o main .
    ./main
    ```

    Open your web browser and go to [http://localhost:8080](http://localhost:8080) to access the application.

3. **Build Docker Image:**

    ```bash
    docker build -t your-docker-username/conference-app:latest .
    ```

4. **Run Docker Container:**

    ```bash
    docker run -p 8080:8080 your-docker-username/conference-app:latest
    ```

5. **Access Dockerized App:**

    Open your web browser and go to [http://localhost:8080](http://localhost:8080) to access the Dockerized application.

## Deployment with Minikube (Optional)

1. **Start Minikube:**

    ```bash
    minikube start
    ```

2. **Apply Kubernetes Deployment:**

    ```bash
    kubectl apply -f deployment.yaml
    ```

3. **Access the Service:**

    ```bash
    minikube service conference-app-service
    ```

    Open the provided URL in your web browser to access the application.

## Kubernetes Deployment Features

- **Readiness Probe:** The application is ready to serve traffic when it responds to HTTP requests on port 8080. Check the health on the `/` path.

- **Liveness Probe:** The application is considered alive as long as it responds to HTTP requests on port 8080. Check the health on the `/` path.

## Customization

Feel free to customize the application and deployment files based on your specific requirements.

