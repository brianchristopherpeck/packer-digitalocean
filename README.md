# Packer Build for Digital Ocean

## Build
`packer build build.json`

## Configuration script
install_doc.sh

### Image defaults
OS => ubuntu-18-04-x64
Region => sfo2
Size => 512mb
ssh_username => root

\* These can be easily edited in build.json as well as the configuration script above.

### Required environment variables
DIGITALOCEAN_API_TOKEN=DO-api-token

\*\* I prefer direnv to store the environment variables locally. This allows me to run `packer build build,json` alone, since the environment variables persist in my shell environment. It also allows me to have multiple preset environments.

direnv can be downloaded [here](https://direnv.net/)

#### If you chose not to use a preloaded environment

You can run this command:

```
packer build build.json -var DIGITALOCEAN_API_TOKEN=DO-api-token
```


\*\*\* Note: The image id at the end of this build is the one you use for Terraform. It's *extremely hard* to find in Digital Ocean GUI