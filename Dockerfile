FROM node:14-bullseye
WORKDIR /NETfrontend/NetflixFrontend$/frontend
COPY . .
RUN npm install
RUN npm run build
CMD  ["npm","start"]