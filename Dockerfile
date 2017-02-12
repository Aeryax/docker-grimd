FROM ubuntu:latest
MAINTAINER Gabriel Sentucq <perso@kazhord.fr>

ENV version=1.0.5

# Add dependencies
RUN apt-get update && \
  apt-get install -y ca-certificates && \
  update-ca-certificates -f

# Download grimd binary
ADD https://github.com/looterz/grimd/releases/download/v${version}/grimd_linux_x64 /bin/grimd

# Chmod binary
RUN chmod a+x /bin/grimd

# Forward apporpriate ports
EXPOSE 53/udp 53/tcp

# Run grimd
ENTRYPOINT ["/bin/grimd", "-update"]
