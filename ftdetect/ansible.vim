au BufRead,BufNewFile */playbooks/*.yml setlocal ft=yaml.ansible
au BufRead,BufNewFile */playbooks/*.yaml setlocal ft=yaml.ansible
au BufRead,BufNewFile */roles/*/tasks/*.yml setlocal ft=yaml.ansible
au BufRead,BufNewFile */roles/*/tasks/*.yaml setlocal ft=yaml.ansible
au BufRead,BufNewFile */roles/*/handlers/*.yml setlocal ft=yaml.ansible
au BufRead,BufNewFile */roles/*/handlers/*.yaml setlocal ft=yaml.ansible

au BufRead,BufNewFile *.yml.j2 setlocal ft=yaml
au BufRead,BufNewFile *.yaml.j2 setlocal ft=yaml
