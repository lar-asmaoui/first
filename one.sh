for j in {1..40}
do
	for i in {1..1000}
	do
		now=$(date +%s%3N)
		echo "{'now':'$now'}" > data.js
		git add data.js
		git commit -m "Commit at $now milliseconds"
		echo "$i/1000"
		usleep 1000
	done
	git push origin main
	echo "number of pushs: $j/10"
done
echo "[OK] you are the first on commits.top in your country..."