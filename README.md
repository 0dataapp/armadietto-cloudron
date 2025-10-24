# armadietto-oneclick

[Armadietto](https://github.com/remotestorage/armadietto/) is a self-hostable [remoteStorage](https://remotestorage.io) server.
  
This project packages it for [one-click](https://easyindie.app) deploys on self-hosted panels using the 'monolithic' version for simplicity as it requires no additional services; although it refers to an older version of the spec (`draft-dejong-remotestorage-01`), this shouldn't be an issue with most apps.

These panels maintain their own 'app catalogs' for one-click installs; until this is included there, it will require more clicks to setup. Below are instructions for each panel. More info in [oneclick-proof](https://github.com/0dataapp/oneclick-proof).

## [Cloudron](https://cloudron.io)

First clone the project locally:

```
git clone https://github.com/0dataapp/armadietto-oneclick
cd armadietto-oneclick
```

Then from the project directory, run the `install` command via the [Cloudron CLI](https://docs.cloudron.io/packaging/cli/):

```
cloudron install --image remotestorage/armadietto-oneclick:cloudron --location armadietto
```

Updates are also done from the project directory:

```
cloudron update --image remotestorage/armadietto-oneclick:cloudron --app armadietto
```

Once you sign up for an account, you may want disable signups by setting `allow_signup` to `false` in `/app/data/conf.json` and restarting the app.

## [Caprover](https://caprover.com)

1. navigate to "Apps" → "Create A New App" → "One-Click Apps/Databases"
, then search for `>> TEMPLATE <<` or scroll to bottom.
2. select the `>> TEMPLATE <<` app and paste the configuration from `caprover/compose.yml`.
3. name your app as `armadietto` or something else, and then deploy.

To update an existing app: navigate to "Deployment", enter `remotestorage/armadietto-oneclick:latest` into "Deploy via ImageName", then click "Deploy". It may take some time after 'finishing' so give it a minute.

Once you sign up for an account, you may want disable signups by navigating to "App Config" and set `ALLOW_SIGNUP` to `false`.

## [Coolify](https://coolify.io)

1. navigate to "Projects" → choose/create a project… → "Resources" → "+ New" → "Applications" → "Git Based" → "Public Repository"
2. configure as follows:
	- Repository URL:
		
		```
		https://github.com/0dataapp/armadietto-oneclick/tree/master
		```
	
	- Build Pack:
		
		```
		Docker Compose
		```
	
	- Docker Compose Location:
		
		```
		/coolify/compose.yml
		```
3. select "Continue" and then, on the following "Configuration" page, click "Deploy".
4. setup a domain under "Configuration" → "General" → "Domains" by entering something like `https://armadietto.[your root domain]` and clicking "Save", or make a random one by clicking "Generate Domain"; in case of [SSL issues](https://coolify.io/docs/troubleshoot/dns-and-domains/lets-encrypt-not-working) click "Redeploy".

Update by clicking "Redeploy" or "Advanced" → "Force deploy (without cache)" to pull from the Git repository.

Once you sign up for an account, you may want disable signups by navigating to "Environment Variables" and set `ALLOW_SIGNUP` to `false`.

You may also want to enable "Force HTTPS by redirecting all HTTP traffic to HTTPS".

## [Yunohost](https://yunohost.org)

Although not part of this package, there was a [similar attempt for Yunohost](https://community.remotestorage.io/t/armadietto-on-yunohost-front-update-proposal/747) which is currently available in the [YunoHost app store](https://apps.yunohost.org/app/armadietto).

Once you sign up for an account, you may want disable signups by navigating to "Applications" → "Armadietto" → "Settings" and set "Allow signups?" to `No`.

## Questions

Feel free to reach out on [Mastodon](https://rosano.ca/mastodon) or [Bluesky](https://rosano.ca/bluesky).
