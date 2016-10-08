package org.apache.commons.codec.language;

class ColognePhonetic$CologneOutputBuffer
  extends ColognePhonetic.CologneBuffer
{
  public ColognePhonetic$CologneOutputBuffer(ColognePhonetic paramColognePhonetic, int paramInt)
  {
    super(paramColognePhonetic, paramInt);
  }
  
  public void addRight(char paramChar)
  {
    this.data[this.length] = paramChar;
    this.length += 1;
  }
  
  protected char[] copyData(int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2];
    System.arraycopy(this.data, paramInt1, arrayOfChar, 0, paramInt2);
    return arrayOfChar;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\ColognePhonetic$CologneOutputBuffer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */