locate-current-dir()
{
    locate --ignore-case --regex "^$(pwd).*$@.*"
}

locate-current-dir-null()
{
    locate --null --ignore-case --regex "^$(pwd).*$@.*"
}
