package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class ak
  extends j
{
  private static ArrayList<aj> A;
  private static Map<String, String> B;
  private static Map<String, String> C;
  private static Map<String, String> v = new HashMap();
  private static ai w;
  private static ah x;
  private static ArrayList<ah> y;
  private static ArrayList<ah> z;
  public String a = "";
  public long b = 0L;
  public String c = "";
  public String d = "";
  public String e = "";
  public String f = "";
  public String g = "";
  public Map<String, String> h = null;
  public String i = "";
  public ai j = null;
  public int k = 0;
  public String l = "";
  public String m = "";
  public ah n = null;
  public ArrayList<ah> o = null;
  public ArrayList<ah> p = null;
  public ArrayList<aj> q = null;
  public Map<String, String> r = null;
  public Map<String, String> s = null;
  public String t = "";
  private boolean u = true;
  
  static
  {
    v.put("", "");
    w = new ai();
    x = new ah();
    y = new ArrayList();
    Object localObject = new ah();
    y.add(localObject);
    z = new ArrayList();
    localObject = new ah();
    z.add(localObject);
    A = new ArrayList();
    localObject = new aj();
    A.add(localObject);
    B = new HashMap();
    B.put("", "");
    C = new HashMap();
    C.put("", "");
  }
  
  public final void a(h paramh)
  {
    this.a = paramh.b(0, true);
    this.b = paramh.a(this.b, 1, true);
    this.c = paramh.b(2, true);
    this.d = paramh.b(3, false);
    this.e = paramh.b(4, false);
    this.f = paramh.b(5, false);
    this.g = paramh.b(6, false);
    this.h = ((Map)paramh.a(v, 7, false));
    this.i = paramh.b(8, false);
    this.j = ((ai)paramh.a(w, 9, false));
    this.k = paramh.a(this.k, 10, false);
    this.l = paramh.b(11, false);
    this.m = paramh.b(12, false);
    this.n = ((ah)paramh.a(x, 13, false));
    this.o = ((ArrayList)paramh.a(y, 14, false));
    this.p = ((ArrayList)paramh.a(z, 15, false));
    this.q = ((ArrayList)paramh.a(A, 16, false));
    this.r = ((Map)paramh.a(B, 17, false));
    this.s = ((Map)paramh.a(C, 18, false));
    this.t = paramh.b(19, false);
    this.u = paramh.a(20, false);
  }
  
  public final void a(i parami)
  {
    parami.a(this.a, 0);
    parami.a(this.b, 1);
    parami.a(this.c, 2);
    if (this.d != null) {
      parami.a(this.d, 3);
    }
    if (this.e != null) {
      parami.a(this.e, 4);
    }
    if (this.f != null) {
      parami.a(this.f, 5);
    }
    if (this.g != null) {
      parami.a(this.g, 6);
    }
    if (this.h != null) {
      parami.a(this.h, 7);
    }
    if (this.i != null) {
      parami.a(this.i, 8);
    }
    if (this.j != null) {
      parami.a(this.j, 9);
    }
    parami.a(this.k, 10);
    if (this.l != null) {
      parami.a(this.l, 11);
    }
    if (this.m != null) {
      parami.a(this.m, 12);
    }
    if (this.n != null) {
      parami.a(this.n, 13);
    }
    if (this.o != null) {
      parami.a(this.o, 14);
    }
    if (this.p != null) {
      parami.a(this.p, 15);
    }
    if (this.q != null) {
      parami.a(this.q, 16);
    }
    if (this.r != null) {
      parami.a(this.r, 17);
    }
    if (this.s != null) {
      parami.a(this.s, 18);
    }
    if (this.t != null) {
      parami.a(this.t, 19);
    }
    parami.a(this.u, 20);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */