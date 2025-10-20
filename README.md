# armadietto-cloudron

[Armadietto](https://github.com/remotestorage/armadietto/) is a self-hostable [remoteStorage](https://remotestorage.io) server.
  
This project packages it for [Cloudron](https://www.cloudron.io), which makes it easy to install with one-click; there was a similar attempt for [Yunohost](https://community.remotestorage.io/t/armadietto-on-yunohost-front-update-proposal/747).

It currently refers to an older version of the spec (draft-dejong-remotestorage-01), but this shouldn't be an issue with most apps. See [discussion](https://community.remotestorage.io/t/armadietto-on-cloudron/915) for more context.

## Installation

If you're comfortable with Docker, follow the [packaging tutorial](https://docs.cloudron.io/packaging/tutorial/); something like:

```
git clone https://github.com/0dataapp/armadietto-cloudron
cd armadietto-cloudron

docker build -t username/armadietto-cloudron:0.0.1 .
docker push username/armadietto-cloudron:0.0.1
```

Or [use Cloudron itself to build and as a registry](https://rosano.ca/log/01hs9tx1ytkp3kb0v03pdpm08a).

## Questions

Feel free to reach out on [Mastodon](https://rosano.ca/mastodon) or [Bluesky](https://rosano.ca/bluesky).
