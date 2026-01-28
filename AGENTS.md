# Repository Guidelines

## Project Structure & Module Organization
- `Dockerfile` defines the base image and installed packages.
- Shell dotfiles (`.bashrc`, `.zshrc`, `.zsh`, `.oh-my-zsh`, `.oh-my-posh`, `.zsh_aliases`) are copied into `/root` and `/home/joe`.
- `README.md` documents usage; `VERSION.md` tracks the published image tags.
- CI/CD config is in `.drone.yml` (build/test/publish).

## Build, Test, and Development Commands
- Build locally:
  ```sh
  docker build -t kernel528/alpine:3.23.3 -f Dockerfile .
  ```
- Run a quick smoke test:
  ```sh
  docker run -it --rm --name alpine3 kernel528/alpine:3.23.3 bash
  ```

## Coding Style & Naming Conventions
- Dockerfile uses shell `&&` chaining; keep package list sorted and minimal.
- Prefer explicit version tags in docs (avoid `latest` in examples).
- Keep filenames lowercase and consistent with existing dotfiles.

## Testing Guidelines
- No automated test suite; validate with a container run and basic shell tools.
- When changing shell config files, confirm the container starts with the expected shell (`/bin/zsh`) and that `sudo` works for the default user.

## Commit & Pull Request Guidelines
- Commit messages are concise and descriptive (e.g., “Updated to alpine 3.23.3 release.”).
- Branch flow: create a full-version branch (e.g., `3.23.3`), merge to `3.23`, then merge to `main` and tag the release.
- PRs should update `VERSION.md`, `README.md` examples, and `.drone.yml` tags as needed.

## Security & Configuration Tips
- If changing packages, ensure required runtime tools remain present (e.g., `ca-certificates`, `curl`, `su-exec`).
- Keep base image updates aligned with upstream Alpine releases.
