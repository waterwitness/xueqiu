package com.snowballfinance.messageplatform.a;

import java.io.Serializable;

public class a
  implements Serializable
{
  private static volatile int c = 0;
  public Integer a;
  public String b;
  
  /* Error */
  public static Integer a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 16	com/snowballfinance/messageplatform/a/a:c	I
    //   6: ldc 22
    //   8: if_icmplt +19 -> 27
    //   11: iconst_1
    //   12: putstatic 16	com/snowballfinance/messageplatform/a/a:c	I
    //   15: getstatic 16	com/snowballfinance/messageplatform/a/a:c	I
    //   18: istore_1
    //   19: ldc 2
    //   21: monitorexit
    //   22: iload_1
    //   23: invokestatic 28	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   26: areturn
    //   27: getstatic 16	com/snowballfinance/messageplatform/a/a:c	I
    //   30: iconst_1
    //   31: iadd
    //   32: putstatic 16	com/snowballfinance/messageplatform/a/a:c	I
    //   35: goto -20 -> 15
    //   38: astore_0
    //   39: ldc 2
    //   41: monitorexit
    //   42: aload_0
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   38	5	0	localObject	Object
    //   18	5	1	i	int
    // Exception table:
    //   from	to	target	type
    //   3	15	38	finally
    //   15	19	38	finally
    //   27	35	38	finally
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (s.a(this) != null)
    {
      localObject = s.a(this).name();
      localStringBuilder = localStringBuilder.append((String)localObject).append(" ");
      if (this.a == null) {
        break label61;
      }
    }
    label61:
    for (Object localObject = this.a;; localObject = "-")
    {
      return (String)localObject;
      localObject = "UNKNOWN";
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */