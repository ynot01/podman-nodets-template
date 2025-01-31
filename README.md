# podman-nodets-template

A template for managing a NodeTS server with podman

## Testing & Deploying

`git clone https://github.com/ynot01/podman-nodets-template.git` [git here](https://git-scm.com/)

`cd podman-nodets-template`

#

`./Test.ps1` is available for testing the container

`./Lint.ps1` is available for fixing your TS code

Note that `.ps1` files are Powershell files, so Powershell is required to run them. It is recommended that you make your own scripts with whatever console you prefer.

#

To run code without virtualization, run `npx tsx ./src/index.ts`

To run in a container, run:

1. `podman compose up --build`

or

1. `podman build . --tag <NAME>` with `<NAME>` being your desired image tag
2. `podman run <NAME>`

After testing, you may want to remove the container(s) and image(s) afterwards with `podman rm` and `podman rmi`

Containers and images can be found by running `podman container ls -a` and `podman images`

## Requirements

`podman` is required, `node` is recommended for development but not required for deployment

Node can be installed at https://nodejs.org/

Podman can be installed at https://podman.io/

## Stuff included

https://prettier.io/ - Prettier is added via npm and minimally configured at `./.prettierrc`

https://eslint.org/ - ESLint is added via npm and minimally configured at `./eslint.config.mjs`

https://tsx.is/ - TypeScript Execute is added via npm

