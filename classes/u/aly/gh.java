package u.aly;

import java.util.BitSet;

public final class gh
  extends fv
{
  public final void a(BitSet paramBitSet, int paramInt)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[(int)Math.ceil(paramInt / 8.0D)];
    paramInt = 0;
    int j;
    if (paramInt >= paramBitSet.length())
    {
      j = arrayOfByte.length;
      paramInt = i;
    }
    for (;;)
    {
      if (paramInt >= j)
      {
        return;
        if (paramBitSet.get(paramInt))
        {
          j = arrayOfByte.length - paramInt / 8 - 1;
          arrayOfByte[j] = ((byte)(arrayOfByte[j] | 1 << paramInt % 8));
        }
        paramInt += 1;
        break;
      }
      a(arrayOfByte[paramInt]);
      paramInt += 1;
    }
  }
  
  public final BitSet b(int paramInt)
  {
    int i = 0;
    int j = (int)Math.ceil(paramInt / 8.0D);
    byte[] arrayOfByte = new byte[j];
    paramInt = 0;
    BitSet localBitSet;
    if (paramInt >= j)
    {
      localBitSet = new BitSet();
      paramInt = i;
    }
    for (;;)
    {
      if (paramInt >= arrayOfByte.length * 8)
      {
        return localBitSet;
        arrayOfByte[paramInt] = k();
        paramInt += 1;
        break;
      }
      if ((arrayOfByte[(arrayOfByte.length - paramInt / 8 - 1)] & 1 << paramInt % 8) > 0) {
        localBitSet.set(paramInt);
      }
      paramInt += 1;
    }
  }
  
  public final Class<? extends gi> s()
  {
    return gl.class;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */