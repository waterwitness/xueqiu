package com.f.a.b.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import com.f.a.a.a.h;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class d
{
  private String a = "";
  private String b = "";
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  private SharedPreferences f = null;
  private b g = null;
  private SharedPreferences.Editor h = null;
  private c i = null;
  private Context j = null;
  private e k = null;
  private boolean l = false;
  
  public d(Context paramContext, String paramString1, String paramString2)
  {
    this.a = paramString2;
    this.b = paramString1;
    this.j = paramContext;
    if (paramContext != null) {
      this.f = paramContext.getSharedPreferences(paramString2, 0);
    }
    for (l1 = this.f.getLong("t", 0L);; l1 = 0L)
    {
      String str = Environment.getExternalStorageState();
      if (!h.a(str)) {
        if (str.equals("mounted"))
        {
          this.e = true;
          this.d = true;
          if (((!this.d) && (!this.e)) || (paramContext == null) || (h.a(paramString1))) {
            break label693;
          }
          this.k = b(paramString1);
          if (this.k == null) {
            break label693;
          }
        }
      }
      for (;;)
      {
        try
        {
          this.g = this.k.a(paramString2);
          l2 = this.g.a("t");
        }
        catch (Exception paramContext)
        {
          l2 = l1;
          l1 = 0L;
        }
        try
        {
          l3 = this.f.getLong("t2", 0L);
          l1 = l3;
        }
        catch (Exception paramContext)
        {
          l3 = l1;
          l1 = l2;
          l2 = l3;
        }
        try
        {
          l3 = this.g.a("t2");
          if ((l1 >= l3) || (l1 <= 0L)) {}
        }
        catch (Exception paramContext)
        {
          l3 = l1;
          l1 = l2;
          l2 = l3;
        }
        try
        {
          a(this.f, this.g);
          this.g = this.k.a(paramString2);
          l4 = l1;
          l2 = l3;
        }
        catch (Exception paramContext)
        {
          l2 = l1;
          l1 = l3;
          l4 = l2;
          l2 = l1;
          continue;
        }
        if ((l4 != l2) || ((l4 == 0L) && (l2 == 0L)))
        {
          l1 = System.currentTimeMillis();
          if ((!this.l) || ((this.l) && (l4 == 0L) && (l2 == 0L))) {
            if (this.f != null)
            {
              paramContext = this.f.edit();
              paramContext.putLong("t2", l1);
              paramContext.commit();
            }
          }
        }
        try
        {
          if (this.g != null)
          {
            paramContext = this.g.c();
            paramContext.a("t2", l1);
            paramContext.b();
          }
          return;
        }
        catch (Exception paramContext)
        {
          return;
        }
        if (str.equals("mounted_ro"))
        {
          this.d = true;
          this.e = false;
          break;
        }
        this.e = false;
        this.d = false;
        break;
        if ((l1 > l3) && (l3 > 0L))
        {
          a(this.g, this.f);
          this.f = paramContext.getSharedPreferences(paramString2, 0);
          l2 = l3;
          l4 = l1;
        }
        else if ((l1 == 0L) && (l3 > 0L))
        {
          a(this.g, this.f);
          this.f = paramContext.getSharedPreferences(paramString2, 0);
          l2 = l3;
          l4 = l1;
        }
        else if ((l3 == 0L) && (l1 > 0L))
        {
          a(this.f, this.g);
          this.g = this.k.a(paramString2);
          l2 = l3;
          l4 = l1;
        }
        else
        {
          l2 = l3;
          l4 = l1;
          if (l1 == l3)
          {
            a(this.f, this.g);
            this.g = this.k.a(paramString2);
            l2 = l3;
            l4 = l1;
            continue;
            label693:
            l2 = 0L;
            l4 = l1;
          }
        }
      }
    }
  }
  
  private static void a(SharedPreferences paramSharedPreferences, b paramb)
  {
    if ((paramSharedPreferences != null) && (paramb != null))
    {
      paramb = paramb.c();
      paramb.a();
      paramSharedPreferences = paramSharedPreferences.getAll().entrySet().iterator();
      while (paramSharedPreferences.hasNext())
      {
        Object localObject = (Map.Entry)paramSharedPreferences.next();
        String str = (String)((Map.Entry)localObject).getKey();
        localObject = ((Map.Entry)localObject).getValue();
        if ((localObject instanceof String)) {
          paramb.a(str, (String)localObject);
        } else if ((localObject instanceof Integer)) {
          paramb.a(str, ((Integer)localObject).intValue());
        } else if ((localObject instanceof Long)) {
          paramb.a(str, ((Long)localObject).longValue());
        } else if ((localObject instanceof Float)) {
          paramb.a(str, ((Float)localObject).floatValue());
        } else if ((localObject instanceof Boolean)) {
          paramb.a(str, ((Boolean)localObject).booleanValue());
        }
      }
      paramb.b();
    }
  }
  
  private static void a(b paramb, SharedPreferences paramSharedPreferences)
  {
    if ((paramb != null) && (paramSharedPreferences != null))
    {
      paramSharedPreferences = paramSharedPreferences.edit();
      if (paramSharedPreferences != null)
      {
        paramSharedPreferences.clear();
        paramb = paramb.b().entrySet().iterator();
        while (paramb.hasNext())
        {
          Object localObject = (Map.Entry)paramb.next();
          String str = (String)((Map.Entry)localObject).getKey();
          localObject = ((Map.Entry)localObject).getValue();
          if ((localObject instanceof String)) {
            paramSharedPreferences.putString(str, (String)localObject);
          } else if ((localObject instanceof Integer)) {
            paramSharedPreferences.putInt(str, ((Integer)localObject).intValue());
          } else if ((localObject instanceof Long)) {
            paramSharedPreferences.putLong(str, ((Long)localObject).longValue());
          } else if ((localObject instanceof Float)) {
            paramSharedPreferences.putFloat(str, ((Float)localObject).floatValue());
          } else if ((localObject instanceof Boolean)) {
            paramSharedPreferences.putBoolean(str, ((Boolean)localObject).booleanValue());
          }
        }
        paramSharedPreferences.commit();
      }
    }
  }
  
  private e b(String paramString)
  {
    e locale = null;
    File localFile = Environment.getExternalStorageDirectory();
    if (localFile != null)
    {
      localFile = new File(String.format("%s%s%s", new Object[] { localFile.getAbsolutePath(), File.separator, paramString }));
      paramString = localFile;
      if (!localFile.exists()) {
        localFile.mkdirs();
      }
    }
    for (paramString = localFile;; paramString = null)
    {
      if (paramString != null)
      {
        this.k = new e(paramString.getAbsolutePath());
        locale = this.k;
      }
      return locale;
    }
  }
  
  private boolean b()
  {
    if (this.g != null)
    {
      boolean bool = this.g.a();
      if (!bool) {
        a();
      }
      return bool;
    }
    return false;
  }
  
  private void c()
  {
    if ((this.h == null) && (this.f != null)) {
      this.h = this.f.edit();
    }
    if ((this.e) && (this.i == null) && (this.g != null)) {
      this.i = this.g.c();
    }
    b();
  }
  
  public final String a(String paramString)
  {
    b();
    if (this.f != null)
    {
      String str = this.f.getString(paramString, "");
      if (!h.a(str)) {
        return str;
      }
    }
    if (this.g != null) {
      return this.g.a(paramString, "");
    }
    return "";
  }
  
  public final void a(String paramString, long paramLong)
  {
    if ((!h.a(paramString)) && (!paramString.equals("t")))
    {
      c();
      if (this.h != null) {
        this.h.putLong(paramString, paramLong);
      }
      if (this.i != null) {
        this.i.a(paramString, paramLong);
      }
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if ((!h.a(paramString1)) && (!paramString1.equals("t")))
    {
      c();
      if (this.h != null) {
        this.h.putString(paramString1, paramString2);
      }
      if (this.i != null) {
        this.i.a(paramString1, paramString2);
      }
    }
  }
  
  public final boolean a()
  {
    boolean bool2 = true;
    long l1 = System.currentTimeMillis();
    boolean bool1 = bool2;
    if (this.h != null)
    {
      if ((!this.l) && (this.f != null)) {
        this.h.putLong("t", l1);
      }
      bool1 = bool2;
      if (!this.h.commit()) {
        bool1 = false;
      }
    }
    if ((this.f != null) && (this.j != null)) {
      this.f = this.j.getSharedPreferences(this.a, 0);
    }
    String str = Environment.getExternalStorageState();
    boolean bool3 = bool1;
    if (!h.a(str))
    {
      bool2 = bool1;
      if (str.equals("mounted"))
      {
        if (this.g != null) {
          break label273;
        }
        e locale = b(this.b);
        bool2 = bool1;
        if (locale != null)
        {
          this.g = locale.a(this.a);
          if (this.l) {
            break label259;
          }
          a(this.f, this.g);
          this.i = this.g.c();
          bool2 = bool1;
        }
      }
    }
    for (;;)
    {
      if (!str.equals("mounted"))
      {
        bool3 = bool2;
        if (str.equals("mounted_ro"))
        {
          bool3 = bool2;
          if (this.g == null) {}
        }
      }
      else
      {
        bool3 = bool2;
      }
      label259:
      try
      {
        if (this.k != null)
        {
          this.g = this.k.a(this.a);
          bool3 = bool2;
        }
        return bool3;
      }
      catch (Exception localException) {}
      a(this.g, this.f);
      break;
      label273:
      bool2 = bool1;
      if (this.i != null)
      {
        bool2 = bool1;
        if (!this.i.b()) {
          bool2 = false;
        }
      }
    }
    return bool2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\b\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */