" Requirements verification
if !has('nvim-0.5')
  echoerr "Nvim-0.5 is required"
  finish
endif

if exists("g:nebulous_loaded") | finish | endif

"Reload all modules
lua  << EOF

package.loaded['nebulous']        = nil
package.loaded['nebulous.utils']  = nil
package.loaded['nebulous.config'] = nil
package.loaded['nebulous.colors'] = nil
package.loaded['nebulous.scheme'] = nil
require("nebulous").setup()

EOF
