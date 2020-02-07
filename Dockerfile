# Version node lts
FROM node:lts

# Dockerfile manager
LABEL maintainer="AGUMON <ljlm0402@gmail.com>"

# Copy project
COPY . /aws-fargate-codepipeline-deploy

# Update npm
RUN npm install -g npm

# Work to project
WORKDIR /aws-fargate-codepipeline-deploy

# Install npm
RUN npm install

# Set process port
EXPOSE 3000

# Start process
CMD ["npm", "start"]
