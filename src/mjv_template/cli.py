import typer

app = typer.Typer(no_args_is_help=True, context_settings={"help_option_names": ["-h", "--help"]})


@app.command()
def run(field: str = typer.Argument(..., help="Echo this field!")):
    """Echo the field back to the user."""
    typer.echo(field)


if __name__ == "__main__":
    app()
