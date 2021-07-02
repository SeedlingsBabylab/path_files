## Not a great script, but does the work. First part is for cha files, second for opf.
script='/Volumes/pn-opus/Seedlings/Scripts_and_Apps/Github/seedlings/path_files/cp_all.sh'
paths='/Volumes/pn-opus/Seedlings/Scripts_and_Apps/Github/seedlings/path_files/cha_sparse_code_paths.txt'
output="/Volumes/pn-opus/Seedlings/Compiled_Data/annotated_cha/annotated_cha"

bash $script $paths $output
cd $output
git add .

git commit -m "`date +'%A, %B %d, %Y'`"
git push

#=========================================================================================
script='/Volumes/pn-opus/Seedlings/Scripts_and_Apps/Github/seedlings/path_files/cp_all_opf.sh'
paths='/Volumes/pn-opus/Seedlings/Scripts_and_Apps/Github/seedlings/path_files/opf_paths.txt'
output="/Volumes/pn-opus/Seedlings/Compiled_Data/annotated_opf/annotated_opf"

bash $script $paths $output
cd $output
git add .

git commit -m "`date +'%A, %B %d, %Y'`"
git push



