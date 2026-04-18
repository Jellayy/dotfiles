if [[ "$(uname -s)" == "Darwin" ]]; then
    # Homebrew exports
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ "$(uname -s)" == "Linux" ]]; then
    break
fi
