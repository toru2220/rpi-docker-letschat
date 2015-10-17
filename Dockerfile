FROM hypriot/rpi-node


# Install dependencies
RUN git clone https://github.com/sdelements/lets-chat.git && \
    cd lets-chat && \
    npm intall && \
    cp settings.yml.sample settings.yml

EXPOSE 5000

ENTRYPOINT ["npm", "start"]
