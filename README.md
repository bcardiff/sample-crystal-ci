# sample_app

Sample fake app with:

* Shard dependency
* In development environment:
  * database service using docker
  * crystal locally installed
* In CircleCI 2.0 environment:
  * database service using docker
  * tagged crystal docker image for ci
  * nightly crystal docker image for cron builds for breaking changes notification even if there is no activity in the repo.
  * take advantage of CircleCI cache (docker layers and specific folders) to decrease build times

## Development

```
$ docker-compose up -d
$ shards
$ crystal spec
```

## Contributors

- [bcardiff](https://github.com/bcardiff) Brian J. Cardiff - creator, maintainer
