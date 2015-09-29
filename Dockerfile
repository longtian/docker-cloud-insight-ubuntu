FROM ubuntu:latest
RUN apt-get install -y curl
ENV CI_INSTALL_ONLY=true
ENV CI_LICENSE_KEY=BVMEBB5cF1e17g5YHFcWW122cbtIBwFUBBo409cCCk5QBBwL77d5UgYCSQUGSAMA
RUN curl -sSL https://raw.githubusercontent.com/oneapm/oneapm-ci-agent-installer/master/install_agent.sh  | bash -s
CMD /etc/init.d/oneapm-ci-agent  start
