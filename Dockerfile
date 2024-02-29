FROM ghcr.io/puppeteer/puppeteer:latest

USER root
RUN npm install -g resume-cli --unsafe-perm=true --allow-root
RUN npm install -g resumed
RUN npm install -g jsonresume-theme-paper
RUN npm install -g jsonresume-theme-elegant
RUN npm install -g jsonresume-theme-relaxed

USER pptruser
RUN npm install jsonresume-theme-paper
RUN npm install jsonresume-theme-elegant
RUN npm install jsonresume-theme-relaxed