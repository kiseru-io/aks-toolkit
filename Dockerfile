FROM azuresdk/azure-cli-python:rc2.0.48

MAINTAINER kiseru.io

#RUN apt-get update && \
#    apt-get install --no-install-recommends --no-install-suggests -y httpie curl nmap wget procps lsof python-pip netcat jq telnet &&   \
#    pip install --upgrade setuptools && \
#    pip install --upgrade sslyze

#EXPOSE 80

RUN curl -sL https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash && \
    az aks install-cli &&

RUN /usr/local/bin/az --version && \
    /usr/local/bin/kubectl version --client && \
    /usr/local/bin/helm version --client  
   
