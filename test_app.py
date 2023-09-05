from flask import Flask
from pytest_flask import client

import app  # Assuming your Flask app is named "app"

# Create a test client for the app
@client(app.app)
def test_home_status_code(client):
    # Simulate a request to the home route
    response = client.get('/')
    print("response")
    # Check if the HTTP status code is 200
    assert response.status_code == 200
