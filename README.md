# RsvpUmbrella

This is the repo that goes along with the Pluralsight course Getting Started With Phoenix.

There is a branch for each clip that modifies code.  For example, branch m2-02-ecto-installed is the state of the project _after_ the clip.  This is **not** intended to replace doing the exercises, but should instead be used in case something goes wrong with your code.  You can pull down a particular branch and start working from there. If, for example, you couldn't get the code working in module 2, clip 3, you could pull the m2-03 branch down and either see where you went wrong, or use that as the starting point going forward.

## Running Postgres in Docker

The easiest way to run Postgres without installing it on the local machine is inside a Docker container. Once you have Docker installed, to start Postgres, run

```
docker-compose up -d
```

If your Docker host is not on `localhost`, adjust the connection details in `apps/rsvp/config`
