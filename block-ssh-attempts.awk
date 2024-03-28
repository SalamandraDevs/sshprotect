## Return a list of ips to be blocked

BEGIN{
    if (!times) times=4
}

/Failed password for root from/{
    ip=gensub(/.*from ([0-9.]+).*/,"\\1",1,$0)
    blocked[ip]++

}

/Failed password for invalid/{
    ip=gensub(/.*from ([0-9.]+).*/,"\\1",1,$0)
    blocked[ip]++
}

/Invalid user/{
    ip= gensub(/.*from ([0-9.]+).*/,"\\1",1,$0)
    blocked[ip]++
}

END {
    for (ip in blocked)
        if (blocked[ip]>times) print ip
}
