# Odoo Proxy

[![](https://images.microbadger.com/badges/version/tecnativa/odoo-proxy:latest.svg)](https://microbadger.com/images/tecnativa/odoo-proxy:latest "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/tecnativa/odoo-proxy:latest.svg)](https://microbadger.com/images/tecnativa/odoo-proxy:latest "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/tecnativa/odoo-proxy:latest.svg)](https://microbadger.com/images/tecnativa/odoo-proxy:latest "Get your own commit badge on microbadger.com")
[![](https://images.microbadger.com/badges/license/tecnativa/odoo-proxy.svg)](https://microbadger.com/images/tecnativa/odoo-proxy "Get your own license badge on microbadger.com")

## What?

This is a plug & play proxy for using with [Odoo][] in [worker mode][].

## Why?

Because Odoo needs you to redirect requests to URLs starting with
`/longpolling` to its longpolling port (`8072` by default) when you configure
it in workers mode.

## How?

We use the official [Alpine][]-based [HAProxy][] image with a small
configuration file.

## Usage

### Available environment variables

#### `$ODOO`

Defines where the Odoo backend is listening (default: `odoo:8069`).

#### `$LONGPOLLING`

Defines where Odoo's longpolling port is listening (default: `odoo:8072`).

## Useful notes

If you use this, you should enable Odoo's [proxy mode][].

If you need SSL, then this is not for you. Better go for
[`haproxy-letsencrypt`][], which includes an Odoo mode.

## Feedback

Please send any feedback (issues, questions) to the [issue tracker][].

[Alpine]: https://alpinelinux.org/
[HAProxy]: http://www.haproxy.org/
[`haproxy-letsencrypt`]: https://hub.docker.com/r/tecnativa/haproxy-letsencrypt/
[issue tracker]: https://github.com/Tecnativa/docker-tcp-proxy/issues
[Odoo]: https://www.odoo.com/
[proxy mode]: https://www.odoo.com/documentation/10.0/reference/cmdline.html#cmdoption-odoo.py--proxy-mode
[worker mode]: https://www.odoo.com/documentation/10.0/setup/deploy.html#worker-number-calculation
