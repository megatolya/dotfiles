white_time_single_prompt() {
    c1=$white
    c2=$bwhite
    c3=$grey
    PROMPT="${c1}[$c3%D{%H:%M:%S}$c1]$c1($c2%n$c1@$c2%m$c1)$c1($c2%~$c1)%#$normal "
    RPROMPT=""
}
white_time_single_prompt
