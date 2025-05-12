from fastapi import fastapi
from fastapi.middleware.cors import CORSMiddleware
import socket

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/info")
def get_info():
  hostname = socket.gethostname();
  ip_address = socket.gethostbyname(hostname);
  return {"hostname": hostname, "ip": ip_address}