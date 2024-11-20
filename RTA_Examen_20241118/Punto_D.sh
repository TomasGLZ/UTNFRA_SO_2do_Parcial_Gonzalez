Pasos realizados para configurar Ansible en el proyecto "2do Parcial"

1. **Configurar el entorno:**
   - Clone el repositorio desde el directorio `/home/gonzalez/UTN-FRA_SO_Examenes/202406/ansible/`.
   - Navegue al directorio adecuado donde se encuentran los archivos de Ansible: `cd ~/UTN-FRA_SO_Examenes/202406/ansible/`.

2. **Editar el archivo playbook.yml:**
   - Abri el archivo `playbook.yml` y edite la seccion `hosts` para que se ejecute en `localhost`:
   
     ```yaml
     - hosts: localhost
       tasks:
         - include_role:
             name: 2do_parcial
         - name: "Otra tarea"
           debug:
             msg: "Despues de la ejecucion del rol"
     ```

   - Anadi la variable `become: true` para poder ejecutar las tareas con privilegios de superusuario (root).

3. **Configuracion del inventario:**
   - No utilice un inventario de hosts adicional, ya que trabaje en `localhost`.

4. **Ejecutar el playbook con permisos elevados:**
   - Use el siguiente comando para ejecutar el playbook con permisos de root:
   
     ```bash
     sudo ansible-playbook playbook.yml
     ```

5. **Verificar la ejecucion de las tareas:**
   - Se crearon los directorios `/tmp/2do_parcial/alumnos` y `/tmp/2do_parcial/equipo`.
   - Se generaron los archivos `datos_alumno.txt` y `datos_equipo.txt` con la informacion proporcionada.
   - Modifique el archivo `/etc/sudoers` para permitir que los usuarios del grupo `2PSupervisores` ejecuten comandos con `sudo` sin necesidad de contrasena.
   
6. **Pruebas realizadas:**
   - Verifique que el grupo `2PSupervisores` estuviera creado correctamente usando el comando:
   
     ```bash
     getent group 2PSupervisores
     ```

   - Comprobe que la linea en `/etc/sudoers` se añadio correctamente para el grupo `2PSupervisores`:
   
     ```bash
     sudo grep '2PSupervisores' /etc/sudoers
     ```

   - Realice una prueba ejecutando un comando con `sudo` sin necesidad de ingresar la contrasena:
   
     ```bash
     sudo ls
     ```

7. **Archivos generados:**
   - Los archivos generados por Ansible estan ubicados en las siguientes rutas:
     - `/tmp/2do_parcial/alumnos/datos_alumno.txt`
     - `/tmp/2do_parcial/equipo/datos_equipo.txt`

---

Guarda este contenido en el archivo de texto siguiendo los mismos pasos mencionados anteriormente, y tendrás un archivo con las instrucciones completas y sin acentos. Si necesitas algún cambio adicional, avísame.

