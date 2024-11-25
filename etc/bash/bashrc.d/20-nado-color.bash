for _ in watch qlop; do
	alias "$_=$_ --color"
done

for _ in diff dir grep ls vdir; do
	alias "$_=$_ --color=always"
done
