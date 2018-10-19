FROM azuresdk/azure-cli-python:rc2.0.48

MAINTAINER kiseru.io

RUN curl -sL https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash && \
    az aks install-cli &&

RUN /usr/local/bin/az --version && \
    /usr/local/bin/kubectl version --client && \
    /usr/local/bin/helm version --client  
   
