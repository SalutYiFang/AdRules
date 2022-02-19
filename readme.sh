num_adg=`cat adguard.txt | wc -l`
num_al=`cat allow.txt | wc -l`
num_adb=`cat adblock.txt | wc -l`
num_dns=`cat dns.txt | wc -l`
num_hosts=`cat hosts.txt | wc -l`
num_damian=`cat damian.txt | wc -l`
num=8
declare -i count_adg=$num_adg-$num
declare -i count_al=$num_al-$num
declare -i count_adb=$num_adb-$num
declare -i count_dns=$num_dns-$num
declare -i count_hosts=$num_hosts-$num
declare -i count_damian=$num_damian-2
sed -i 's/AdRules（For Adblock）规则数量:.*/AdRules（For Adblock）规则数量: $count_adb /g' Readme.md
sed -i 's/AdRules（For AdGuard）规则数量:.*/AdRules（For AdGuard）规则数量: $count_adg /g' Readme.md
sed -i 's/AdRules（For DNS）规则数量:.*/AdRules（For DNS）规则数量: $count_dns /g' Readme.md
sed -i 's/AdRules（For adaway）规则数量:.*/AdRules（For adaway）规则数量: $count_hosts /g' Readme.md
sed -i 's/Allowlist规则数量:.*/Allowlist规则数量: $count_hosts /g' Readme.md
sed -i 's/Damian数量:.*/Damian数量: $count_damian /g' Readme.md
