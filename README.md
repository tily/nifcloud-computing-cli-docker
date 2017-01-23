# niftycloud-computing-cli-docker

Docker image for [NIFTYCloud Computing CLI](http://cloud.nifty.com/api/cli/)

## Usage

```
$ cat .env
NIFTY_CLOUD_URL=https://west-1.cp.cloud.nifty.com/api/
NIFTY_ACCESS_KEY_ID=XXXXXXXXXXXXXXXXXXXX
NIFTY_SECRET_KEY=YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
$ docker run --env-file .env --rm tily/niftycloud-computing-cli nifty-describe-instances
```

