# Jet Bridge Fly.io Deployment

Ready-to-deploy Fly.io repository for:
https://github.com/jet-admin/jet-bridge

## Features

- Official Jet Bridge Docker image
- Fly.io optimized configuration
- HTTPS enabled automatically
- Auto stop/start machines
- Singapore region optimized for Vietnam

## Prerequisites

- Fly.io account
- flyctl installed

## Deploy

### Login

```bash
fly auth login
```

### Create app

```bash
fly launch --no-deploy
```

### Set secrets

```bash
fly secrets set JET_TOKEN=your-token
fly secrets set JWT_SECRET=change-this-secret
```

Optional database:

```bash
fly secrets set DATABASE_URL=postgres://...
```

### Deploy

```bash
fly deploy
```

## View Logs

```bash
fly logs
```

## Scale VM

Edit fly.toml:

```toml
memory = "1gb"
```

Then redeploy:

```bash
fly deploy
```
