rm -rf dep_dir/ \
  && echo "'dep_dir/' has been removed"

mkdir dep_dir/ && echo "should not be removed" > dep_dir/old_file \
  && echo "'dep_dir/old_file' has been created"

rm -rf git_dir/ \
  && echo "'git_dir/' has been removed"

git init --bare git_dir

ln -s `pwd`/post-receive git_dir/hooks/post-receive \
  && echo "'git_dir/hooks/post-receive' has been created"
