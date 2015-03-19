rm -rf dep_dir/ \
  && echo "'dep_dir/' has been removed"

rm -rf git_dir/ \
  && echo "'git_dir/' has been removed"

git init --bare git_dir

ln -s `pwd`/post-receive git_dir/hooks/post-receive \
  && echo "'git_dir/hooks/post-receive' has been created"
