#!/bin/bash
#best use ./gen_lang_template >> ../data/locales/XX.lua
#it wont run if you type "sh gen_lang_template", type "./gen_lang_template.sh" instead
#based on gen_needed_translations.sh
echo '-- generated by ./tools/gen_lang_template.sh'
echo 'locale ={'
echo '  name="",'
echo '  languageName="",'
echo '  translation = {'
cat <(find -L ../ \( -name "*.lua" -o -name "*.otui" \) -exec grep -oE "tr\\('(\\\\'|[^'])*'" {} \;) \
    <(find -L ../ \( -name "*.lua" -o -name "*.otui" \) -exec grep -oE "tr\\(\"(\\\\\"|[^\"])*\"" {} \;) \
    | sort | uniq | sed "s/^tr(.\(.*\).$/ [\"\1\"] = \"\",/"
echo '  }'
echo '}'
echo 'modules.client_locales.installLocale(locale)'
