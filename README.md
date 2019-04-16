# nifcloud-computing-cli-docker

Docker image for [NIFCLOUD Computing CLI](http://cloud.nifty.com/api/cli/)

## Usage

```
$ cat .env
NIFTY_CLOUD_URL=https://jp-east-1.computing.api.nifcloud.com/api/
NIFTY_ACCESS_KEY_ID=XXXXXXXXXXXXXXXXXXXX
NIFTY_SECRET_KEY=YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
$ docker run --env-file .env --rm tily/nifcloud-computing-cli:8.0.0 nifty-describe-instances
```

