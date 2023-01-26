#!/bin/bash

# Creamos el ipset China
ipset -N china hash:net

# Descargar la última serie de IPs para china
wget -P . http://www.ipdeny.com/ipblocks/data/countries/cn.zone

# Añadimos cada dirección IP de la lista descargada en el ipset 'china'
for i in $(cat /root/Desktop/cn.zone ); do ipset -A china $i; done 
