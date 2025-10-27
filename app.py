from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Flask in Docker!"

if __name__ == '__main__':
    # Get port from environment variable, or default to 8080
    port = int(os.environ.get("PORT", 8080))
    # Listen on all network interfaces so Docker can map the port
    app.run(host="0.0.0.0", port=port)
