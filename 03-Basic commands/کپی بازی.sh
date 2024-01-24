echo "$(cp directory1 directory1.copy -r -v)" > directory1.out
echo "$(cp directory2 directory2.copy -r -v)" > directory2.out
echo "$(cp directory3 directory3.copy -r -v)" > directory3.out
cat directory1.out | sort >> sorted-out
cat directory2.out | sort >> sorted-out
cat directory3.out | sort >> sorted-out
