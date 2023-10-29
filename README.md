# vuln-webapp-scripts
# Web Application Security Testing Environments and Scripts

Welcome to the Web Application Security Testing repository! This collection provides Docker-based security testing environments for popular web applications and a set of scripts to manage and launch them for penetration testing and security assessment.

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Running Docker Compose](#docker-compose)
- [Contributing](#contributing)
- [License](#license)

<a name="introduction"></a>
## Introduction

This repository offers pre-configured Docker environments for the following web applications:
- [bWAPP]()
- [Damn Vulnerable Web App - DVWA]()
- [Juice Shop]()
- [Mutillidae]()

The included scripts make it easy to launch and manage these environments for security testing and assessment.

<a name="prerequisites"></a>
## Prerequisites

Before using the provided scripts and environments, ensure you have the following prerequisites installed:
- [Docker](https://www.docker.com/get-started)

<a name="getting-started"></a>
## Getting Started

1. Clone this repository to your local machine:

   ```
   git clone https://github.com/bugbountybarista/vuln-webapp-scripts.git
   cd vuln-webapp-scripts
   ```

2. Follow the instructions in the individual application directories (e.g., mutillidae, bwapp, dvwa) to set up and configure each environment.

<a name="usage"></a>
## Usage

To start an environment, use the associated script:

```
./run-mutillidae.sh
```

Replace run-mutillidae.sh with the appropriate script for the web application you want to test.

<a name="docker-compose"></a>
## Running Docker Compose

To run your Docker Compose configuration, follow these steps:

1. Open a terminal or command prompt.

2. Navigate to the directory where your `docker-compose.yml` file is located using the `cd` command:

   ```
   cd /path/to/your/docker/compose/directory
   ```
To start the containers defined in the docker-compose.yml file, use:

```
docker-compose up
```

To run the containers in the background, add the -d flag:

```
docker-compose up -d
```

To stop and remove the containers defined in the docker-compose.yml file, use:

```
docker-compose down
```

To view the logs of the containers, use:

```
docker-compose logs
```

To rebuild the containers (e.g., after changes to Docker images or the docker-compose.yml file), use:

```
docker-compose build
```

To stop the running containers without removing them, use:

```
docker-compose stop
```

<a name="contributing"></a>
## Contributing

Contributions are welcome! If you have improvements, bug fixes, or additional features to add, please submit a pull request. For major changes, open an issue first to discuss potential updates.

<a name="license"></a>
## License

This project is licensed under the [MIT License](LICENSE).

The MIT License is a permissive open-source license that allows you to use, modify, and distribute the code, even for commercial purposes. Please review the [LICENSE](LICENSE) file for the full text of the license.


