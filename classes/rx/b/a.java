package rx.b;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class a
  extends RuntimeException
{
  private final List<Throwable> a;
  private final String b;
  private Throwable c = null;
  
  public a(Collection<? extends Throwable> paramCollection)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Throwable localThrowable = (Throwable)paramCollection.next();
      if ((localThrowable instanceof a)) {
        localLinkedHashSet.addAll(((a)localThrowable).a);
      } else {
        localLinkedHashSet.add(localThrowable);
      }
    }
    localArrayList.addAll(localLinkedHashSet);
    this.a = Collections.unmodifiableList(localArrayList);
    this.b = (this.a.size() + " exceptions occurred. ");
  }
  
  public a(Collection<? extends Throwable> paramCollection, byte paramByte)
  {
    this(paramCollection);
  }
  
  private static List<Throwable> a(Throwable paramThrowable)
  {
    ArrayList localArrayList = new ArrayList();
    Throwable localThrowable = paramThrowable.getCause();
    paramThrowable = localThrowable;
    if (localThrowable == null) {
      return localArrayList;
    }
    do
    {
      paramThrowable = paramThrowable.getCause();
      localArrayList.add(paramThrowable);
    } while (paramThrowable.getCause() != null);
    return localArrayList;
  }
  
  private static void a(StringBuilder paramStringBuilder, Throwable paramThrowable, String paramString)
  {
    for (;;)
    {
      paramStringBuilder.append(paramString).append(paramThrowable).append("\n");
      paramString = paramThrowable.getStackTrace();
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramString[i];
        paramStringBuilder.append("\t\tat ").append(localObject).append("\n");
        i += 1;
      }
      if (paramThrowable.getCause() == null) {
        break;
      }
      paramStringBuilder.append("\tCaused by: ");
      paramThrowable = paramThrowable.getCause();
      paramString = "";
    }
  }
  
  private void a(c paramc)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this).append("\n");
    ??? = getStackTrace();
    int j = ???.length;
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = ???[i];
      localStringBuilder.append("\tat ").append(localObject2).append("\n");
      i += 1;
    }
    ??? = this.a.iterator();
    i = 1;
    while (((Iterator)???).hasNext())
    {
      localObject2 = (Throwable)((Iterator)???).next();
      localStringBuilder.append("  ComposedException ").append(i).append(" :\n");
      a(localStringBuilder, (Throwable)localObject2, "\t");
      i += 1;
    }
    synchronized (paramc.a())
    {
      paramc.a(localStringBuilder.toString());
      return;
    }
  }
  
  public final Throwable getCause()
  {
    try
    {
      b localb2;
      HashSet localHashSet;
      Iterator localIterator1;
      if (this.c == null)
      {
        localb2 = new b();
        localHashSet = new HashSet();
        localIterator1 = this.a.iterator();
        b localb1 = localb2;
      }
      for (;;)
      {
        Object localObject2;
        if (localIterator1.hasNext())
        {
          localObject2 = (Throwable)localIterator1.next();
          if (localHashSet.contains(localObject2)) {
            continue;
          }
          localHashSet.add(localObject2);
          Iterator localIterator2 = a((Throwable)localObject2).iterator();
          while (localIterator2.hasNext())
          {
            Throwable localThrowable3 = (Throwable)localIterator2.next();
            if (localHashSet.contains(localThrowable3)) {
              localObject2 = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
            } else {
              localHashSet.add(localThrowable3);
            }
          }
        }
        try
        {
          ((Throwable)localObject1).initCause((Throwable)localObject2);
          Throwable localThrowable1 = ((Throwable)localObject1).getCause();
          continue;
          this.c = localb2;
          localThrowable1 = this.c;
          return localThrowable1;
        }
        catch (Throwable localThrowable2)
        {
          for (;;) {}
        }
      }
    }
    finally {}
  }
  
  public final String getMessage()
  {
    return this.b;
  }
  
  public final void printStackTrace()
  {
    printStackTrace(System.err);
  }
  
  public final void printStackTrace(PrintStream paramPrintStream)
  {
    a(new d(paramPrintStream));
  }
  
  public final void printStackTrace(PrintWriter paramPrintWriter)
  {
    a(new e(paramPrintWriter));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */