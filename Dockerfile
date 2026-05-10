FROM jetadmin/jetbridge:latest

EXPOSE 8888

ENV PORT=8888
ENV HOST=0.0.0.0

CMD ["npm", "start"]
