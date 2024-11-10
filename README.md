
# Programn1

## Description
A brief description of your image and its purpose.

## Prerequisites
- Docker must be installed. You can install Docker from [docker.com](https://www.docker.com/get-started).

## Installation

### Step 1: Pull the Image
First, pull the image from Docker Hub using the following command:
```bash
docker pull 2424833f/programn1
```

---

### Step 2: Run the Container  
To run the container, use the following command:  
```bash
docker run -p 8080:8080 --name Programn1 2424833f/programn1
```
- `-p 8080:8080` maps port 8080 from the container to port 8080 on your machine.  
- `--name Programn1` assigns a name to the container for easy reference.

#### Important
- To use the previous command, port `8080` must be available. If it's in use, you can map it to another port.
- To change the port, replace `8080` with a different port. For example, to map to port `3000`, use the following command:
```bash
docker run -p 3000:8080 --name Programn1 2424833f/programn1
```

### Running the Container in the Background (Detached Mode)  
If you want to run the container in the background, use the `-d` flag for detached mode:
```bash
docker run -d -p 8080:8080 --name Programn1 2424833f/programn1
```
- The `-d` flag runs the container in the background, allowing you to continue using your terminal while the container runs.

You can verify that the container is running in the background by using:
```bash
docker ps
```

This command will show you a list of all running containers.

---

### Full Example
```bash
docker pull 2424833f/programn1
docker run -p 8080:8080 --name Programn1 2424833f/programn1
```

## Usage
Once the container is running, access the application in your browser at:
```
http://localhost:8080
```

## Additional Commands

### Stop the Container
To stop the container:
```bash
docker stop Programn1
```

### Restart the Container
To restart a stopped container:
```bash
docker start Programn1
```

### Remove the Container
To remove the container after stopping it:
```bash
docker rm Programn1
```

---

## Support  
You can visit the repository for this application on my GitHub: [freddyelgato/programn1](https://github.com/freddyelgato/programn1).  
If you encounter any issues, please open an issue there.
