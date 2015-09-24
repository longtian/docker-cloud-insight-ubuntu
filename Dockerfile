FROM ubuntu:latest
RUN apt-get install -y curl
ENV CI_LICENSE_KEY=BVMEBB5cF1e17g5YHFcWW122cbtIBwFUBBo409cCCk5QBBwL77d5UgYCSQUGSAMA
RUN curl -sSL https://raw.githubusercontent.com/oneapm/oneapm-ci-agent-installer/master/install_agent.sh  | bash -s
CMD tail -f /var/log/oneapm-ci-agent/supervisord.log
