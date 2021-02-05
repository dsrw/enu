include coro

proc resume*(c: CoroutineRef) =
  ctx.current = ctx.coroutines.find(c.coro)
  switchTo(addr(ctx.loop), c.coro)
  if c.coro.state == CORO_FINISHED:
    ctx.coroutines.remove(ctx.current)
