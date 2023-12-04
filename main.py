import uvicorn
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def imprimir_nome():
    return "Hello, World!"


if __name__ == "__main__":
    uvicorn.run(app, port=8000)
