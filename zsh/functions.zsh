PROJECTS_DIR=~/Projects

vf()      { vim -p `find -name "$*"` }
cme()     { sudo chown $USER:$USER -R $@ }
cdf()     { cd `find -type d -name "$*"` }
f()       { find -name "$*" 2>/dev/null }
rp()      { find . -type f -not -path '*/\.*' -print0 | xargs -0 sed -i "s/${1}/${2}/g" }
agdb()    { gdb $@ -ex "b $1.asm:1" -ex "r" -x "~/.gdbinit.asm" }

exrpm()   { rpm2cpio "$*" | cpio -idmv }

tftp_start() { sudo /etc/init.d/xinetd restart }

retry() {
    "$@"
    while [ $? -ne 0 ]; do
        sleep .2
        "$@"
    done
}

gentags() {
    if [[ $1 == "c" ]]; then
          find . -type f -name "*.[chCH]" -exec ctags-exuberant --c-kinds=cdefg+lmnpstuvx --extra=f --append {} +
    elif [[ $1 == "cpp" ]]; then
          find . -type f -name \*.h -print -o -name \*.cpp -exec ctags-exuberant --c++-kinds=cdefg+lmnpstuvx --extra=f --append {} +
    fi
}

unjarall() {
    for jar in `ls`; do
        extension=`echo $jar | cut -d'.' -f2`
        if [ "$extension" = "jar" ]; then
            new_dir=`echo $jar | cut -d'.' -f1`
            mkdir $new_dir
            unzip $jar -d $new_dir
        fi
    done
}

join() {
    local IFS="$1"; shift; echo "$*";
}
