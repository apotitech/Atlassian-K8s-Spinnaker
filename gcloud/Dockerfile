FROM debian:stretch

RUN apt-get -qqy update && \
    apt-get install -qqy curl \
	    gcc \
        python-dev \
        python-setuptools \
        apt-transport-https \
        openssh-client \
        gnupg && \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && \
	apt-get update -y && \
	apt-get install google-cloud-sdk -y  \
					kubectl && \
	gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud config set metrics/environment github_docker_image && \
    gcloud --version && \
    kubectl version --client

VOLUME ["/root/.config"]
