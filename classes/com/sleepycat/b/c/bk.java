package com.sleepycat.b.c;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.m.d;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class bk
{
  static int a(byte[][] paramArrayOfByte)
  {
    int k;
    if (paramArrayOfByte == null)
    {
      k = ar.a(0);
      return k;
    }
    int i = ar.a(paramArrayOfByte.length);
    int m = paramArrayOfByte.length;
    int j = 0;
    for (;;)
    {
      k = i;
      if (j >= m) {
        break;
      }
      k = ar.a(paramArrayOfByte[j]);
      j += 1;
      i = k + i;
    }
  }
  
  static LinkedList<d> a(String paramString, byte[][] paramArrayOfByte, ClassLoader paramClassLoader)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    LinkedList localLinkedList = new LinkedList();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      d locald = (d)i.a(paramArrayOfByte[i], "trigger:" + i, paramClassLoader);
      locald.a(paramString);
      localLinkedList.add(locald);
      i += 1;
    }
    return localLinkedList;
  }
  
  static void a(StringBuilder paramStringBuilder, byte[][] paramArrayOfByte, List<d> paramList)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {}
    for (;;)
    {
      return;
      if ((paramList != null) && (paramList.size() != 0))
      {
        paramList = paramList.iterator();
        label30:
        d locald;
        StringBuilder localStringBuilder;
        if (paramList.hasNext())
        {
          locald = (d)paramList.next();
          localStringBuilder = new StringBuilder("<trigger name=\"").append(locald.a()).append("\" database name=\"");
          if (locald.b() != null) {
            break label123;
          }
        }
        label123:
        for (paramArrayOfByte = "null";; paramArrayOfByte = locald.b())
        {
          paramStringBuilder.append(paramArrayOfByte + "\" className=\"" + locald.getClass().getName() + "\">");
          break label30;
          break;
        }
      }
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        paramStringBuilder.append("<trigger name=\"?" + i + "\" className=\"?\">");
        i += 1;
      }
    }
  }
  
  static void a(ByteBuffer paramByteBuffer, byte[][] paramArrayOfByte)
  {
    int i = 0;
    if (paramArrayOfByte == null) {
      ar.b(paramByteBuffer, 0);
    }
    for (;;)
    {
      return;
      ar.b(paramByteBuffer, paramArrayOfByte.length);
      int j = paramArrayOfByte.length;
      while (i < j)
      {
        ar.a(paramByteBuffer, paramArrayOfByte[i]);
        i += 1;
      }
    }
  }
  
  static byte[][] a(ByteBuffer paramByteBuffer)
  {
    int i = ar.d(paramByteBuffer);
    if (i == 0) {
      return null;
    }
    byte[][] arrayOfByte = new byte[i][];
    i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = ar.c(paramByteBuffer, false);
      i += 1;
    }
    return arrayOfByte;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\bk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */