# <img src="https://podman.io/logos/optimized/podman-3-logo-266w-253h.webp" alt="Podman Logo" height="32px"/> Podman Setup on Windows

Podman is a daemonless container engine that works seamlessly with WSL2 on Windows.  
This guide walks you through installation, machine setup, UI configuration, and running demo containers.

## 1️⃣ Install Podman (WSLv2)

```powershell
# Install Podman using MSI installer (WSL2 compatible)
msiexec /i https://github.com/containers/podman/releases/download/v5.7.1/podman-installer-windows-amd64.msi
```

## 2️⃣ Initialize Podman Machine

```powershell
podman --version                   # Verify Podman installation and version
podman machine init                # Initialize a new Podman VM (default machine)
podman machine start               # Start the Podman VM
podman run --rm -it alpine echo "Podman is working!"   # Run a test container to confirm setup
```

## 3️⃣ Install Web UI (Cockpit)

```powershell
podman machine list                # List available Podman machines
podman machine ssh                 # SSH into the Podman VM
```

Inside the Podman VM terminal:

```bash
sudo dnf update -y                 # Update package repositories
sudo dnf install -y cockpit cockpit-podman   # Install Cockpit (web UI) and Podman plugin
sudo systemctl enable --now cockpit.socket   # Enable Cockpit service
sudo systemctl enable --now podman.socket    # Enable Podman API service

ip addr show                       # Show VM IP address (needed for browser access)
sudo passwd <user>                 # Reset password for your VM user
```

👉 On your host browser, visit:  `http://<vm-ip-addr>:9090/`  
Login with your VM user credentials.

## 4️⃣ Run Demo Container

```powershell
podman pull docker.io/nginxdemos/hello             # Pull demo Nginx container image
podman run -d -p 8080:80 docker.io/nginxdemos/hello # Run container in detached mode, map port 8080 → 80

podman ps                                          # List all running containers

podman stop <container_id-or-name>                 # Stop a specific container
podman stop -a                                     # Stop all running containers
```

On your host browser, visit: `http://<vm-ip-addr>:8080/`  
or `http://<vm-ip-addr>:8080/any/other/app-path`  
to test the running demo nginix app (container)

# 📘 Podman Cheatsheet

A quick reference for the most useful Podman commands.

## 🔹 Podman Machine (VM) Management

```powershell
podman machine init                 # Initialize a new Podman VM
podman machine start                # Start the Podman VM
podman machine stop                 # Stop the Podman VM
podman machine stop; podman machine start   # Restart the Podman VM
podman machine rm podman-machine-default   # Remove/reset the default Podman VM
podman machine list                 # List all Podman VMs
podman machine set --rootful        # Switch VM to rootful mode (needed for privileged ports)
```

## 🔹 Container Lifecycle

```powershell
podman ps                           # List running containers
podman ps -a                        # List all containers (including stopped)
podman start <container_id_or_name> # Start a container
podman stop <container_id_or_name>  # Stop a container
podman restart <container_id_or_name> # Restart a container
podman rm <container_id_or_name>    # Remove a container
podman rm -a                        # Remove all stopped containers
```

## 🔹 Image Management

```powershell
podman pull docker.io/library/nginx # Pull an image from Docker Hub
podman images                       # List all images
podman rmi <image_id_or_name>       # Remove an image
podman build -t myimage:latest .    # Build an image from Dockerfile in current directory
```

## 🔹 Container Operations

```powershell
podman run -d -p 8080:80 nginx      # Run container in detached mode with port mapping
podman run -it ubuntu bash          # Run interactively with shell access
podman rename <old_name> <new_name> # Rename a container
podman logs <container_id_or_name>  # View container logs
podman exec -it <container_id_or_name> bash   # Execute command inside running container
```

## 🔹 System Cleanup

```powershell
podman system prune -a              # Remove all unused containers, images, volumes, networks
podman info                         # Show system info
podman system df                    # Show disk usage
```

✅ **Summary:**  
- Use `podman machine` commands to manage the VM.  
- Use `podman ps`, `podman start/stop/restart/rm` for containers.  
- Use `podman images`, `podman pull/rmi/build` for images.  
- Use `podman run`, `podman exec`, `podman logs`, `podman rename` for operations.  
- Use `podman system prune` for cleanup. 
