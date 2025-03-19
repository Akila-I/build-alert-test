# Use the official Golang image
FROM golang:1.21

# Set the working directory
WORKDIR /app

# Try to copy a non-existent Go file
COPY main.go .

# Build the Go application
RUN go build -o main .

# Command to run the application
CMD ["./main"]
