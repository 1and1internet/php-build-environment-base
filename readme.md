# PHP Build Environment Base

This image contains a light image based on ubuntu 18.04 LTS. It also has the [Ondřej Surý](https://launchpad.net/~ondrej/+archive/ubuntu/php) PPA added to allow installation of the latest versions of PHP 7.x

It also includes common tools used to build and run PHP applications:

1. Composer
1. curl
1. Git
1. jq (Command line JSON parser)
1. MySQL Client Tools
1. Unzip

It also includes a couple of text editors for convenience:

1. Nano
1. Vim

The image is rebuilt nightly, as well as when the upstream images ([Ubuntu](https://hub.docker.com/_/ubuntu/) and [Composer](https://hub.docker.com/_/composer/)) push a new version. So this image should usually contain the latest fixes and updates.