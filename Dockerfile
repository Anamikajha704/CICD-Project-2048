# official Nginx image as the base
FROM public.ecr.aws/nginx/nginx:1.25

# Copy the 2048 game files to the Nginx web root
COPY . /usr/share/nginx/html

# Expose default Nginx http port
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
