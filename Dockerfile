# Use the official Golang image
FROM golang:latest

# Set the working directory
WORKDIR /app

# Copy the local package files to the container's workspace
COPY . .

# Build the Go application
RUN go build -o main .

# Expose port 8080 for the application
EXPOSE 8080

# Run the application
CMD ["./main"]
