oo()
{
    local current=`pwd`
    locate --regex "${current}.*$@.*"
}
