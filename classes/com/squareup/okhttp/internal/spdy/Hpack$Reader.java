package com.squareup.okhttp.internal.spdy;

import c.f;
import c.g;
import c.m;
import c.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class Hpack$Reader
{
  Header[] dynamicTable = new Header[8];
  int dynamicTableByteCount = 0;
  int headerCount = 0;
  private final List<Header> headerList = new ArrayList();
  private int headerTableSizeSetting;
  private int maxDynamicTableByteCount;
  int nextHeaderIndex = this.dynamicTable.length - 1;
  private final f source;
  
  Hpack$Reader(int paramInt, s params)
  {
    this.headerTableSizeSetting = paramInt;
    this.maxDynamicTableByteCount = paramInt;
    this.source = m.a(params);
  }
  
  private void adjustDynamicTableByteCount()
  {
    if (this.maxDynamicTableByteCount < this.dynamicTableByteCount)
    {
      if (this.maxDynamicTableByteCount == 0) {
        clearDynamicTable();
      }
    }
    else {
      return;
    }
    evictToRecoverBytes(this.dynamicTableByteCount - this.maxDynamicTableByteCount);
  }
  
  private void clearDynamicTable()
  {
    this.headerList.clear();
    Arrays.fill(this.dynamicTable, null);
    this.nextHeaderIndex = (this.dynamicTable.length - 1);
    this.headerCount = 0;
    this.dynamicTableByteCount = 0;
  }
  
  private int dynamicTableIndex(int paramInt)
  {
    return this.nextHeaderIndex + 1 + paramInt;
  }
  
  private int evictToRecoverBytes(int paramInt)
  {
    int i = 0;
    int k = 0;
    if (paramInt > 0)
    {
      i = this.dynamicTable.length - 1;
      int j = paramInt;
      paramInt = k;
      while ((i >= this.nextHeaderIndex) && (j > 0))
      {
        j -= this.dynamicTable[i].hpackSize;
        this.dynamicTableByteCount -= this.dynamicTable[i].hpackSize;
        this.headerCount -= 1;
        paramInt += 1;
        i -= 1;
      }
      System.arraycopy(this.dynamicTable, this.nextHeaderIndex + 1, this.dynamicTable, this.nextHeaderIndex + 1 + paramInt, this.headerCount);
      this.nextHeaderIndex += paramInt;
      i = paramInt;
    }
    return i;
  }
  
  private g getName(int paramInt)
  {
    if (isStaticHeader(paramInt)) {
      return Hpack.access$000()[paramInt].name;
    }
    return this.dynamicTable[dynamicTableIndex(paramInt - Hpack.access$000().length)].name;
  }
  
  private void insertIntoDynamicTable(int paramInt, Header paramHeader)
  {
    this.headerList.add(paramHeader);
    int j = paramHeader.hpackSize;
    int i = j;
    if (paramInt != -1) {
      i = j - this.dynamicTable[dynamicTableIndex(paramInt)].hpackSize;
    }
    if (i > this.maxDynamicTableByteCount)
    {
      clearDynamicTable();
      return;
    }
    j = evictToRecoverBytes(this.dynamicTableByteCount + i - this.maxDynamicTableByteCount);
    if (paramInt == -1)
    {
      if (this.headerCount + 1 > this.dynamicTable.length)
      {
        Header[] arrayOfHeader = new Header[this.dynamicTable.length * 2];
        System.arraycopy(this.dynamicTable, 0, arrayOfHeader, this.dynamicTable.length, this.dynamicTable.length);
        this.nextHeaderIndex = (this.dynamicTable.length - 1);
        this.dynamicTable = arrayOfHeader;
      }
      paramInt = this.nextHeaderIndex;
      this.nextHeaderIndex = (paramInt - 1);
      this.dynamicTable[paramInt] = paramHeader;
      this.headerCount += 1;
    }
    for (;;)
    {
      this.dynamicTableByteCount = (i + this.dynamicTableByteCount);
      return;
      int k = dynamicTableIndex(paramInt);
      this.dynamicTable[(j + k + paramInt)] = paramHeader;
    }
  }
  
  private boolean isStaticHeader(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= Hpack.access$000().length - 1);
  }
  
  private int readByte()
  {
    return this.source.f() & 0xFF;
  }
  
  private void readIndexedHeader(int paramInt)
  {
    if (isStaticHeader(paramInt))
    {
      Header localHeader = Hpack.access$000()[paramInt];
      this.headerList.add(localHeader);
      return;
    }
    int i = dynamicTableIndex(paramInt - Hpack.access$000().length);
    if ((i < 0) || (i > this.dynamicTable.length - 1)) {
      throw new IOException("Header index too large " + (paramInt + 1));
    }
    this.headerList.add(this.dynamicTable[i]);
  }
  
  private void readLiteralHeaderWithIncrementalIndexingIndexedName(int paramInt)
  {
    insertIntoDynamicTable(-1, new Header(getName(paramInt), readByteString()));
  }
  
  private void readLiteralHeaderWithIncrementalIndexingNewName()
  {
    insertIntoDynamicTable(-1, new Header(Hpack.access$100(readByteString()), readByteString()));
  }
  
  private void readLiteralHeaderWithoutIndexingIndexedName(int paramInt)
  {
    g localg1 = getName(paramInt);
    g localg2 = readByteString();
    this.headerList.add(new Header(localg1, localg2));
  }
  
  private void readLiteralHeaderWithoutIndexingNewName()
  {
    g localg1 = Hpack.access$100(readByteString());
    g localg2 = readByteString();
    this.headerList.add(new Header(localg1, localg2));
  }
  
  public final List<Header> getAndResetHeaderList()
  {
    ArrayList localArrayList = new ArrayList(this.headerList);
    this.headerList.clear();
    return localArrayList;
  }
  
  final void headerTableSizeSetting(int paramInt)
  {
    this.headerTableSizeSetting = paramInt;
    this.maxDynamicTableByteCount = paramInt;
    adjustDynamicTableByteCount();
  }
  
  final int maxDynamicTableByteCount()
  {
    return this.maxDynamicTableByteCount;
  }
  
  final g readByteString()
  {
    int j = readByte();
    if ((j & 0x80) == 128) {}
    for (int i = 1;; i = 0)
    {
      j = readInt(j, 127);
      if (i == 0) {
        break;
      }
      return g.a(Huffman.get().decode(this.source.e(j)));
    }
    return this.source.c(j);
  }
  
  final void readHeaders()
  {
    while (!this.source.d())
    {
      int i = this.source.f() & 0xFF;
      if (i == 128) {
        throw new IOException("index == 0");
      }
      if ((i & 0x80) == 128)
      {
        readIndexedHeader(readInt(i, 127) - 1);
      }
      else if (i == 64)
      {
        readLiteralHeaderWithIncrementalIndexingNewName();
      }
      else if ((i & 0x40) == 64)
      {
        readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(i, 63) - 1);
      }
      else if ((i & 0x20) == 32)
      {
        this.maxDynamicTableByteCount = readInt(i, 31);
        if ((this.maxDynamicTableByteCount < 0) || (this.maxDynamicTableByteCount > this.headerTableSizeSetting)) {
          throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
        }
        adjustDynamicTableByteCount();
      }
      else if ((i == 16) || (i == 0))
      {
        readLiteralHeaderWithoutIndexingNewName();
      }
      else
      {
        readLiteralHeaderWithoutIndexingIndexedName(readInt(i, 15) - 1);
      }
    }
  }
  
  final int readInt(int paramInt1, int paramInt2)
  {
    paramInt1 &= paramInt2;
    if (paramInt1 < paramInt2) {
      return paramInt1;
    }
    paramInt1 = 0;
    int i;
    for (;;)
    {
      i = readByte();
      if ((i & 0x80) == 0) {
        break;
      }
      paramInt2 += ((i & 0x7F) << paramInt1);
      paramInt1 += 7;
    }
    return (i << paramInt1) + paramInt2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Hpack$Reader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */