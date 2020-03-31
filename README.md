# Gotify Notification Action

This action allows you to send push notifications via [Gotify](https://gotify.net/).
Gotify is an open-source push notification server.

## Inputs

### `notification_title`

**Required** The title of the Gotify notification.

### `notification_message`

**Required** The message of the Gotify notification. Default `""`.

### `notification_priority`

**Required** The priority of the Gotify notification. Default `4`.

## Outputs

This action has no outputs.

## Secrets

### `gotify_api_base`

**Required** The HTTP endpoint where the Gotify API is exposed.

### `gotify_app_token`

**Required** The token of the Gotify application.

## Usage

Create a file `.github/workflows/main.yml` in your repository with the following contents.

```yaml
name: Gotify Notification
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Gotify Notification
      uses: eikendev/action-gotify@master
      env:
      	gotify_api_base: ${{ secrets.gotify_api_base }}
        gotify_app_token: ${{ secrets.gotify_app_token }}
        notification_title: 'Build Complete'
        notification_message: 'Your build was completed.'
```
