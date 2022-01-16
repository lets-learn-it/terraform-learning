# Commands

```sh
# login using identity
az login --identity

# set account
az account set -s "Pay-As-You-Go"

# list containers
# make sure that --auth-mode is login
az storage container list --account-name demo12storage9553 --auth-mode login

# upload to demo2.
az storage blob upload --account-name demo12storage9553 --container-name demo1 --name hello-world.txt --file hello.txt --auth-mode login
```