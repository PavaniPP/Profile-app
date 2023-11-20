# Use the official NGINX image as the base image
FROM nginx

# Copy your web application files to the NGINX HTML directory
COPY ./index.html /usr/share/nginx/html/
COPY ./about.html /usr/share/nginx/html/
COPY ./skills.html /usr/share/nginx/html/
COPY ./project.html /usr/share/nginx/html/
COPY ./style.css /usr/share/nginx/html/
COPY ./about.css /usr/share/nginx/html/
COPY ./images /usr/share/nginx/html/images/
COPY ./Resume.pdf /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# CMD instruction to start NGINX when the container runs
CMD ["nginx", "-g", "daemon off;"]
