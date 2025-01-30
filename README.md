# Staticjinja Template

Basic project template that uses the [Staticjinja](https://github.com/staticjinja/staticjinja)
to build the HTML files. Of course, it uses the [Jinja](https://jinja.palletsprojects.com/en/stable/)
template languange for that, so you can create components, loops, if-statements
and all.

The focus of this template is to allow the developers write small applications
fast. It's already shipped with [TailwindCSS](https://tailwindcss.com/),
[Alpine.js](https://alpinejs.dev/) and [HTMX](https://htmx.org/) to make it even
faster to code your app.

Check the [Staticjinja Docs](https://staticjinja.readthedocs.io/en/stable/) to
learn how to use this static HTML builder, it's pretty neat.

> [!NOTE]
> Since this template needs Python to run the local server, it can be cross
> platform. But **this project was meant to be used in UNIX system's**, the
> `Makefile` may not work as you expect if you're on Windows.


## How to use it

Ensure that you have all the dependencies installed:

+ `python3`
+ `make`

Now you need to clone this repository and enter it:

```sh
git clone https://github.com/kevinmarquesp/staticjinja-template ./project-name
cd ./project-name
```

Now you can just run `make build` to generate the HTML pages in the `/dist`
directory. Open the `/dist/index.html` file in your browser to check if
everything's okay.

Alternatively, you can run **`make dev`** to open a local server in the `:3000`
port. It should be hot reloaded after some file inside the `/templates` is
changed.

> [!TIP]
> There's an error in the Staticjinja's watch mode. **If you make a syntax error
> in the template files, the process will break and will not build the site on
> every change**. You need to cancel the development process and start it again
> with `make dev` to get it working again.
