#!/bin/bash
F="/home/theland/monster_system/launchpad.html"
cat << 'IN' > $F
<!DOCTYPE html><html lang="en"><head><style>
body{margin:0;background:#050505;color:#fff;font-family:sans-serif;overflow-x:hidden;}
.h{height:10vh;display:flex;align-items:center;padding-left:4%;font-size:4.5vh;font-weight:900;color:#e50914;}
.g{display:grid;grid-template-columns:repeat(6,1fr);gap:12px;padding:0 4% 40px;}
.b{position:relative;background:#141414;border-radius:6px;overflow:hidden;transition:0.3s;aspect-ratio:2/3;text-decoration:none;color:#fff;display:block;}
.b:hover{transform:scale(1.08);z-index:10;box-shadow:0 0 25px rgba(229,9,20,.6);}
.b img{width:100%;height:100%;object-fit:cover;opacity:.75;}
.b div{position:absolute;bottom:0;left:0;right:0;padding:12px 5px;background:linear-gradient(transparent,rgba(0,0,0,.95));font-size:1.4vh;text-align:center;font-weight:bold;text-transform:uppercase;}
.c{padding:20px 4% 5px;font-size:2vh;font-weight:bold;color:#999;text-transform:uppercase;}
</style></head><body><div class="h">MONSTER LAW TV</div><div class="c">Legal & Media Master Suite</div><div class="g" id="z"></div><script>
const z=document.getElementById("z");
const add=(n,u,i)=>{z.innerHTML+='<a href="'+u+'" class="b"><img src="'+i+'"><div>'+n+'</div></a>';};
add("NCBE PREP","https://ncbex.org","https://images.unsplash.com/photo-1589829545856-d10d557cf95f?w=400");
add("WESTLAW","https://legal.thomsonreuters.com","https://images.unsplash.com/photo-1505664194779-8beaceb93744?w=400");
add("LEXIS NEXIS","https://lexisnexis.com","https://images.unsplash.com/photo-1521587760476-6c12a4b040da?w=400");
add("SCHOLAR","https://scholar.google.com","https://images.unsplash.com/photo-1450101499163-c8848c66ca85?w=400");
add("OYEZ","https://oyez.org","https://images.unsplash.com/photo-1423592707957-3b212afa6733?w=400");
add("RECAP","https://courtlistener.com/recap/","https://images.unsplash.com/photo-1528747045269-390fe33c19f2?w=400");
add("ROBART AI","https://chatgpt.com","https://images.unsplash.com/photo-1677442136019-21780ecad995?w=400");
add("CORNELL LAW","https://law.cornell.edu","https://images.unsplash.com/photo-1589994160839-163cd2b5fa05?w=400");
add("ABA JOURNAL","https://abajournal.com","https://images.unsplash.com/photo-1453948574633-3331567f96da?w=400");
add("FINDLAW","https://findlaw.com","https://images.unsplash.com/photo-1544640808-32ca72ac7f37?w=400");
add("STREAMEAST","https://streameast.to","https://images.unsplash.com/photo-1504450758481-7338eba7524a?w=400");
add("LOOK MOVIE","https://lookmovie2.to","https://images.unsplash.com/photo-1485846234645-a62644f84728?w=400");
add("DADDY LIVE","https://daddylive.sx","https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?w=400");
add("YOUTUBE","https://youtube.com","https://images.unsplash.com/photo-1521302273984-db72407f9c2b?w=400");
add("SPORTSURGE","https://v2.sportsurge.net","https://images.unsplash.com/photo-1540747913346-19e32dc3e97e?w=400");
add("METHSTREAMS","https://methstreams.com","https://images.unsplash.com/photo-1508098682722-e99c43a406b2?w=400");
add("VIPROW","https://viprow.nu","https://images.unsplash.com/photo-1518091044134-26d8e5d6bd01?w=400");
add("SOAP2DAY","https://soap2day.to","https://images.unsplash.com/photo-1616530940355-351fabd9524b?w=400");
add("CINEZONE","https://cinezone.to","https://images.unsplash.com/photo-1536440136628-849c177e76a1?w=400");
add("123MOVIES","https://123movies.com","https://images.unsplash.com/photo-1594909122845-11baa439b7bf?w=400");
add("PLUTO TV","https://pluto.tv","https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=400");
add("BUFFSTREAMS","https://buffstreams.ai","https://images.unsplash.com/photo-1574629810360-7efbbe195018?w=400");
add("SPOTIFY","https://spotify.com","https://images.unsplash.com/photo-1614680376593-902f74cf0d41?w=400");
add("WEATHER","https://weather.com","https://images.unsplash.com/photo-1592210454359-9043f067919b?w=400");
add("CONGRESS.GOV","https://congress.gov","https://images.unsplash.com/photo-1523995442408-724393608249?w=400");
add("LAW.COM","https://law.com","https://images.unsplash.com/photo-1555372840-c32439742460?w=400");
add("COURTLISTENER","https://courtlistener.com","https://images.unsplash.com/photo-1507679799987-c73779587ccf?w=400");
add("GEMINI AI","https://gemini.google.com","https://images.unsplash.com/photo-1675271591211-126ad94e495d?w=400");
add("CASETEXT","https://casetext.com","https://images.unsplash.com/photo-1626785774573-4b799315345d?w=400");
add("EXIT","https://google.com","https://images.unsplash.com/photo-1585822987233-d9442fb09a65?w=400");
</script></body></html>
IN
sudo chattr +i $F
echo "30-BLOCK ARSENAL FINISHED AND PERMANENT."
