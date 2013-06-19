gitallpull()
{
    current=`pwd`
    homepath=~
    dotgitdir=(`locate -r "${homepath}.*\.git$"`)
    for i in ${dotgitdir}
    do
	cd ${i}
	cd ..
	pwd
	git pull
    done
    cd current
}
