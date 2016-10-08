package rx.b;

public final class j
  extends RuntimeException
{
  public static Throwable a(Throwable paramThrowable, Object paramObject)
  {
    int i = 0;
    Object localObject = paramThrowable;
    if (((Throwable)localObject).getCause() != null) {
      if (i >= 25) {
        localObject = new RuntimeException("Stack too deep to get final cause");
      }
    }
    for (;;)
    {
      if ((localObject == null) || (!(localObject instanceof k)) || (((k)localObject).a != paramObject)) {
        break label66;
      }
      return paramThrowable;
      localObject = ((Throwable)localObject).getCause();
      i += 1;
      break;
    }
    label66:
    f.a(paramThrowable, new k(paramObject));
    return paramThrowable;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\b\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */