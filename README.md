# docker-coredns

[![github-actions](https://github.com/theohbrothers/docker-coredns/actions/workflows/ci-master-pr.yml/badge.svg?branch=master)](https://github.com/theohbrothers/docker-coredns/actions/workflows/ci-master-pr.yml)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-coredns?style=flat-square)](https://github.com/theohbrothers/docker-coredns/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-coredns/latest)](https://hub.docker.com/r/theohbrothers/docker-coredns)

Dockerized [coredns](https://github.com/coredns/coredns).

Whereas [official coredns docker image](https://hub.docker.com/r/coredns/coredns) is based on a scratch image, this image based on Alpine. This slight improvement enables shell scripts to be used as the entrypoint, to help to dynamically generate `coredns` config files, and help with debugging. The `coredns` binaries are sourced from their official images.

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
| `:1.12.2`, `:latest` | [View](variants/1.12.2) |
| `:1.11.4` | [View](variants/1.11.4) |
| `:1.10.1` | [View](variants/1.10.1) |
| `:1.9.4` | [View](variants/1.9.4) |
| `:1.8.7` | [View](variants/1.8.7) |
| `:1.7.1` | [View](variants/1.7.1) |
| `:1.6.9` | [View](variants/1.6.9) |
| `:1.5.2` | [View](variants/1.5.2) |
| `:1.4.0` | [View](variants/1.4.0) |
| `:1.3.1` | [View](variants/1.3.1) |
| `:1.2.6` | [View](variants/1.2.6) |
| `:1.1.4` | [View](variants/1.1.4) |
| `:1.0.6` | [View](variants/1.0.6) |
| `:0.9.10` | [View](variants/0.9.10) |

All images contain:

- `inotify-tools` which is useful for runtime dynamic configuration

## Development

Requires Windows `powershell` or [`pwsh`](https://github.com/PowerShell/PowerShell).

```powershell
# Install Generate-DockerImageVariants module: https://github.com/theohbrothers/Generate-DockerImageVariants
Install-Module -Name Generate-DockerImageVariants -Repository PSGallery -Scope CurrentUser -Force -Verbose

# Edit ./generate templates

# Generate the variants
Generate-DockerImageVariants .
```

### Variant versions

[versions.json](generate/definitions/versions.json) contains a list of [Semver](https://semver.org/) versions, one per line.

To update versions in `versions.json`:

```powershell
./Update-Versions.ps1
```

To update versions in `versions.json`, and open a PR for each changed version, and merge successful PRs one after another (to prevent merge conflicts), and finally create a tagged release and close milestone:

```powershell
$env:GITHUB_TOKEN = 'xxx'
./Update-Versions.ps1 -PR -AutoMergeQueue -AutoRelease
```

To perform a dry run, use `-WhatIf`.
