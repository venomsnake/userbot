## Requirements
- GitHub Account
- One Public Repo
- One Private Repo

## Fork Public Repo
Go to https://github.com/lightyagami/userbot and fork the repo.
You're going to deploy your bot in this repository.
Change the contents of `.github/workflows/deploy.yml` as per your needs. If you want to use Ultroid then keep `ultroid.sh` or else replace with `tguserbot.sh`.

## Create a Private Repo
Forked repo can't be switched to private, so you have to create this on your own. This repo is supposed to contain
- `.env` (for Ultroid)
or
- `config.ini` (for TG-Userbot)

Why private? Cause you'll keep your personal data here. You would never like to share your APIs or Sessions with others, right? BTW, I'm not going write about what will be in those files. Check their respective documentation to learn more. But I can give a suggestion, you should use Railway to host a Redis server.

## Add Secrets in Public Repo
As your forked repo is going to stay public or you won't get unlimited Action time you've to add some secrets. So that you can access the data of your private repo. Go to https://{your_forked_repo}/settings/secrets/actions to add secrets.

You've to add these following secrets -

- `GH_NAME` : Your GitHub username.
- `GH_MAIL` : Mail that you use to sign into GitHub.
- `CREDS` : Link to your private repo but without (https://) eg. github.com/{username}/{private repo}.
- `GH_TOKEN` : Go to https://github.com/settings/tokens to generate a token. Tick repo, workflow and user and hit generate. Copy the token and add it to the secrets.
- `GH_REPO` : Your current repo. `username/reponame` e.g. lightyagami/userbot
- `TZ` : Timezone. Findout your timezone and put it in your secret. e.g. Asia/Delhi.

## Deploy Your Bot
Our work is done. Now run a workflow and check the logs. If everything goes well your bot will restart in every six hours. You can check loop.txt to know when your bot was restarted.
