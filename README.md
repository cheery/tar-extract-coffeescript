# Tar Extract written in CoffeeScript

Extracts tar-archive in-memory. Reads only the values that were relevant for my usecase. I used it to deploy web apps in browser.

## How to use

    records = Tar.extract(arraybuffer)
    for record in records
        console.log record.path, record.type, record.buffer


