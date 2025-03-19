# Use the official Golang image
FROM golang:1.21

# Set the working directory
WORKDIR /app

# Try to copy a non-existent Go file
COPY main.go .

# Build the Go application
RUN go build -o main .

# Create a non-root user and group
RUN groupadd -r appuser && useradd -r -g appuser appuser

# Switch to the non-root user
USER appuser

# Command to run the application
CMD ["./main"]
