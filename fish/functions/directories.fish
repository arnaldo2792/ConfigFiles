function directories -d "Defines prefixed shortcuts for verbose directories"
  set -l directory $argv[1]
  set -l prefix $argv[2]

  if test -z "$directory"; or test -z "$prefix"
    echo "You must speficy a base directory and a prefix"; and return 1
  end

  if test ! -d $directory
    echo "The directory '$directory' doesn't exists"; and return 1
  end

  function __directories.define_function
    set -l directory $argv[1]
    set -l prefix $argv[2]

    if test -z $argv[3]
      echo $directory | read -d '/' -al parts
      set name "$prefix-$parts[-1]"
    else
      set name "$prefix"
    end

    # Function already exists
    functions -q $name; and return 0

    function $name -V directory -V name -d "$directory"
      if test ! -d $directory
        echo "The path '$directory' no longer exists, deleting function $name"
        functions -e $name
        return 1
      end

      cd $directory
    end
  end

  set -l directories (find $directory -maxdepth 1 -mindepth 1 -type d)

  for d in $directories
    __directories.define_function $d $prefix
  end

  __directories.define_function $directory $prefix 1

  functions -e __directories.define_function
end
