import matplotlib.pyplot as plt
import numpy as np

def Fe(x):
    return 3*(10**(-9))*(3*x**2-(3*(10**(-9)))**2)/(2*x**3)

d=np.linspace(10**(-7),5*10**(-6),1000000)

F=np.vectorize(Fe)

plt.title('Fe en fonction du diamètre du grain')
plt.xlabel('Diamètre (en μm)')
plt.ylabel('Fe')
plt.plot(d,f(d))