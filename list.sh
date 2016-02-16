#/bin/bash
i=$(ls $1/*.html | wc -l | tr -d ' ')

for f in `ls $1/*.html | sort -r`;
  do
  date=$(echo $f |grep -Eo '[[:digit:]]{2}-[[:digit:]]{2}-[[:digit:]]{2}')
  properdate=$(date -j -f '%m-%d-%y' $date +"%B %d, %Y")
  printf "
          <li>
           <a href="$1/$date.html">
            <h2>EMC {code} Newsletter #$i : $properdate</h2>
           </a>
           <a href="$1/$date.pdf"
            <h2>PDF</h2>
           </a>
          </li>
          </br>"
  let i=$i-1;
done
