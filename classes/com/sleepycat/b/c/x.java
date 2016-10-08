package com.sleepycat.b.c;

import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ah;

public final class x
{
  public static final ag A = new ag("cursorPutCurrent", "Number of times Cursor.putCurrent is called.");
  public static final ag B = new ag("cursorPutNoDupData", "Number of times Cursor.putNoDupData is called.");
  public static final ag C = new ag("cursorPutNoOverwrite", "Number of times Cursor.putNoOverwrite is called.");
  public static final ag D = new ag("secondaryCursorDelete", "Number of times SecondaryCursor.delete is called.");
  public static final ag E = new ag("secondaryCursorGetCurrent", "Number of times SecondaryCursor.getCurrent is called.");
  public static final ag F = new ag("secondaryCursorGetFirst", "Number of times SecondaryCursor.getFirst is called.");
  public static final ag G = new ag("secondaryCursorGetLast", "Number of times SecondaryCursor.getLast is called.");
  public static final ag H = new ag("secondaryCursorGetNext", "Number of times SecondaryCursor.getNext is called.");
  public static final ag I = new ag("secondaryCursorGetNextDup", "Number of times SecondaryCursor.getNextDup is called.");
  public static final ag J = new ag("secondaryCursorGetNextNoDup", "Number of times SecondaryCursor.getNextNoDup is called.");
  public static final ag K = new ag("secondaryCursorGetPrev", "Number of times SecondaryCursor.getPrev is called.");
  public static final ag L = new ag("secondaryCursorGetPrevDup", "Number of times SecondaryCursor.getPrevDup is called.");
  public static final ag M = new ag("secondaryCursorGetPrevNoDup", "Number of times SecondaryCursor.getPrevNoDup is called.");
  public static final ag N = new ag("secondaryDbDelete", "Number of times SecondaryDatabase.delete is called.");
  public static final ag O = new ag("secondaryDbGet", "Number of times SecondaryDatabase.get is called.");
  public static final ag P = new ag("secondaryDbGetSearchBoth", "Number of times SecondaryDatabase.getSearchBoth is called.");
  public static final ag Q = new ag("dosCursorGetNext", "Number of times DiskOrderedCursor.getNext is called.");
  public static final ag a = new ag("sharedCacheTotalBytes", "Total amount of the shared JE cache in use, in bytes.", ah.b);
  public static final ag b = new ag("cacheTotalBytes", "Total amount of JE cache in use, in bytes.", ah.b);
  public static final ag c = new ag("dataBytes", "Amount of JE cache used for holding data, keys and internal Btree nodes, in bytes.", ah.b);
  public static final ag d = new ag("dataAdminBytes", "Amount of JE cache used for holding database metadata, in bytes.", ah.b);
  public static final ag e = new ag("adminBytes", "Number of bytes of JE cache used for log cleaning metadata and other administrative structure, in bytes.", ah.b);
  public static final ag f = new ag("lockBytes", "Number of bytes of JE cache used for holding locks and transactions, in bytes.", ah.b);
  public static final ag g = new ag("btreeRelatchesRequired", "Returns the number of btree latch upgrades required while operating on this Environment. A measurement of contention.");
  public static final ag h = new ag("environmentCreationTime", "Returns the time the Environment was created. ", ah.b);
  public static final ag i = new ag("dbDelete", "Number of times Database.delete is called.");
  public static final ag j = new ag("dbGet", "Number of times Database.get is called.");
  public static final ag k = new ag("dbGetSearchBoth", "Number of times Database.getSearchBoth is called.");
  public static final ag l = new ag("dbPut", "Number of times Database.put is called.");
  public static final ag m = new ag("dbPutNoDupData", "Number of times Database.putNoDupData is called.");
  public static final ag n = new ag("dbPutNoOverWrite", "Number of times Database.putNoOverWrite is called.");
  public static final ag o = new ag("dbRemoveSequence", "Number of times Database.removeSequence is called.");
  public static final ag p = new ag("cursorDelete", "Number of times Cursor.delete is called.");
  public static final ag q = new ag("cursorGetCurrent", "Number of times Cursor.getCurrent is called.");
  public static final ag r = new ag("cursorGetFirst", "Number of times Cursor.getFirst is called.");
  public static final ag s = new ag("cursorGetLast", "Number of times Cursor.getLast is called.");
  public static final ag t = new ag("cursorGetNext", "Number of times Cursor.getNext is called.");
  public static final ag u = new ag("cursorGetNextDup", "Number of times Cursor.getNextDup is called.");
  public static final ag v = new ag("cursorGetNextNoDup", "Number of times Cursor.getNextNoDup is called.");
  public static final ag w = new ag("cursorGetPrev", "Number of times Cursor.getPrev is called.");
  public static final ag x = new ag("cursorGetPrevDup", "Number of times Cursor.getPrevDup is called.");
  public static final ag y = new ag("cursorGetPrevNoDup", "Number of times Cursor. getPrevNoDup is called.");
  public static final ag z = new ag("cursorPut", "Number of times Cursor.put is called.");
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */