"Reload all modules
lua  << EOF

package.loaded['nebulous'] = nil
package.loaded['nebulous.colors'] = nil
package.loaded['nebulous.scheme'] = nil
package.loaded['nebulous.utils'] = nil

EOF
