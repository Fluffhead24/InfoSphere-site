# GitHub Publishing

This repo is intended to be public.

## What Belongs Here

- Public website/about page.
- Privacy summary.
- X data-use page for developer-console review.
- Static CSS.

## What Must Stay Out

- app source code
- OAuth client IDs
- client secrets
- tokens
- passwords
- local account credentials
- private user data

## Push

After creating an empty public GitHub repo:

```bash
git remote add origin git@github.com:OWNER/infosphere-site.git
git push -u origin main
```

## Enable Pages

In GitHub:

1. Open Settings.
2. Open Pages.
3. Choose `Deploy from a branch`.
4. Choose branch `main`.
5. Choose folder `/root`.

Expected URLs:

- Website/About: `https://OWNER.github.io/infosphere-site/`
- Privacy: `https://OWNER.github.io/infosphere-site/privacy.html`
- X data use: `https://OWNER.github.io/infosphere-site/x-data-use.html`
