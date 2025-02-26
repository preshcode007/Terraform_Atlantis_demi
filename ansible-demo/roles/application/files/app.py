# Basic flask api to demonstrate ansible deployment
"""Sample Application
This is a sample application to demonstrate ansible deployment
"""
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
