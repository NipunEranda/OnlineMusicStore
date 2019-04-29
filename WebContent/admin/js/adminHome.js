function linkPush(link){

    if(link == 'album')
        location.href='components/albumConfig.jsp';
    else if(link == 'genre')
        location.href='components/genreConfig.jsp';
    else if(link == 'song')
        location.href='components/songConfig.jsp';
    else if(link == 'user')
        location.href='components/userConfig.jsp';
    else if(link == 'sales')
        location.href='components/sales.jsp';
    else if(link == 'stat')
        location.href='components/statistics.jsp';

}
