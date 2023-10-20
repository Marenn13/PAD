#!/usr/bin/env python
# coding: utf-8

# In[4]:


# Mariana Norce
# 225314182
# menyuruh user untuk memasukan bilangan HexaDecimal
hexadecimal= input ("Masukkan angka")

#Mengkonversi bilangan HexaDecimal ke Binner
binary     = bin(int(hexadecimal, 16))[2:]

#Menghitung jumlah bit pada bilangan biner
bit_hitung= len(binary)

#menampilkan hasil perhitungan
print(f"Jumlah bit dalam bilangan heksadesimal {hexadecimal} adalah = {bit_hitung}")


# In[ ]:




