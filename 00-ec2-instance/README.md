# EC2

## Connect with ec2

put `sshkey` file to `~/.ssh` folder and change it permissions

```sh
chmod 0700 ~/.ssh/sshkey
```

Then connect to ec2 using ssh

```sh
ssh ssh -i ~/.ssh/sshkey ec2-user@52.66.212.163
```

52.66.212.163 this is public ip
