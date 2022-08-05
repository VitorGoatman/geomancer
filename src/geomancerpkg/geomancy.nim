import random
randomize()

const
  dot = "•"
  dp* = dot&" "&dot
  sp* = " "&dot&" "

type
  Figure* = array[4,string]
  figSet* = array[4,Figure]

proc getFigure(): Figure =
  for n in 0..3:
    case [true,false].sample
    of true:  result[n] = dp
    of false: result[n] = sp

proc getMothers(): figSet =
  for n in 0..3:
    result[n] = getFigure()

func getDaughters*(mothers: figSet): figSet =
  for d in 0..3:
    result[d] = [mothers[0][d],mothers[1][d],mothers[2][d],mothers[3][d]]

func sumFigures*(fig1,fig2: Figure):Figure =
  for n in 0..3:
    if fig1[n] == fig2[n]:
      result[n] = dp
    else:
      result[n] = sp

func getNieces*(mothers,daughters:figSet): figSet = 
  result[0] = sumFigures(mothers[0],mothers[1])
  result[1] = sumFigures(mothers[2],mothers[3])
  result[2] = sumFigures(daughters[0],daughters[1])
  result[3] = sumFigures(daughters[2],daughters[3])

proc geomancy*():tuple[ms,ds,ns:figSet, rw,lw,ju:Figure] =
  let
    ms = getMothers()
    ds = getDaughters ms
    ns = getNieces(ms,ds)
    rw = sumFigures(ns[0],ns[1])
    lw = sumFigures(ns[2],ns[3])
    ju = sumFigures(rw,lw)
  return (ms,ds,ns,rw,lw,ju)
