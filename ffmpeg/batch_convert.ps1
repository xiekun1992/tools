$source = '.mp3'
$target = '.wav'
$files = get-childitem -path .\ -include ('*' + $source) -recurse -erroraction silentlycontinue
foreach ($file in $files) {
    $in = $file.tostring()
    $out = $in.replace($source, $target)
    ffmpeg -y -i $in $out
}