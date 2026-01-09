set shell := ["bash", "-cu"]

# Format proto files
format:
    buf format -w

# Lint proto files
lint:
    buf lint

# Check for breaking changes
break:
    buf breaking --against 'https://github.com/Yvo237/Anix-contract.git#branch=main'

# Generate Go code from proto files
go_gen:
    #!/usr/bin/env bash
    set -euo pipefail

    
    buf generate

# Aliases
alias f := format
alias l := lint
alias b := break
alias g := go_gen