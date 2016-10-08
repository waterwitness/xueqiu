package u.aly;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d
  extends ah
  implements ha
{
  public d()
  {
    this.a = System.currentTimeMillis();
    b();
    this.c = an.a;
  }
  
  public d(String paramString)
  {
    this();
    this.b = paramString;
  }
  
  public d(Throwable paramThrowable)
  {
    this();
    this.b = a(paramThrowable);
  }
  
  private static String a(Throwable paramThrowable)
  {
    Object localObject2 = null;
    if (paramThrowable == null) {
      return null;
    }
    Object localObject1 = localObject2;
    try
    {
      StringWriter localStringWriter = new StringWriter();
      localObject1 = localObject2;
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      Throwable localThrowable;
      do
      {
        localObject1 = localObject2;
        paramThrowable.printStackTrace(localPrintWriter);
        localObject1 = localObject2;
        localThrowable = paramThrowable.getCause();
        paramThrowable = localThrowable;
      } while (localThrowable != null);
      localObject1 = localObject2;
      paramThrowable = localStringWriter.toString();
      localObject1 = paramThrowable;
      localPrintWriter.close();
      localObject1 = paramThrowable;
      localStringWriter.close();
      return paramThrowable;
    }
    catch (Exception paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
    return (String)localObject1;
  }
  
  public final d a()
  {
    this.c = an.b;
    return this;
  }
  
  public final void a(dz paramdz, String paramString)
  {
    Object localObject;
    bz localbz;
    if (paramdz.b() > 0)
    {
      localObject = paramdz.f.iterator();
      if (((Iterator)localObject).hasNext()) {}
    }
    else
    {
      localbz = null;
    }
    for (;;)
    {
      localObject = localbz;
      if (localbz == null)
      {
        localObject = new bz();
        ((bz)localObject).a = paramString;
        paramdz.a((bz)localObject);
      }
      if (((bz)localObject).b == null) {
        ((bz)localObject).b = new ArrayList();
      }
      ((bz)localObject).b.add(this);
      return;
      localbz = (bz)((Iterator)localObject).next();
      if (!paramString.equals(localbz.a)) {
        break;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */