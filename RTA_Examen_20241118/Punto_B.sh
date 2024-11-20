#!/bin/bash

# Verifico que se pasaron los parametros correctamente
if [ $# -ne 2 ]; then
  echo "Uso: $0 <usuario> <ruta_lista_usuarios>"
  exit 1
fi

# Parametros
usuario_origen=$1
ruta_lista_usuarios=$2

# Verifico si el archivo de usuarios existe
if [ ! -f "$ruta_lista_usuarios" ]; then
  echo "El archivo de usuarios '$ruta_lista_usuarios' no existe."
  exit 2
fi

# Obtengo la clave del usuario origen
clave_origen=$(passwd -S $usuario_origen | awk '{print $2}')

if [ "$clave_origen" != "P" ]; then
  echo "El usuario $usuario_origen no tiene una clave válida o está bloqueado."
  exit 3
fi

# Leo el archivo Lista_Usuarios.txt y proceso cada línea
while IFS= read -r linea; do
  # Suponemos que la línea tiene el formato: <nombre_usuario>:<grupo>
  nombre_usuario=$(echo $linea | cut -d':' -f1)
  grupo=$(echo $linea | cut -d':' -f2)

  # Creo el grupo si no existe
  if ! grep -q "^$grupo" /etc/group; then
    echo "Creando grupo $grupo..."
    sudo groupadd $grupo
  fi

  # Aca creo el usuario si no existe y le asigno la clave
  if ! id -u $nombre_usuario &>/dev/null; then
    echo "Creando usuario $nombre_usuario y asignando la clave..."
    sudo useradd -m -g $grupo -s /bin/bash $nombre_usuario
    echo "$nombre_usuario:$clave_origen" | sudo chpasswd
  else
    echo "El usuario $nombre_usuario ya existe."
  fi
done < "$ruta_lista_usuarios"

echo "Proceso completado."

