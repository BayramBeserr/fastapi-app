from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "FastAPI is running inside Docker!"}

@app.get("/api/data")
def get_data():
    return {"data": "Here is some API data"}

