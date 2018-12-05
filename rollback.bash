# ---
# Experimental
# Auto revert any migration when performing git checkout
# This assumes that all migration are reversible
# 1. Checks if current directory is a rails project
# 2. Compares db/migrate of HEAD and the other branch
# 3. Execute bundle exec rake db:migrate:down for each version
# 4. Execute git checkout -- . db/schema.rb
# 5. Proceed with git checkout
# ---
# TODO
# 1. REFACTOR - AVOID NESTED CONDITIONALS
# ---

can_git_checkout() {
  git diff --shortstat
}
if ! [[ $(can_git_checkout) ]]; then
  # Check if git branch is exist
  git rev-parse --verify $2 &> /dev/null
  if [[ $? -eq 0 ]]; then
    # Check if current dir is a rails project
    grep 'rails' 'Gemfile' -s > /dev/null
    if [[ $? -eq 0 ]]; then
      if [ -d "db/migrate" ]; then
        # Get all migration ids
        versions="$(git diff --name-only `git rev-parse --abbrev-ref $2...HEAD` db/migrate | grep -oE '\d{14}' )"
        # Revert starting from latest migration
        versions="$(echo $versions | awk '{ for (i=NF; i>1; i--) printf("%s ",$i); print $1; }')"
        for version in $versions; do
          echo "Running bundle exec rake db:migrate:down VERSION=$version"
          bundle exec rake db:migrate:down VERSION=$version > /dev/null
        done
        git checkout -- . db/schema.rb
      fi
    fi
  fi
fi
