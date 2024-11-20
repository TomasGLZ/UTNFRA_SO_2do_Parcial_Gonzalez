#!/bin/bash
# Crea las particiones LVM en /dev/sdc y /dev/sde
echo "Creando particiones LVM en /dev/sdc y /dev/sde..."

# Particione /dev/sdb
fdisk /dev/sdb <<EOF
n
p
1


t
8e
w
EOF

# Particione /dev/sdc
fdisk /dev/sdc <<EOF
n
p
1


t
8e
w
EOF

# Muestro las particiones creadas
echo "Particiones creadas:"
lsblk

# Inicialize las particiones como LVM
echo "Inicializando las particiones como LVM..."
pvcreate /dev/sdb1
pvcreate /dev/sdc1

# Cree los grupos de volumenes
echo "Creando grupos de volúmenes..."
vgcreate vg_datos /dev/sdb1
vgcreate vg_temp /dev/sdc1

# Cree los volumenes logicos
echo "Creando los volúmenes lógicos..."
lvcreate -L 8M -n lv_docker vg_datos
lvcreate -L 1.5G -n lv_workareas vg_datos
lvcreate -L 512M -n lv_swap vg_temp

# Muestro los volúmenes logicos creados
lvdisplay

# Formatie los volumenes logicos
echo "Formateando los volúmenes lógicos..."
mkfs.ext4 /dev/vg_datos/lv_docker
mkfs.ext4 /dev/vg_datos/lv_workareas

# Formatie el volumen de swap
mkswap /dev/vg_temp/lv_swap

# Cree los puntos de montaje
echo "Creando los puntos de montaje..."
mkdir -p /var/lib/docker
mkdir -p /work

# Monte los volumenes logicos
echo "Montando los volúmenes lógicos..."
mount /dev/vg_datos/lv_docker /var/lib/docker
mount /dev/vg_datos/lv_workareas /work
swapon /dev/vg_temp/lv_swap

# Verifique los montajes
df -h
swapon --show

# Configure el fstab para que los volúmenes se monten automaticamente al iniciar
echo "Configurando /etc/fstab..."

# Añadi las entradas a /etc/fstab
echo "/dev/vg_datos/lv_docker    /var/lib/docker    ext4    defaults    0 2" >> /etc/fstab
echo "/dev/vg_datos/lv_workareas /work              ext4    defaults    0 2" >> /etc/fstab
echo "/dev/vg_temp/lv_swap       none               swap    sw          0 0" >> /etc/fstab

# Verico si las entradas fueron añadidas correctamente
cat /etc/fstab

# Monte todas las particiones definidas en fstab
mount -a
