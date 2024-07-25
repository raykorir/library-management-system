#!/bin/bash


URL="http://localhost:8000/"


server_pid=$(lsof -i :8000 -t)
if [ -z "$server_pid" ]; then
    echo "Starting FastAPI server..."
    uvicorn main:app --host 0.0.0.0 --port 8000 &
    sleep 30
else
    echo "FastAPI server is already running."
    exit
fi


response=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ $response -eq 200 ]; then
    echo "Success: API is working fine."
else
    echo "Error: API returned status code $response."
    exit
fi
