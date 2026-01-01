from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

def test_sumar():
    response = client.get("/sumar?a=5&b=3")
    assert response.status_code == 200
    assert response.json() == {"resultado": 8}