function experimentsplit {
  #BRANCH=$( echo "WEB-4083-conditional-logout-link" | sed $'s/-/\\\n/g' );
  BRANCH=$( echo "WEB-4083-conditional-logout-link" | tr '-' ' ' );
  ARR=(`echo ${BRANCH}`);
  echo ${ARR[2]};
}

# Make folder x
# Move all files that match y -> x
function mvImgToFolder {
  mkdir ${2} && mv ${1}* ./${2}   
}


function renameImgByDate {
  for f in *.*; do
    fn=$(basename "$f")
    mv "$fn" "$(date -r "$f" +"%Y-%m-%d_%H-%M-%S")_$fn"
  done
}
