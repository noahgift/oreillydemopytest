#!/usr/bin/env python
import click
from lib.stuff import message

#var=

@click.command()
def hello():
    """This is a hello world cli:
    
    To run it type in ./hello-click.py
    """
    click.echo(message())

if __name__ == '__main__':
    hello()