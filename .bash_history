sudo usermod -aG sudo gonzalez
cd ..
exit
sudo ls /root
sudo apt upgrade
ls
history
sudo apt install ansible -y
exit
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo apt update
sudo apt install vim 
vim --version 
git init 
git branch -m main 
git init
git add .
git commit -m "t"
git config --global user.email "tg17805@gmail.com"
git confi --global user.name "TomasGLZ"
git config --global user.name "TomasGLZ"
ls
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./script_Precondicion.sh 
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
ls
lsblk
sudo apt update 
sudo apt install lvm2 -y
lsblk
exit
lsblk
cd RTA_Examen_20241118/
ls
chmod +x Punto_*.sh
ls
lsblk
sudo fdisk /dev/sdb
lsblk
sudo fdisk /dev/sdc
lsblk
sudo pvcreate /dev/sdb1
sudo pvcreate /dev/sdc1
sudo vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_temp /dev/sdc1
sudo lvcreate -L 8M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap
sudo vim /etc/fstab
lsblk
vim Punto_A.sh
ls
vim Punto_A.sh
ls
sudo mkdir -p /usr/local/bin
touch /usr/local/bin/gonzalezAltaUser-Groups.sh
sudo touch /usr/local/bin/gonzalezAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/gonzalezAltaUser-Groups.sh
vim /usr/local/bin/gonzalezAltaUser-Groups.sh 
sudo vim /usr/local/bin/gonzalezAltaUser-Groups.sh 
ls
cd ..
ls
UTN-FRA_SO_Examenes/
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
pwd
cd Lista
cd Lista_Usuarios.txt
cat Lista_Usuarios.txt 
pwd
cd ..
ls
RTA_Examen_20241118/
cd RTA_Examen_20241118/
ls
sudo /usr/local/bin/gonzalezAltaUser-Groups.sh gonzalez /home/gonzalez/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
vim Punto_B.sh
exit
ls
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
cd bash_script/
cat Lista_Usuarios.txt 
history
ls
pwd
history 
sudo vim /usr/local/bin/gonzalezAltaUser-Groups.sh
history
sudo /usr/local/bin/gonzalezAltaUser-Groups.sh gonzalez /home/gonzalez/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls
sudo vim /usr/local/bin/gonzalezAltaUser-Groups.sh
history
sudo vim /usr/local/bin/gonzalezAltaUser-Groups.sh
sudo chmod 755 /usr/local/bin/gonzalezAltaUser-Groups.sh
sudo /usr/local/bin/gonzalezAltaUser-Groups.sh gonzalez /home/gonzalez/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
exit
ls
sudo vim /usr/local/bin/gonzalezAltaUser-Groups.sh
ls
cd <Path-Repo>/202406/docker/
vim index.html
ls
cat index.html
ls 
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker
ls
cd ..
ls
cd ansible/
ls
cat README.md
cd ..
ls
cd _checks
ls
cd ..
ls
cd /home/gonzalez/UTN-FRA_SO_Examenes/202406/docker
vim index.html
FROM nginx:latest
pwd
vim Dockerfile
ls
vim index.html
sudo usermod -a -G docker gonzalez
cat /etc/group
ls
vim Dockerfile 
docker build -t web1-gonzalez
docker build -t web1-gonzalez .
sudo docker build -t web1-gonzalez .
df -h
vim Dockerfile 
sudo vgs
docker system prune -a
sudo lvextend -l +100 /dev/mapper//vg_datos-lv_docker
sudo docker build -t web1-gonzalez .
sudo lvextend -l +100 /dev/mapper//vg_datos-lv_docker
sudo lvextend -l +25 /dev/mapper//vg_datos-lv_docker
sudo docker build -t web1-gonzalez .
sudo lvextend -l +25 /dev/mapper//vg_datos-lv_docker
lsblk
sudo lvextend -l +100 /dev/mapper//vg_datos-lv_docker
sudo docker build -t web1-gonzalez .
sudo resize2fs /dev/vg_datos-lv_docker/lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker/lv_docker
sudo resize2fs /dev/mapper//vg_datos-lv_docker/lv_docker
sudo lvextend -l +100 /dev/mapper/vg_datos-lv_docker
sudo systemctl restart docker
sudo vgdisplay vg_datos-lv_docker
lsblk
sudo vgdisplay vg_datos
sudo systemctl restart docker
sudo lvextend -l +100 /dev/mapper//vg_datos-lv_docker
sudo lvextend -l +100 /dev/mapper//vg_datos
sudo lvextend -l +100M /dev/mapper//vg_datos
sudo lvextend -L +100M /dev/mapper//vg_datos
sudo lvextend -L +100M /dev/mapper//vg_datos-lv_docker
ls
cd ..
ls
cd ..
ls
cd ..
ls
RTA_Examen_20241118/
ls -la
cd RTA_Examen_20241118/
vim Punto_A.sh 
sudo docker build -t web1-gonzalez .
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker
ls
sudo docker build -t web1-gonzalez .
sweapon --show
swapon --show
cd ..
exit
lsblk
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker
ls
sudo docker build -t web1-gonzalez .
sudo lvextend -L +100M /dev/vg_datos/lv_docker
sudo resize2fs
/dev/vg_datos/lv_docker
sudo systemctl restart docker
sudo resize2fs /dev/vg_datos/lv_docker
sudo systemctl restart docker
sudo docker build -t web1-gonzalez .
ls
vim Dockerfile 
ls
docker login 
docker tag web1-gonzalez TomasGLZ/web1-gonzalez
docker push TomasGLZ/web1-gonzalez
docker images
docker push TomasGLZ/web1-gonzalez
docker login 
docker tag TomasGLZ/web1-gonzalez docker.io/TomasGLZ/web1-gonzalez
docker tag TomasGLZ/web1-gonzalez docker.io/tomasglz/web1-gonzalez
docker push docker.io/tomasglz/web1-gonzalez
vim run.sh
chmod +x run.sh
ls
./run.sh
docker ps
docker ps 
docker logs <CONTAINER_ID>
docker logs fb012f8ee8b9
docker ps 
curl http://localhost:8080
sudo ufw status
docker ps
ip a
docker exec -it <CONTAINER_ID> /bin/bash
curl http://localhost:80
docker exec -it fb012f8ee8b9 /bin/bash
ls
vim index.html
vim Dockerfile 
./run.sh
sudo lsof -i :8080
docker ps
docker stop fb012f8ee8b9
./run.sh
vim Dockerfile 
ls
cd ..
ls
RTA_Examen_20241118/
cd RTA_Examen_20241118/
ls
vim Punto_D.sh
vim Punto_C.sh
lsblk
cd  .
cd ..
ls
cd UTN-FRA_SO_Examenes/
LS
ls
cd 202406
ls
cd ansible 
mkdir -p /tmp/2do_parcial/alumno
mkdir -p /tmp/2do_parcial/equipo
ls
cd /tmp/2do_parcial/alumno/datos_alumno.txt
cd /tmp/2do_parcial/alumno/
ls
cd ..
cd equipo
ls
cd ..
ls
cd alumno/
cd ..
ls
cd home
ls
cd gonzalez/
cd UTN-FRA_SO_Examenes/
cd 202406
cd ansible 
cd roles
ls
cd 2do_parcial/
ls
cat README.md 
cd ..
cd /tmp/2do_parcial/alumno/datos_alumno.txt
cd /tmp/2do_parcial/alumno
ls
mkdir -p gonzalez/UTN-FRA_SO_Examenes/202406/ansible/roles/editar_tareas/templates
cd gonzalez/UTN-FRA_SO_Examenes/202406/ansible/roles/editar_tareas/templates
ls
vim datos_alumno.txt.j2
ls
vim datos_equipo.txt.j2
cd ..
ls
vim /UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
sudo vim /UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
ls
sudo vim /UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
ls
cd roles
ls
cd editar_tareas/
la
ls
cd ..
ls
cd ..
ls
cd home
ls
cd gonzalez/
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ansible/
ls
cd roles
ls
cd 2do_parcial/
ls -la
cd ..
ls
2do_parcial/
cd 2do_parcial/
ls
cd ..
ls
cd 2do_parcial/
ls
cd /tmp/2do_parcial/alumno
ls
cd gonzalez/
ls
cd ..
ls
cd ..
ls
cd home
cd gonzalez/
cd UTN-FRA_SO_Examenes/
cd 202406/ansible/roles
ls
cd ..
cd home
cd ,,
cd ..
ls
cd temp 
cd tmp 
ls
cd 2do_parcial/
ls
cd ..
ls
cd 2do_parcial/
ls
cd alumno/
ls
cd gonzalez/
ls
cd ..
ls
cd alumno/
ls 
cd gonzalez/
ls
cd ..
rm -r 2do_parcial/
ls
mkdir -p /tmp/2do_parcial/alumno
mkdir -p /tmp/2do_parcial/equipo
ls
cd 2do_parcial/
ls
cd alumno/
ls
cd ..
cd home
ls
cd gonzalez/
ls
cd UTN-FRA_SO_Examenes/202406/ansible
ls
cd roles
ls
cd 2do_parcial/
ls
cd ..
ls
mkdir -p UTN-FRA_SO_Examenes/202406/ansible/roles/editar_tareas/templates
cd UTN-FRA_SO_Examenes/202406/ansible/roles/editar_tareas/templates
vim datos_alumnos.txt.j2
vim datos_equipo.txt.j2
cd ..
ls
vim playbook.yml 
cd roles
cd 2do_parcial/
ls
ls -la
cd ..
ls
cd editar_tareas/
ls
cd ..
cd 2do_parcial/
cd tasks/
ls
cd ..
ls
cd ..
ls
cd ..
ls
vim playbook.yml 
cd roles
ls
ls -l
cd 2do_parcial/
ls -l
cd defaults/
ls -l
vim main.yml 
ip addr show
ip config
hostname -I
ip a show eth0 | grep inet
vim main.yml 
lsb_release -a
cat /etc/os-release
vim main.yml 
cd ..
ls
ls -la
cd tasks/
ls -l
vim main.yml 
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd tmp
ls
cd 2do_parcial/
ls
cd alumno/
ls
ls -la
vim alumno
cd ..
vim alumno/
ls
cd equipo/
ls
CD ..
cd ..
ls
ls -la
cd home
ls
cd gonzalez/
ls
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406
ls
cd ansible/
ls -la
cd roles/
ls -la
cd 2do_parcial/
ls
mkdir templates
ls
cd templates/
vim alumnos.txt
ls
vim equipos.txt
ls
vim alumnos.txt 
vim equipos.txt 
cd ..
cd ansible/
ls
ansible-playbook -i hosts playbook.yml
ls
cd roles/
ls
cd 2do_parcial/
ls
ls -l
cd defaults/
ls
cd ..
vim defaults/
cd ..
ls 
cd ..
ls -l 
vim playbook.yml 
ansible-playbook -i hosts playbook.yml
ls
cd ..
ls
cd tmp 
ls
rm -r 2do_parcial/
ls
cd ..
ls
cd home
ls
cd gonzalez/
cd UTN-FRA_SO_Examenes/
cd 202406
ls
cd ansible 
ls
vim playbook.yml 
cd roles
ls
cd 2do_parcial/
ls
cd templates/
ls
cd ..
rm -r templates/
ls
vim tasks/
vim defaults/
ls
cd ..
ls 
edit
cd editar_tareas/
ls
cd ..
rm -r editar_tareas/
ls
lsblk
cd gonzalez
cd ..
cd UTN-FRA_SO_Examenes/
cd 202406
cd ansible/
ls -la
vim playbook.yml 
cd roles
ls
cd 2do_parcial/
ls
cd tasks/
ls
vim main.yml 
cd ..
ls
ls -la
mkdir templates
ls
cd templates/
vim datos_alumno.txt.j2
ls
vim datos_equipo.txt.j2 
ls
cd ..
ls
vim playbook.yml 
ls
cd roles/
ls
cd 2do_parcial/
ls
vim tasks/
ls
cd tasks/
ls
vim main.yml 
cd ..
cd 
cd ansible
cd UTN-FRA_SO_Examenes/
cd 202406
cd ansible/
ls
vim playbook.yml 
cd roles
ls
cd 2do_parcial/
cd tasks/
vim main.yml 
cd ..
ls
ansible-playbook playbook.yml
vim playbook.yml 
ansible-playbook playbook.yml
sudo ansible-playbook playbook.yml
getent group 2PSupervisores
sudo visudo -c
sudo grep '2PSupervisores' /etc/sudoers
cat /tmp/2do_parcial/alumnos/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
sudo usermod -aG 2PSupervisores gonzalez
sudo ls
cd ..
ls
cd RTA_Examen_20241118/
ls
vim Punto_D.sh
cd ..
ls
cd RTA_Examen_20241118/
vim Punto_A.sh
vim Punto_B.sh
vim Punoto_C.sh
vim Punto_C.sh
vim Punto_D.sh
cd ..
ls
cd RTA_Examen_20241118/
ls
cd ..
ls
cd gonzalez/
ls
cat ~/.ssh/id_ed25519.pub
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub
git clone git@github.com:TomasGLZ/UTNFRA_SO_2do_Parcial_Gonzalez.git
ls -l
cd UTNFRA_SO_2do_Parcial_Gonzalez/
cp -r ~/UTN-FRA_SO_Examenes/202406 .
ls
cp -r ~/RTA_Examen_20241114 .
cp -r ~/RTA_Examen_20241118 .
ls 
history -a
