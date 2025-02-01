Ejercicio #1 

import math

def tem_time(T0, Ts, k, t):
    return Ts + (T0 - Ts) * math.exp(-k * t)

def time_tem(T0, Ts, k, variacion):
    T_final = Ts - variacion
    t = -math.log((T_final - Ts) / (T0 - Ts)) / k
    return t

# Parámetros
T0 = 5  # Temperatura inicial en ºC
Ts = 40  # Temperatura ambiente en ºC
k = 0.45  # Constante

# Cálculo de temperaturas para 1, 5, 12 y 14 horas
tiempos = [1, 5, 12, 14]
temperaturas = {t: tem_time(T0, Ts, k, t) for t in tiempos}

# Mostrar resultados
for t, temp in temperaturas.items():
    print(f"Temperatura después de {t} horas: {temp:.2f} ºC")

# Cálculo del tiempo para estar a 0.5ºC menos que la temperatura ambiente
variacion = 0.5
tiempo_necesario = time_tem(T0, Ts, k, variacion)

print(f"\nTiempo necesario para que la temperatura esté a {variacion}ºC menos que la temperatura ambiente: {tiempo_necesario:.2f} horas")
