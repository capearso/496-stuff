RESULTDIR=~/496/496-stuff/output
# Modify paths to your programs below as needed
NOGO1=~/496/496-stuff/Go4AC/Go4AC.py
NOGO2=~/496/496-stuff/Go4/Go4.py
TWOGTP=gogui-twogtp
run(){
echo Match with $NUGAMES games on board size $BOARDSIZE. Storing results in $RESULTDIR
mkdir -p $RESULTDIR
$TWOGTP -black "$NOGO1" -white "$NOGO2" -auto  -komi 0 -threads 4 -size $BOARDSIZE -games $NUGAMES -sgffile $RESULTDIR/game
$TWOGTP -analyze $RESULTDIR/game.dat -force
}
NUGAMES=4
BOARDSIZE=3
run
