# README

blutter-docker provides a minimal Dockerfile for blutter.

## Quickstart

We provide containers so you can use right away as follows (built daily):

	$ docker run --rm -v $(pwd):/t ghcr.io/alterakey/blutter indir outdir

## Building

If you prefer to build for some reason, you can build as follows:

	$ git clone https://github.com/worawit/blutter.git
	$ docker build -t blutter https://github.com/alterakey/blutter-docker.git

You can use any upstream commit as you wish.
