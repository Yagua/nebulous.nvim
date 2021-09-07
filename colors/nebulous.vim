"Reload all modules
if exists("g:nebulous_loaded") | finish | endif

lua  << EOF

package.loaded['nebulous']        = nil
package.loaded['nebulous.utils']  = nil
package.loaded['nebulous.config'] = nil
package.loaded['nebulous.colors'] = nil
package.loaded['nebulous.scheme'] = nil
require("nebulous").setup()

EOF
