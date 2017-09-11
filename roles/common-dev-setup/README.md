
## Description
* Installs Oracle Java 8
* Installs docker compose
* Blacklist nouveau driver
    * The extra Nvidia graphics card is not used and its driver "nouveau" can cause problems with apt-get upgrade so it is disabled.

## Usage
This role is used to install some packages and configure Dell workstation.