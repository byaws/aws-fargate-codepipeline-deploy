# Version nginx latest
FROM nginx:latest

# Dockerfile manager
LABEL maintainer="AGUMON <ljlm0402@gmail.com>"

# Copy project
COPY . /aws-fargate-codepipeline-deploy

# Copy nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Update apt-get
RUN apt-get update -y

# Install git, curl
RUN apt-get install -y git curl sudo gnupg

# Curl node 12.x version
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Install node.js v12.14.0
RUN apt-get install -y nodejs

# Install npm latest
RUN npm install -g npm@latest

# Work to project
WORKDIR /aws-fargate-codepipeline-deploy

# Install npm
RUN npm install

# Set process port
EXPOSE 3000

# Start process
CMD ["npm", "start"]
