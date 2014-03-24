#Compile

if [[ $# = 1 ]]; then
  . build/envsetup.sh
  if [[ $? = 0 ]]; then
    case $1 in
    -u)
      echo brunch full_kumquat-userdebug;
    ;;
    -p)
      echo brunch full_nypon-userdebug
    ;;
    -s)
      echo brunch full_pepper-userdebug;
    ;;
    -g)
      echo brunch full_lotus-userdebug;
    ;;
    *)
      echo "ERROR: Unknow option"
    ;;
    esac
  else 
    echo "ERROR: . build/envsetup.sh falied"
  fi
else
  echo "ERROR: Number of options not correct. Usage: Recompile -u | -p | -s | -g"
fi