# SYNOPSIS
#   submerge [options]
#
# USAGE
#   {src} Video file
#   {srt} Subtitle file
#   {ouput} Video file
#   submerge mr.robot.1x01.mkv sub.srt output.mkv

function submerge
  if type -t mencoder > /dev/null
    mencoder $argv[1] -sub $argv[2] -subcp utf8 -subfont-text-scale 3 -subfont-outline 1 -ovc xvid -oac mp3lame -xvidencopts pass=1 -o $argv[3]
  else
    echo "📂  Please install mencoder first!"
  end
end
