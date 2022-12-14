import geomancerpkg/[geomancy, figures, msgs]
import std/[strformat,wordwrap]
import docopt
  
const
  doc = """
Geomancer

Usage:
  geomancer (-c | --chart) [(-h | --house)] [(-b | --build) <m1> <m2> <m3> <m4>]
  geomancer (-s | --sum) <figure1> <figure2>
  geomancer (-i | --info) <name>
  geomancer (-? | --help)

Options:
  -? --help     Show this screen.
  --version     Show version.
  -c --chart    Generates a shield chart 
                of the reading.
  -h --house    Generates a house chart 
                of the reading.
  -b --build    Input the four mothers and
                build a chart from them.
  -s --sum      Combines two figures.
  -i --info     Returns basic information 
                about a figure.
"""

let args = docopt doc

proc matchFig(fig:string): FigData =
  var errn:int
  for f in Figures:
    if f.name == fig or f.min == fig:
      result = f
      break
    else: inc errn
  if errn == 16:
    quit("Unknown figure: "&fig, 1)

proc chart() =
  var reading:Reading
  if args["--build"]:
    let m = [
      matchFig($args["<m1>"]).fig,
      matchFig($args["<m2>"]).fig,
      matchFig($args["<m3>"]).fig,
      matchFig($args["<m4>"]).fig]
    reading = geomancy m
  else:
    reading = geomancy()
  let
    ms = reading.ms
    ds = reading.ds
    ns = reading.ns
    lw = reading.lw
    rw = reading.rw
    ju = reading.ju
  echo fmt shieldmsg
  if args["--house"]:
    echo fmt housemsg 

proc sum(name1,name2:string)=
  let
    (f1,name1) = (name1.matchFig.fig,name1.matchFig.name)
    (f2,name2) = (name2.matchFig.fig,name2.matchFig.name)
    f3 = sumFigures(f1,f2)

  var name3:string
  for f in Figures:
    if f3 == f.fig:
      name3 = f.name
      break

  echo fmt summsg

when isMainModule:
  if args["--chart"]: chart()
  if args["--sum"]: sum($args["<figure1>"],$args["<figure2>"])
  if args["--info"]:
    let f = matchFig $args["<name>"]
    echo infomsg.fmt
    echo "Commentary: ",f.commentary.wrapWords(),"\n"
    echo "Divinatory meaning: ",f.divination.wrapWords()
