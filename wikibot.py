import click 
from mylib.bot import scrape 

@click.command()
@click.option('--name',
                help='Webpage we want to scrape')

def cli(name):
    result = scrape(name)
    click.echo(click.style(f"{result}", fg='red', bg="white"))

if __name__ == '__main__':
    cli()
