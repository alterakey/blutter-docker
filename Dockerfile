from debian:trixie-slim
maintainer "Takahiro Yoshimura <alterakey@protonmail.com>"
arg rev="HEAD"
run apt-get -y update && env DEBIAN_FRONTEND=noninteractive apt-get -y install python3-pyelftools python3-requests git cmake ninja-build build-essential pkg-config libicu-dev libcapstone-dev
run git clone https://github.com/worawit/blutter /app && (cd /app && git checkout ${rev} && rm -rf .git*)
run mkdir /t
workdir /t
entrypoint ["python3", "/app/blutter.py"]
