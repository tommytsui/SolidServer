# SolidServer
## Description
My attempt to dockerise the Solid Server. 

For more information on Solid, [see here](https://solid.inrupt.com/)

The Dockerfile basically mimic the installation instructions [here](https://solid.inrupt.com/docs/installing-running-nss), with the following exception:
* Does not use certbot. This Dockerfile require you to put your own PEM files in the persistent storage

## Required
* Debian Buster
* NodeJS installation 8.x

## Why dockerise the Solid Server
* Easier to upgrade when required
* Easier to configure individual servers
* **Should** be easier to move between servers

## Configuration
*To be complete later*

### Environment specific variables
* thisHostname - FQDN of the hostname
* PEMLocation - Location of the PEM Files required by Solid Server

### Persistent mounting
* If there is any persisted data you should mount it in /solid

## Example


## Link
Reference to: https://solid.inrupt.com/docs/installing-running-nss

## To do
- [x] Dockerised
- [ ] Instruction on configuration