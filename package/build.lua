local json = require 'json-beautify'

local VERSION = "0.20.4"

local package = require 'package.package'

package.version = VERSION
package.__metadata = {
    id = "3a15b5a7-be12-47e3-8445-88ee3eabc8b2",
    publisherDisplayName = "sumneko",
    publisherId = "fb626675-24cf-4881-8c13-b465f29bec2f",
}

local encodeOption = {
    newline = '\r\n',
    indent  = '    ',
}
print('生成 package.json')
io.save(ROOT / 'package.json', json.beautify(package, encodeOption) .. '\r\n')

print('生成 package.nls.json')
io.save(ROOT / 'package.nls.json', json.beautify(require 'package.nls', encodeOption))

print('生成 package.nls.zh-cn.json')
io.save(ROOT / 'package.nls.zh-cn.json', json.beautify(require 'package.nls-zh-cn', encodeOption))