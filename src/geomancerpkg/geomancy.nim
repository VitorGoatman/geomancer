import random
randomize()

const
  dot = "•"
  dp* = dot&" "&dot
  sp* = " "&dot&" "

type
  Figure* = array[4,string]
  FigSet* = array[4,Figure]
  Reading* = tuple
    ms,ds,ns: FigSet
    lw,rw,ju: Figure

proc getFigure*(): Figure =
  for n in 0..3:
    case rand 1
    of 0: result[n] = dp
    of 1: result[n] = sp
    else: discard

proc getMothers*():FigSet =
  for n in 0..3:
    result[n] = getFigure()

func getDaughters*(mothers: FigSet): FigSet =
  for d in 0..3:
    result[d] = [mothers[0][d],mothers[1][d],mothers[2][d],mothers[3][d]]

func sumFigures*(fig1,fig2: Figure):Figure =
  for n in 0..3:
    if fig1[n] == fig2[n]:
      result[n] = dp
    else:
      result[n] = sp

func getNieces*(mothers,daughters:FigSet): FigSet =
  result[0] = sumFigures(mothers[0],mothers[1])
  result[1] = sumFigures(mothers[2],mothers[3])
  result[2] = sumFigures(daughters[0],daughters[1])
  result[3] = sumFigures(daughters[2],daughters[3])

proc geomancy*(mothers = getMothers()):Reading =
  let
    ms = mothers
    ds = getDaughters ms
    ns = getNieces(ms,ds)
    rw = sumFigures(ns[0],ns[1])
    lw = sumFigures(ns[2],ns[3])
    ju = sumFigures(rw,lw)
  return (ms,ds,ns,lw,rw,ju)
