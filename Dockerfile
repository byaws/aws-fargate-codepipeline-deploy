# Version node lts
FROM node:lts

# Dockerfile manager
LABEL maintainer="AGUMON <ljlm0402@gmail.com>"

# Copy project
COPY . /aws-fargate-codepipeline-deploy

# Update npm
RUN npm install -g npm@latest

# Work to project
WORKDIR /aws-fargate-codepipeline-deploy

# Install npm
RUN npm install

# Set environments port
ENV PORT=80

# Set process port
EXPOSE 80

# Start process
CMD ["npm", "start"]
