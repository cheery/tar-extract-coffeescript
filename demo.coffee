fs = require('fs')

Tar = require('./tar')

main = () ->
    buffer = fs.readFileSync('demo.tar')
    buffer = toArrayBuffer(buffer)
    for record in Tar.extract(buffer)
        console.log record.path, record.buffer.byteLength

toArrayBuffer = (buffer) ->
    ab = new ArrayBuffer(buffer.length)
    view = new Uint8Array(ab)
    for i in [0...buffer.length]
        view[i] = buffer[i]
    return ab

main()
