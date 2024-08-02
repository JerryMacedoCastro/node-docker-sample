FROM node:20-slim

# RUN apt update && apt install nginx -y

# COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/src/app

COPY index.js package.json ./

RUN npm install

EXPOSE 3000

CMD ["node", "/usr/src/app/index.js"]
# CMD [ "/bin/sh", "-c", "node /usr/src/app/index.js & nginx -g 'daemon off;'" ]

#ENTRYPOINT [ "/bin/sh", "-c", "node /usr/src/app/index.js & nginx -g 'daemon off;'" ]
