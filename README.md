This is an example app for demonstating how [stew](https://github.com/vti/stew) works. This app is a simple Plack
application.

## Clone the stew repository

    git clone https://github.com/vti/stew-example-repo

This repository has Debian 9 binary packages. So if you are on Debian 9 you can install much faster, but don't worry,
you can compile for any platform too.

See this repo's [README](https://github.com/vti/stew-example-repo/blob/master/README.md) too.

## Developer workflow

1. Bootstrap dependencies

This command will compile packages into local `build/` directory. You can cache the `build/.cache/dist` directory for
the next time.

    bin/bootstrap --repo /path/to/stew-example-repo --from-source

Or if you happen to run Debian 9, you can just bootstrap from binaries, i have precompiled them for you:

    bin/bootstrap --repo /path/to/stew-example-repo --os linux-debian-9

After bootstrap you can do some cleanup like removing man pages and other documentation.

2. Pack distribution

This packed distribution will contain application, perl, some system libraries and CPAN modules.

    bin/pack

    # For example

## Deployment workflow

1. Copy distribution to server
2. Unpack distribution

    tar xzf

3. Start application

    bin/env start

No need to install anything!
