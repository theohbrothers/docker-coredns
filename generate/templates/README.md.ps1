@"
# docker-coredns

[![github-actions](https://github.com/theohbrothers/docker-coredns/workflows/ci-master-pr/badge.svg)](https://github.com/theohbrothers/docker-coredns/actions)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-coredns?style=flat-square)](https://github.com/theohbrothers/docker-coredns/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-coredns/latest)](https://hub.docker.com/r/theohbrothers/docker-coredns)

Dockerized [coredns](https://github.com/coredns/coredns) based on alpine.

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
$(
($VARIANTS | % {
    if ( $_['tag_as_latest'] ) {
@"
| ``:$( $_['tag'] )``, ``:latest`` | [View](variants/$( $_['tag'] )) |

"@
    }else {
@"
| ``:$( $_['tag'] )`` | [View](variants/$( $_['tag'] )) |

"@
    }
}) -join ''
)

"@

@'
## Development

Requires Windows `powershell` or [`pwsh`](https://github.com/PowerShell/PowerShell).

```powershell
# Install Generate-DockerImageVariants module: https://github.com/theohbrothers/Generate-DockerImageVariants
Install-Module -Name Generate-DockerImageVariants -Repository PSGallery -Scope CurrentUser -Force -Verbose

# Edit ./generate templates

# Generate the variants
Generate-DockerImageVariants .
```

'@
