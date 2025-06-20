#!/bin/bash
# start.sh

# Create necessary directories
mkdir -p scheduled_jobs
mkdir -p .streamlit
mkdir -p logs

# Set environment variables for Streamlit
export STREAMLIT_SERVER_HEADLESS=true
export STREAMLIT_SERVER_PORT=${PORT:-8501}
export STREAMLIT_SERVER_ADDRESS=0.0.0.0
export STREAMLIT_SERVER_FILE_WATCHER_TYPE=none
export STREAMLIT_BROWSER_GATHER_USAGE_STATS=false

# Run the Streamlit app
streamlit run app.py \
    --server.port=$PORT \
    --server.address=0.0.0.0 \
    --server.headless=true \
    --browser.serverAddress="$RENDER_EXTERNAL_URL" \
    --server.enableCORS=false \
    --server.enableXsrfProtection=false