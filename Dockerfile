FROM nginx:latest
LABEL ifeng fscarmen mack-a ygkkk
EXPOSE 80
ENV UUID c1fa5319-329b-40ce-a512-b3bf696a2859
USER root
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.yaml ./
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
