## Project Overview

Deploy a Sprint boot web application to docker using the Jenkins pipeline. 

---

## Setup the Enviroment

* Environment used is Ubuntu18 in cloud9.
* Jenkins with Blue Ocean Plugin & Pipeline-AWS Plugin.
* AWS account with IAM role created.

### Install Docker on Ubuntu:

* [Install Docker](https://docs.docker.com/engine/install/ubuntu/) 

### Install Maven:

* `sudo apt-get install maven -y`

### Install Jenkins:

* `wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -`
* `sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ >> /etc/apt/sources.list'`
* `sudo apt-get update`
* `wget https://pkg.jenkins.io/debian-stable/binary/jenkins_2.204.6_all.deb`
* `sudo apt install ./jenkins_2.204.6_all.deb -y`
* `sudo systemctl start jenkins`
* `sudo systemctl enable jenkins`
* `sudo systemctl status jenkins`

### Creating Jenkins Pipeline:

* In Jenkins, Click "Open Blue Ocean" and click "New Pipeline".
* Select GitHub from the options available, a token needs to be generated. A link to https://github.com/settings/tokens/new?scopes=repo,read:user,user:email,write:repo_hook needs to be clicked to generate a token for Jenkins to use and Make sure you copy the token and save it.
* After pasting the token into the form in Jenkins, click "connect", and your account should show up.
* Next, select the repo that was created, and click "create pipeline."
* In the page where the job shows, there is a gear icon - click on it to edit the job directly. Find the "Scan repository triggers" and click on "Periodically if not otherwise run," and select an interval of 2 minutes.

#### If there is any Docker permission denied:
Like this - Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock
* Add the docker group if it doesn't already exist: `sudo groupadd docker`
* Add the user "jenkins" to the docker group: `sudo usermod -a -G docker jenkins`
* Then restart Jenkins: `sudo service jenkins restart`
