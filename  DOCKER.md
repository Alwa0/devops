# Docker Best Practices
### 1. Avoid unnecessary privileges

These tips follow the principle of the least privilege so your service or application only has access to the resources and information necessary to perform its purpose.
- Rootless containers
- Don’t bind to a specific UID
- Make executables owned by root and not writable

### 2. Reduce attack surface
It is a Dockerfile best practice to keep the images minimal.

- **Multistage builds:**
    
  Make use of multistage building features to have reproducible builds inside containers.


- **Distroless, from scratch:**

    Use the minimal required base container


- **Use trusted base images**


- **Update your images frequently**


- **Exposed ports:**

    Every opened port in your container is an open door to your system. Expose only the ports that your application needs and avoid exposing ports like SSH (22).
### 3. Prevent confidential data leaks
- **Credentials and confidentiality**:
  
    Never put any secret or credentials in the Dockerfile instructions (environment variables, args, or hard coded into any command).


- **ADD, COPY**:

    Both the ADD and COPY instructions provide similar functions in a Dockerfile. However, COPY is more explicit. Use COPY unless you really need the ADD functionality, like to add files from an URL or from a tar file. COPY is more predictable and less error prone.


- **Build context and dockerignore**


### 4.  Layer sanity
Remember that order in the Dockerfile instructions is very important.

### 5.  Metadata labels
It is a Dockerfile best practice to include metadata labels when building your image.


Labels will help in image management, like including the application version, a link to the website, how to contact the maintainer, and more.

### 6.  Linting
Tools like Haskell Dockerfile Linter (hadolint) can detect bad practices in your Dockerfile, and even expose issues inside the shell commands executed by the RUN instruction.

### 7. Locally scan images during development
Image scanning is another way of detecting potential problems before running your containers. In order to follow the image scanning best practices, you should perform the scanning at different stages of the image life cycle, in addition to when the image is already pushed to a container registry.

### 8. Beyond image building
- Docker port socket and TCP protection
- Sign images and verify signatures
- Tag mutability
- Run as non root
- Include health / liveness checks
- Drop capabilities


#### Sources I used :
[Top 20 Dockerfile best practices](https://sysdig.com/blog/dockerfile-best-practices/)
