Main website for the Trillek project, hosted at [trillek.org][]. Initial layouts built by [marciiF][] which are being rebuilt here using SASS and other such technologies.

## Dependencies

This site uses [Jekyll][], [SASS][], [Compass][], [Normalize.css][] and [SUSY][] for styling. You can fetch these ruby gems with `bundle install`.

## Building

You can generate the site into the `build` directory by running `make`. You can start the servers to watch for changes and rebuild when required by running the following commands in separate processes.

```bash
# Terminal 1
make compass-server

# Terminal 2
make jekyll-server
```

Now you can work within the `source` directory without worrying about rebuilding. The site will be rebuilt automatically and hosted at http://localhost:4000/ for you.

## Deploying

You can execute `make deploy` to send the site to the server. This command will simply execute the local `deploy.sh` file that you have to create; this allows you to select how and where you deploy to. The build tools will be executed when you deploy and it's results stored within the `build` directory. Your script should simply upload it's contents.

[trillek.org]: http://trillek.org/
[marciiF]: https://cssu.in/
[Jekyll]: http://jekyllrb.com/
[SASS]: http://sass-lang.com/
[Compass]: http://compass-style.org/
[Normalize.css]: http://necolas.github.io/normalize.css/
[SUSY]: http://susy.oddbird.net/
