package org.apache.commons.codec.binary;

import java.util.Arrays;

class BaseNCodec$Context
{
  byte[] buffer;
  int currentLinePos;
  boolean eof;
  int ibitWorkArea;
  long lbitWorkArea;
  int modulus;
  int pos;
  int readPos;
  
  public String toString()
  {
    return String.format("%s[buffer=%s, currentLinePos=%s, eof=%s, ibitWorkArea=%s, lbitWorkArea=%s, modulus=%s, pos=%s, readPos=%s]", new Object[] { getClass().getSimpleName(), Arrays.toString(this.buffer), Integer.valueOf(this.currentLinePos), Boolean.valueOf(this.eof), Integer.valueOf(this.ibitWorkArea), Long.valueOf(this.lbitWorkArea), Integer.valueOf(this.modulus), Integer.valueOf(this.pos), Integer.valueOf(this.readPos) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\binary\BaseNCodec$Context.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */