# Configure SSH [runner - remote ]

### On Runner
```
[This will generate Private and Public keys]
> ssh-keygen -t ed25519 -C "comment"

[Saved at]
> ~/.ssh/

[copy the public key and share it with remote server]
> ssh-copy-id username@remote_host_ip

[Authentication will be reqiuired for the key copy]
[Once done you will be able to login from runner to remote server without a password prompt]

```

# Runner Configuration

```
[ Download the binary for your system ]
> sudo curl -L --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

[ Give it permission to execute ]
> sudo chmod +x /usr/local/bin/gitlab-runner

[ Create a GitLab Runner user ]
> sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

[ Install and run as a service]
> sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
> sudo gitlab-runner start

[ Register the runner ]
> sudo gitlab-runner register

```