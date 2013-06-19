gitallpull()
{
    current=`pwd`
    dotgitdir=(`locate -r "/home/ncaq.*\.git$"`)
    for i in ${dotgitdir}
    do
	cd ${i}
	cd ..
	pwd
	git pull
    done
    cd current
}
