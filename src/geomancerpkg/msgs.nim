const
  shieldmsg* = """
Shield Chart
+---Daughters---+----Mothers----+
|{ds[3][0]}|{ds[2][0]}|{ds[1][0]}|{ds[0][0]}|{ms[3][0]}|{ms[2][0]}|{ms[1][0]}|{ms[0][0]}|
|{ds[3][1]}|{ds[2][1]}|{ds[1][1]}|{ds[0][1]}|{ms[3][1]}|{ms[2][1]}|{ms[1][1]}|{ms[0][1]}|
|{ds[3][2]}|{ds[2][2]}|{ds[1][2]}|{ds[0][2]}|{ms[3][2]}|{ms[2][2]}|{ms[1][2]}|{ms[0][2]}|
|{ds[3][3]}|{ds[2][3]}|{ds[1][3]}|{ds[0][3]}|{ms[3][3]}|{ms[2][3]}|{ms[1][3]}|{ms[0][3]}|
+---+---+---+---+---+---+---+---+
|  {ns[3][0]}  |  {ns[2][0]}  |  {ns[1][0]}  |  {ns[0][0]}  |
|  {ns[3][1]}  |  {ns[2][1]}  |  {ns[1][1]}  |  {ns[0][1]}  |
|  {ns[3][2]}  |  {ns[2][2]}  |  {ns[1][2]}  |  {ns[0][2]}  |
|  {ns[3][3]}  |  {ns[2][3]}  |  {ns[1][3]}  |  {ns[0][3]}  |
+-------+-------+-------+-------+
|      {lw[0]}      |      {rw[0]}      |
|      {lw[1]}      |      {rw[1]}      |
|      {lw[2]}      |      {rw[2]}      |
|      {lw[3]}      |      {rw[3]}      |
+---------------+---------------+
|              {ju[0]}              |
|              {ju[1]}              |
|              {ju[2]}              |
|              {ju[3]}              |
+-------------------------------+"""
  housemsg* = """
House Chart
+---------------------------+
|\    {ns[2][0]}    / \    {ns[0][0]}    /|
| \   {ns[2][1]}   /   \   {ns[0][1]}   / |
|  \  {ns[2][2]}  / {ns[1][0]} \  {ns[0][2]}  /  |
|   \ {ns[2][3]} /  {ns[1][1]}  \ {ns[0][3]} /   |
|{ns[3][0]} \   /   {ns[1][2]}   \   / {ds[3][0]}|
|{ns[3][1]}  \ /    {ns[1][3]}    \ /  {ds[3][1]}|
|{ns[3][2]}  /+-------------+\  {ds[3][2]}|
|{ns[3][3]} / | {lw[0]}     {rw[0]} | \ {ds[3][3]}|
|   /  | {lw[1]}     {rw[1]} |  \   |
|  /   | {lw[2]}     {rw[2]} |   \  |
| / {ms[0][0]}| {lw[3]}     {rw[3]} |{ds[2][0]} \ |
|/  {ms[0][1]}|             |{ds[2][1]}  \|
|\  {ms[0][2]}|     {ju[0]}     |{ds[2][2]}  /|
| \ {ms[0][3]}|     {ju[1]}     |{ds[2][3]} / |
|  \   |     {ju[2]}     |   /  |
|   \  |     {ju[3]}     |  /   |
|{ms[1][0]} \ |             | / {ds[1][0]}|
|{ms[1][1]}  \+-------------+/  {ds[1][1]}|
|{ms[1][2]}  / \    {ms[3][0]}    / \  {ds[1][2]}|
|{ms[1][3]} /   \   {ms[3][1]}   /   \ {ds[1][3]}|
|   / {ms[2][0]} \  {ms[3][2]}  / {ds[0][0]} \   |
|  /  {ms[2][1]}  \ {ms[3][3]} /  {ds[0][1]}  \  |
| /   {ms[2][2]}   \   /   {ds[0][2]}   \ |
|/    {ms[2][3]}    \ /    {ds[0][3]}    \|
+---------------------------+
"""
  summsg* = """
Combination of 1: {name1} and 2: {name2}

 1     2
{f1[0]}   {f2[0]}
{f1[1]}   {f2[1]}
{f1[2]}   {f2[2]}
{f1[3]}   {f2[3]}

3: {name3}
{f3[0]}
{f3[1]}
{f3[2]}
{f3[3]}"""
  infomsg* = """
Figure Information: {f.name}

{f.fig[0]}    Fire
{f.fig[1]}    Air
{f.fig[2]}    Water
{f.fig[3]}    Earth

Outer Element: {f.outElement}
Inner Element: {f.inElement}
Planet: {f.planet}
Sign: {f.sign}
Houses: {f.house}
Image: {f.img}
Colors: {f.color}
Keyword: {f.keyword}
Quality: {f.quality}
"""
