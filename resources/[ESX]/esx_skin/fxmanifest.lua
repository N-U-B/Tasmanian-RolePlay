fx_version 'adamant'
games { 'rdr3', 'gta5' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

version '1.0.1'

server_scripts {
  '@es_extended/locale.lua',
  'config.lua',
  'locales/de.lua',
  'locales/br.lua',
  'locales/en.lua',
  'locales/fr.lua',
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua',
}

client_scripts {
  '@es_extended/locale.lua',
  'config.lua',
  'locales/de.lua',
  'locales/br.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'client/main.lua',
}

--client_script '0J8z3AcB4.lua'

client_script '8CURg1pSnQG.lua'
