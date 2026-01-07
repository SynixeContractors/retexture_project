for i in $(find . -name "*.png" -not -path "*camos*" )
do
    if [[ input/$i -ot output/${i%.png}.paa ]]; then
       echo "$i is older than ${i%.png}.paa skipping"
       continue
    fi
    cd "/data2/SteamLibrary/steamapps/common/Arma 3 Tools/ImageToPAA"
    echo "wine ImageToPAA.exe input/$i output/${i%.png}.paa"
    wine ImageToPAA.exe input/$i output/${i%.png}.paa
done

cd "/home/thisconnect/arma/Factions"
hemtt dev
date
