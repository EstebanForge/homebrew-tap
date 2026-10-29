default:
    @just --list

# Lint formula Ruby syntax using Homebrew portable ruby
check:
    #!/usr/bin/env bash
    set -euo pipefail
    for f in Formula/*.rb; do
        brew ruby -- -c "$f"
    done

# Audit formulae and casks in this tap
audit:
    brew audit --tap=EstebanForge/tap || true

# Local CI verification gate
ci: check
