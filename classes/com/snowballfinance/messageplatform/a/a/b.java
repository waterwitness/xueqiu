package com.snowballfinance.messageplatform.a.a;

import com.snowballfinance.messageplatform.a.d;
import com.snowballfinance.messageplatform.a.f;
import com.snowballfinance.messageplatform.a.g;
import com.snowballfinance.messageplatform.a.h;
import com.snowballfinance.messageplatform.a.i;
import com.snowballfinance.messageplatform.a.j;
import com.snowballfinance.messageplatform.a.k;
import com.snowballfinance.messageplatform.a.l;
import com.snowballfinance.messageplatform.a.m;
import com.snowballfinance.messageplatform.a.n;
import com.snowballfinance.messageplatform.a.o;
import com.snowballfinance.messageplatform.a.q;
import com.snowballfinance.messageplatform.a.s;
import com.snowballfinance.messageplatform.a.t;
import com.snowballfinance.messageplatform.a.u;
import com.snowballfinance.messageplatform.a.w;
import com.snowballfinance.messageplatform.a.y;
import com.snowballfinance.messageplatform.a.z;
import com.snowballfinance.messageplatform.data.Message;
import com.snowballfinance.messageplatform.data.MessageSession;
import com.snowballfinance.messageplatform.data.MessageSessionExt;
import java.util.Iterator;
import java.util.List;

public class b
{
  public e a = new e();
  public e b = new e();
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public static void a(com.snowballfinance.messageplatform.a.a parama, int paramInt, e parame)
  {
    if ((!c) && (s.a(parama) == null)) {
      throw new AssertionError();
    }
    if ((!c) && (parama.b == null)) {
      throw new AssertionError();
    }
    s locals = s.a(parama);
    if (locals == null) {
      throw new c("unknown command type");
    }
    parame.a(locals.ordinal());
    if (parama.a != null) {}
    for (int i = parama.a.intValue();; i = 0)
    {
      parame.b(i);
      parama = com.snowballfinance.messageplatform.b.a.a(parama.b);
      parame.d(parama.length);
      parame.write(parama);
      parame.d(paramInt);
      return;
    }
  }
  
  public static void a(com.snowballfinance.messageplatform.a.b paramb, e parame)
  {
    boolean bool2 = true;
    if ((!c) && (paramb.c == null)) {
      throw new AssertionError();
    }
    if ((!c) && (paramb.d == null)) {
      throw new AssertionError();
    }
    parame.a(paramb.c.longValue());
    parame.a(paramb.d);
    Boolean localBoolean1;
    if (paramb.f != null)
    {
      bool1 = true;
      localBoolean1 = Boolean.valueOf(bool1);
      if (paramb.e == null) {
        break label154;
      }
    }
    label154:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      Boolean localBoolean2 = Boolean.valueOf(bool1);
      parame.a(localBoolean1.booleanValue());
      parame.a(localBoolean2.booleanValue());
      parame.a();
      if (localBoolean2.booleanValue()) {
        parame.a(paramb.e);
      }
      if (localBoolean1.booleanValue()) {
        parame.a(paramb.f);
      }
      return;
      bool1 = false;
      break;
    }
  }
  
  public static void a(com.snowballfinance.messageplatform.a.c paramc, e parame)
  {
    if ((!c) && (paramc.c == null)) {
      throw new AssertionError();
    }
    parame.a(paramc.c.longValue());
    if ((paramc.d != null) && (paramc.d.booleanValue())) {}
    for (int i = 1;; i = 0)
    {
      parame.a(i);
      return;
    }
  }
  
  public static void a(d paramd, e parame)
  {
    if ((!c) && (paramd.c == null)) {
      throw new AssertionError();
    }
    if ((!c) && (paramd.d == null)) {
      throw new AssertionError();
    }
    parame.a(paramd.c.longValue());
    parame.a(paramd.d.longValue());
    if ((paramd.e != null) && (paramd.e.booleanValue())) {}
    for (int i = 1;; i = 0)
    {
      parame.a(i);
      return;
    }
  }
  
  public static void a(com.snowballfinance.messageplatform.a.e parame, e parame1)
  {
    if ((parame.c != null) && (parame.c.booleanValue())) {}
    for (int i = 1;; i = 0)
    {
      parame1.a(i);
      parame = parame.d;
      if (parame == null) {
        break;
      }
      parame = parame.iterator();
      while (parame.hasNext()) {
        ((Message)parame.next()).encodeMessage(parame1);
      }
    }
  }
  
  public static void a(f paramf, e parame)
  {
    paramf = paramf.c;
    if ((!c) && (paramf == null)) {
      throw new AssertionError();
    }
    paramf = paramf.iterator();
    while (paramf.hasNext()) {
      parame.a(((Long)paramf.next()).longValue());
    }
  }
  
  public static void a(g paramg, e parame)
  {
    if (paramg.c != null) {}
    for (long l = paramg.c.longValue();; l = 0L)
    {
      parame.a(l);
      return;
    }
  }
  
  public static void a(h paramh, e parame)
  {
    if ((!c) && (paramh.c == null)) {
      throw new AssertionError();
    }
    parame.a(paramh.c.longValue());
  }
  
  public static void a(i parami, e parame)
  {
    parami = parami.c.iterator();
    while (parami.hasNext()) {
      ((MessageSessionExt)parami.next()).encodeMessageSessionExt(parame);
    }
  }
  
  public static void a(j paramj, e parame)
  {
    if ((!c) && (paramj.c == null)) {
      throw new AssertionError();
    }
    parame.a(paramj.c.longValue());
  }
  
  public static void a(k paramk, e parame)
  {
    paramk = paramk.c.iterator();
    while (paramk.hasNext()) {
      ((MessageSession)paramk.next()).encodeMessageSession(parame);
    }
  }
  
  public static void a(l paraml, e parame)
  {
    boolean bool2 = true;
    if ((!c) && (paraml.c == null)) {
      throw new AssertionError();
    }
    if ((!c) && (paraml.d == null)) {
      throw new AssertionError();
    }
    parame.a(paraml.c.longValue());
    parame.a(paraml.d.longValue());
    int i;
    if ((paraml.e != null) && (paraml.e.booleanValue()))
    {
      i = 1;
      parame.a(i);
      if (paraml.f == null) {
        break label198;
      }
      bool1 = true;
      label100:
      parame.a(bool1);
      if (paraml.g == null) {
        break label203;
      }
      bool1 = true;
      label114:
      parame.a(bool1);
      if (paraml.h == null) {
        break label208;
      }
    }
    label198:
    label203:
    label208:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      parame.a(bool1);
      parame.a();
      if (paraml.f != null) {
        parame.a(paraml.f.longValue());
      }
      if (paraml.g != null) {
        parame.a(paraml.g.longValue());
      }
      if (paraml.h != null) {
        parame.b(paraml.h.intValue());
      }
      return;
      i = 0;
      break;
      bool1 = false;
      break label100;
      bool1 = false;
      break label114;
    }
  }
  
  public static void a(m paramm, e parame)
  {
    paramm = paramm.c.iterator();
    while (paramm.hasNext()) {
      ((Message)paramm.next()).encodeMessage(parame);
    }
  }
  
  public static void a(n paramn, e parame)
  {
    parame.a(paramn.c.longValue());
  }
  
  public static void a(o paramo, e parame)
  {
    parame.c(paramo.d);
    paramo = paramo.c.iterator();
    while (paramo.hasNext()) {
      parame.a((String)paramo.next());
    }
  }
  
  public static void a(q paramq, e parame)
  {
    if ((!c) && (paramq.c == null)) {
      throw new AssertionError();
    }
    if ((!c) && (paramq.d == null)) {
      throw new AssertionError();
    }
    parame.a(paramq.c.longValue());
    parame.a(paramq.d.longValue());
    if ((paramq.e != null) && (paramq.e.booleanValue())) {}
    for (int i = 1;; i = 0)
    {
      parame.a(i);
      return;
    }
  }
  
  public static void a(t paramt, e parame)
  {
    if ((!c) && (paramt.c == null)) {
      throw new AssertionError();
    }
    if ((!c) && (paramt.d == null)) {
      throw new AssertionError();
    }
    parame.a(paramt.c.longValue());
    parame.a(paramt.d.longValue());
    if ((paramt.e != null) && (paramt.e.booleanValue())) {}
    for (int i = 1;; i = 0)
    {
      parame.a(i);
      return;
    }
  }
  
  public static void a(u paramu, e parame)
  {
    if ((!c) && (paramu.c == null)) {
      throw new AssertionError();
    }
    paramu.c.encodeMessageSession(parame);
  }
  
  public static void a(w paramw, e parame)
  {
    byte[] arrayOfByte1;
    if (paramw.d != null)
    {
      arrayOfByte1 = paramw.d;
      if (paramw.e == null) {
        break label57;
      }
    }
    label57:
    for (byte[] arrayOfByte2 = paramw.e;; arrayOfByte2 = new byte[0])
    {
      parame.c(2);
      parame.c(paramw.f - 1);
      parame.a(arrayOfByte2);
      parame.a(arrayOfByte1);
      return;
      arrayOfByte1 = new byte[0];
      break;
    }
  }
  
  public static void a(y paramy, e parame)
  {
    byte[] arrayOfByte1;
    if (paramy.g != null)
    {
      arrayOfByte1 = paramy.g;
      if (paramy.h == null) {
        break label74;
      }
    }
    label74:
    for (byte[] arrayOfByte2 = paramy.h;; arrayOfByte2 = new byte[0])
    {
      parame.c(2);
      parame.a(paramy.f.longValue());
      parame.a(paramy.e);
      parame.a(paramy.d);
      parame.a(arrayOfByte2);
      parame.a(arrayOfByte1);
      return;
      arrayOfByte1 = new byte[0];
      break;
    }
  }
  
  public static void a(z paramz, e parame)
  {
    byte[] arrayOfByte1;
    if (paramz.f != null)
    {
      arrayOfByte1 = paramz.f;
      if (paramz.g == null) {
        break label66;
      }
    }
    label66:
    for (byte[] arrayOfByte2 = paramz.g;; arrayOfByte2 = new byte[0])
    {
      parame.c(2);
      parame.a(paramz.d);
      parame.b(paramz.e.intValue());
      parame.a(arrayOfByte2);
      parame.a(arrayOfByte1);
      return;
      arrayOfByte1 = new byte[0];
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */