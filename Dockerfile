# Use below nginx version
FROM nginx:1.16
# Copy the ngnix configrations
COPY ./google-chrome-stable /var/chrome
COPY ./nginx.conf /etc/nginx/nginx.conf
CMD /var/chrome --headless --disable-gpu --remote-debugging-port=9222
# Expose it on port 9222
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
