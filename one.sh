for i in {1..3600}
do
	now=$(date)
	echo "{'now':'$now'}" > data.js
	git add data.js
	git commit -m "Commit at $now milliseconds"
	echo "$i/3600"
	sleep 1
done
echo "[OK] you are the first on commits.top in your country..."