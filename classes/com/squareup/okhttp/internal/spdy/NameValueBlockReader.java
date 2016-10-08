package com.squareup.okhttp.internal.spdy;

import c.d;
import c.f;
import c.g;
import c.j;
import c.l;
import c.m;
import c.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.Inflater;

class NameValueBlockReader
{
  private int compressedLimit;
  private final l inflaterSource = new l(new j(paramf)new Inflater
  {
    public long read(d paramAnonymousd, long paramAnonymousLong)
    {
      if (NameValueBlockReader.this.compressedLimit == 0) {}
      do
      {
        return -1L;
        paramAnonymousLong = super.read(paramAnonymousd, Math.min(paramAnonymousLong, NameValueBlockReader.this.compressedLimit));
      } while (paramAnonymousLong == -1L);
      NameValueBlockReader.access$002(NameValueBlockReader.this, (int)(NameValueBlockReader.this.compressedLimit - paramAnonymousLong));
      return paramAnonymousLong;
    }
  }, new Inflater()
  {
    public int inflate(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      int j = super.inflate(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
      int i = j;
      if (j == 0)
      {
        i = j;
        if (needsDictionary())
        {
          setDictionary(Spdy3.DICTIONARY);
          i = super.inflate(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        }
      }
      return i;
    }
  });
  private final f source = m.a(this.inflaterSource);
  
  public NameValueBlockReader(f paramf) {}
  
  private void doneReading()
  {
    if (this.compressedLimit > 0)
    {
      this.inflaterSource.a();
      if (this.compressedLimit != 0) {
        throw new IOException("compressedLimit > 0: " + this.compressedLimit);
      }
    }
  }
  
  private g readByteString()
  {
    int i = this.source.h();
    return this.source.c(i);
  }
  
  public void close()
  {
    this.source.close();
  }
  
  public List<Header> readNameValueBlock(int paramInt)
  {
    this.compressedLimit += paramInt;
    int i = this.source.h();
    if (i < 0) {
      throw new IOException("numberOfPairs < 0: " + i);
    }
    if (i > 1024) {
      throw new IOException("numberOfPairs > 1024: " + i);
    }
    ArrayList localArrayList = new ArrayList(i);
    paramInt = 0;
    while (paramInt < i)
    {
      g localg1 = readByteString().c();
      g localg2 = readByteString();
      if (localg1.c.length == 0) {
        throw new IOException("name.size == 0");
      }
      localArrayList.add(new Header(localg1, localg2));
      paramInt += 1;
    }
    doneReading();
    return localArrayList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\NameValueBlockReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */