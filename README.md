# SolidServer
## Description
My attempt to dockerise the Solid Server. 

For more information on Solid, [see here](https://solid.inrupt.com/)

The Dockerfile basically mimic the installation instructions [here](https://solid.inrupt.com/docs/installing-running-nss), with the following exception:
* This requires you to get a CA certs. This Dockerfile require you to put your own PEM files in the persistent storage. 
Note that a self signed certs would not work with Solid. You could use the [manual mode of letsencrypt](https://certbot.eff.org/docs/using.html#manual).

## Required
* Debian Buster slim
* NodeJS installation 8.x
* Persistent mounting on /solid. The directory structure is demostrated here.

## Why dockerise the Solid Server
* Easier to upgrade when required
* Easier to configure individual servers
* **Should** be easier to move between servers

## Configuration
*To be complete later*

### Persistent mounting
* If there is any persisted data you should mount it in /solid

## Example
```
docker run --rm  --name solid -ti -v /home/tommyt/solid:/solid -p18443:8443 -w /solid solidserver solid start --root /solid --port 8443 -v --serverUri https://solid.thetsui.com:8443/
```

## Link
Reference to: https://solid.inrupt.com/docs/installing-running-nss

## To do
- [x] Dockerised
- [ ] Instruction on configuration