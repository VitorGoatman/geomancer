import geomancerpkg/[geomancy, figures, msgs]
import std/[strformat]
import docopt
  
const
  doc = """
Geomancer

Usage:
  geomancer chart [house] [(-b | --build) <m1> <m2> <m3> <m4>]
  geomancer sum <figure1> <figure2>
  geomancer info <name>
  geomancer (-h | --help)

Options:
  -h --help     Show this screen.
  --version     Show version.
  chart         Generates a shield chart 
                of the reading.
  house         Generates a house chart 
                of the reading.
  -b --build    Input the four mothers and
                build a chart from them.
  sum           Combines two figures.
  info          Returns basic information 
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
  var
    ms,ds,ns: figSet 
    lw,rw,ju: Figure
  if args["--build"]:
    ms = [
      matchFig($args["<m1>"]).fig,
      matchFig($args["<m2>"]).fig,
      matchFig($args["<m3>"]).fig,
      matchFig($args["<m4>"]).fig]
    ds = getDaughters ms
    ns = getNieces(ms,ds) 
    rw = sumFigures(ns[0],ns[1])
    lw = sumFigures(ns[2],ns[3])
    ju = sumFigures(rw,lw)
  else:
    let reading = geomancy()
    ms = reading.ms
    ds = reading.ds
    ns = reading.ns
    lw = reading.lw
    rw = reading.lw
    ju = reading.ju
  echo fmt shieldmsg
  if args["house"]:
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
  if args["chart"]: chart()
  if args["sum"]: sum($args["<figure1>"],$args["<figure2>"])
  if args["info"]:
    let f = matchFig $args["<name>"]
    echo fmt infomsg
