FROM node:20

RUN apt-get update && apt-get install -y git python3 build-essential && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/HabitRPG__habitica.e0af620b /testbed
WORKDIR /testbed

# The postinstall script in package.json handles:
# 1. gulp build
# 2. cd website/client && npm install
# We need to ensure dependencies for the main app are installed first.
# Also, Habitica expects a config.json file.
RUN cp config.json.example config.json
RUN npm install

CMD ["/bin/bash"]