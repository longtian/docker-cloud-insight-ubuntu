FROM ubuntu
EXPORT CI_LICENSE_KEY=<YOUR_KEY>
curl -sSL https://raw.githubusercontent.com/oneapm/oneapm-ci-agent-installer/master/install_agent.sh  | bash -s
