{StringDecoder} = require 'string_decoder'
exports.TextDecoder = (encoding) ->
    decoder = new StringDecoder(encoding)
    return decode: (array) ->
        return decoder.write(new Buffer(array))
