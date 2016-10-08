package com.snowballfinance.messageplatform.a.a;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

public class f
  extends ByteArrayOutputStream
{
  protected int c = 0;
  
  public f()
  {
    super(1024);
  }
  
  public final int b()
  {
    return this.c;
  }
  
  public void reset()
  {
    try
    {
      super.reset();
      this.c = 0;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public byte[] toByteArray()
  {
    try
    {
      this.count = this.c;
      byte[] arrayOfByte = super.toByteArray();
      return arrayOfByte;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final void write(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 24	com/snowballfinance/messageplatform/a/a/f:count	I
    //   6: aload_0
    //   7: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   10: if_icmple +28 -> 38
    //   13: aload_0
    //   14: getfield 31	com/snowballfinance/messageplatform/a/a/f:buf	[B
    //   17: astore_2
    //   18: aload_0
    //   19: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   22: istore_3
    //   23: aload_0
    //   24: iload_3
    //   25: iconst_1
    //   26: iadd
    //   27: putfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   30: aload_2
    //   31: iload_3
    //   32: iload_1
    //   33: i2b
    //   34: bastore
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: aload_0
    //   39: iload_1
    //   40: invokespecial 33	java/io/ByteArrayOutputStream:write	(I)V
    //   43: aload_0
    //   44: aload_0
    //   45: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   48: iconst_1
    //   49: iadd
    //   50: putfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   53: goto -18 -> 35
    //   56: astore_2
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_2
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	f
    //   0	61	1	paramInt	int
    //   17	14	2	arrayOfByte	byte[]
    //   56	4	2	localObject	Object
    //   22	10	3	i	int
    // Exception table:
    //   from	to	target	type
    //   2	30	56	finally
    //   38	53	56	finally
  }
  
  public final void write(byte[] paramArrayOfByte)
  {
    try
    {
      write(paramArrayOfByte, 0, paramArrayOfByte.length);
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  /* Error */
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   6: aload_0
    //   7: getfield 24	com/snowballfinance/messageplatform/a/a/f:count	I
    //   10: if_icmple +63 -> 73
    //   13: aload_0
    //   14: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   17: aload_0
    //   18: getfield 24	com/snowballfinance/messageplatform/a/a/f:count	I
    //   21: isub
    //   22: newarray <illegal type>
    //   24: astore 4
    //   26: aload_0
    //   27: aload 4
    //   29: iconst_0
    //   30: aload 4
    //   32: arraylength
    //   33: invokespecial 38	java/io/ByteArrayOutputStream:write	([BII)V
    //   36: aload_0
    //   37: aload_0
    //   38: getfield 24	com/snowballfinance/messageplatform/a/a/f:count	I
    //   41: putfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   44: iload_3
    //   45: istore 6
    //   47: iload_2
    //   48: istore 5
    //   50: aload_0
    //   51: aload_1
    //   52: iload 5
    //   54: iload 6
    //   56: invokespecial 38	java/io/ByteArrayOutputStream:write	([BII)V
    //   59: aload_0
    //   60: aload_0
    //   61: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   64: iload 6
    //   66: iadd
    //   67: putfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   70: aload_0
    //   71: monitorexit
    //   72: return
    //   73: iload_2
    //   74: istore 5
    //   76: iload_3
    //   77: istore 6
    //   79: aload_0
    //   80: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   83: aload_0
    //   84: getfield 24	com/snowballfinance/messageplatform/a/a/f:count	I
    //   87: if_icmpge -37 -> 50
    //   90: aload_0
    //   91: getfield 24	com/snowballfinance/messageplatform/a/a/f:count	I
    //   94: aload_0
    //   95: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   98: isub
    //   99: iload_3
    //   100: invokestatic 44	java/lang/Math:min	(II)I
    //   103: istore 6
    //   105: aload_1
    //   106: iload_2
    //   107: aload_0
    //   108: getfield 31	com/snowballfinance/messageplatform/a/a/f:buf	[B
    //   111: aload_0
    //   112: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   115: iload 6
    //   117: invokestatic 50	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   120: aload_0
    //   121: aload_0
    //   122: getfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   125: iload 6
    //   127: iadd
    //   128: putfield 13	com/snowballfinance/messageplatform/a/a/f:c	I
    //   131: iload_2
    //   132: iload 6
    //   134: iadd
    //   135: istore 5
    //   137: iload_3
    //   138: iload 6
    //   140: isub
    //   141: istore 6
    //   143: goto -93 -> 50
    //   146: astore_1
    //   147: aload_0
    //   148: monitorexit
    //   149: aload_1
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	f
    //   0	151	1	paramArrayOfByte	byte[]
    //   0	151	2	paramInt1	int
    //   0	151	3	paramInt2	int
    //   24	7	4	arrayOfByte	byte[]
    //   48	88	5	i	int
    //   45	97	6	j	int
    // Exception table:
    //   from	to	target	type
    //   2	44	146	finally
    //   50	70	146	finally
    //   79	131	146	finally
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    try
    {
      this.count = this.c;
      super.writeTo(paramOutputStream);
      return;
    }
    finally
    {
      paramOutputStream = finally;
      throw paramOutputStream;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */