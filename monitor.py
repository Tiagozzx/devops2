import requests
import time

SITIOS = ["https://www.google.com", "https://github.com"]

def chequear():
    print("--- Iniciando monitoreo ---")
    for url in SITIOS:
        try:
            r = requests.get(url, timeout=5)
            estado = "OK" if r.status_code == 200 else f"Error {r.status_code}"
        except:
            estado = "CAÍDO"
        
        print(f"Sitio: {url} | Estado: {estado}")

if __name__ == "__main__":
    chequear()