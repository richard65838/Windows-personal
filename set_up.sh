path_git = ""
#ej: git@git.assembla.com:portfolio/space.space_name.git
name_repo = ""
#nombre del repo en git

mv BaseProyectos $name_repo

git remote rm origin

git remote add origin $name_repo $path_git

git config master.remote origin

git config master.merge refs/heads/master