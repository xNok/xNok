#!/bin/bash

# Start Hugo development server
set -e

echo "Starting Hugo development server..."

# Change to website directory
cd /workspaces/xNok/website

# Check if hugo.toml exists
if [ ! -f "hugo.toml" ]; then
    echo "Warning: hugo.toml not found in website directory"
    echo "Current directory: $(pwd)"
    echo "Contents: $(ls -la)"
    exit 1
fi

# Start Hugo server in the background
echo "Starting Hugo server on port 1313..."
nohup hugo server --bind 0.0.0.0 --port 1313 --buildDrafts --buildFuture > /tmp/hugo.log 2>&1 &

# Save the PID for later reference
echo $! > /tmp/hugo.pid

# Wait a moment for the server to start
sleep 3

# Check if the server started successfully
if ps -p $(cat /tmp/hugo.pid) > /dev/null; then
    echo "✅ Hugo server started successfully!"
    echo "🌐 Website available at: http://localhost:1313"
    echo "📋 Server logs: tail -f /tmp/hugo.log"
    echo "🛑 To stop: kill \$(cat /tmp/hugo.pid)"
else
    echo "❌ Failed to start Hugo server. Check logs:"
    cat /tmp/hugo.log
    exit 1
fi
