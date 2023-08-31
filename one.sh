for j in {1..2}
do
	for i in {1..100}
	do
		now=$(date +%s%3N)
		echo "{'now':'$now'}" > data.js
		git add data.js
		git commit -m "Commit at $now milliseconds"
		echo "$i/1000 $j"
		usleep 1000
	done
	git push origin main
	echo "number of commits: $j/100"
done
echo "[OK] you are the first on commits.top in your country..."