package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class g
  extends DataSetObservable
{
  private static final String c = g.class.getSimpleName();
  private static final Object d = new Object();
  private static final Map<String, g> e = new HashMap();
  final Object a;
  final List<h> b;
  private final List<j> f;
  private final Context g;
  private final String h;
  private Intent i;
  private i j;
  private int k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private k p;
  
  private boolean f()
  {
    if ((this.j != null) && (this.i != null) && (!this.b.isEmpty()) && (!this.f.isEmpty()))
    {
      Collections.unmodifiableList(this.f);
      return true;
    }
    return false;
  }
  
  private void g()
  {
    int i2 = this.f.size() - this.k;
    if (i2 <= 0) {}
    for (;;)
    {
      return;
      this.n = true;
      int i1 = 0;
      while (i1 < i2)
      {
        this.f.remove(0);
        i1 += 1;
      }
    }
  }
  
  /* Error */
  private void h()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	android/support/v7/internal/widget/g:g	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 62	android/support/v7/internal/widget/g:h	Ljava/lang/String;
    //   8: invokevirtual 109	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_1
    //   12: invokestatic 115	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore_2
    //   16: aload_2
    //   17: aload_1
    //   18: aconst_null
    //   19: invokeinterface 121 3 0
    //   24: iconst_0
    //   25: istore 4
    //   27: iload 4
    //   29: iconst_1
    //   30: if_icmpeq +20 -> 50
    //   33: iload 4
    //   35: iconst_2
    //   36: if_icmpeq +14 -> 50
    //   39: aload_2
    //   40: invokeinterface 124 1 0
    //   45: istore 4
    //   47: goto -20 -> 27
    //   50: ldc 126
    //   52: aload_2
    //   53: invokeinterface 129 1 0
    //   58: invokevirtual 135	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   61: ifne +50 -> 111
    //   64: new 101	org/xmlpull/v1/XmlPullParserException
    //   67: dup
    //   68: ldc -119
    //   70: invokespecial 140	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   73: athrow
    //   74: astore_2
    //   75: getstatic 43	android/support/v7/internal/widget/g:c	Ljava/lang/String;
    //   78: new 142	java/lang/StringBuilder
    //   81: dup
    //   82: ldc -112
    //   84: invokespecial 145	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   87: aload_0
    //   88: getfield 62	android/support/v7/internal/widget/g:h	Ljava/lang/String;
    //   91: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 152	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: aload_2
    //   98: invokestatic 157	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   101: pop
    //   102: aload_1
    //   103: ifnull +7 -> 110
    //   106: aload_1
    //   107: invokevirtual 162	java/io/FileInputStream:close	()V
    //   110: return
    //   111: aload_0
    //   112: getfield 79	android/support/v7/internal/widget/g:f	Ljava/util/List;
    //   115: astore_3
    //   116: aload_3
    //   117: invokeinterface 165 1 0
    //   122: aload_2
    //   123: invokeinterface 124 1 0
    //   128: istore 4
    //   130: iload 4
    //   132: iconst_1
    //   133: if_icmpeq +139 -> 272
    //   136: iload 4
    //   138: iconst_3
    //   139: if_icmpeq -17 -> 122
    //   142: iload 4
    //   144: iconst_4
    //   145: if_icmpeq -23 -> 122
    //   148: ldc -89
    //   150: aload_2
    //   151: invokeinterface 129 1 0
    //   156: invokevirtual 135	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   159: ifne +52 -> 211
    //   162: new 101	org/xmlpull/v1/XmlPullParserException
    //   165: dup
    //   166: ldc -87
    //   168: invokespecial 140	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   171: athrow
    //   172: astore_2
    //   173: getstatic 43	android/support/v7/internal/widget/g:c	Ljava/lang/String;
    //   176: new 142	java/lang/StringBuilder
    //   179: dup
    //   180: ldc -112
    //   182: invokespecial 145	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 62	android/support/v7/internal/widget/g:h	Ljava/lang/String;
    //   189: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual 152	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: aload_2
    //   196: invokestatic 157	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   199: pop
    //   200: aload_1
    //   201: ifnull -91 -> 110
    //   204: aload_1
    //   205: invokevirtual 162	java/io/FileInputStream:close	()V
    //   208: return
    //   209: astore_1
    //   210: return
    //   211: aload_3
    //   212: new 171	android/support/v7/internal/widget/j
    //   215: dup
    //   216: aload_2
    //   217: aconst_null
    //   218: ldc -83
    //   220: invokeinterface 177 3 0
    //   225: aload_2
    //   226: aconst_null
    //   227: ldc -77
    //   229: invokeinterface 177 3 0
    //   234: invokestatic 185	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   237: aload_2
    //   238: aconst_null
    //   239: ldc -69
    //   241: invokeinterface 177 3 0
    //   246: invokestatic 193	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   249: invokespecial 196	android/support/v7/internal/widget/j:<init>	(Ljava/lang/String;JF)V
    //   252: invokeinterface 199 2 0
    //   257: pop
    //   258: goto -136 -> 122
    //   261: astore_2
    //   262: aload_1
    //   263: ifnull +7 -> 270
    //   266: aload_1
    //   267: invokevirtual 162	java/io/FileInputStream:close	()V
    //   270: aload_2
    //   271: athrow
    //   272: aload_1
    //   273: ifnull -163 -> 110
    //   276: aload_1
    //   277: invokevirtual 162	java/io/FileInputStream:close	()V
    //   280: return
    //   281: astore_1
    //   282: return
    //   283: astore_1
    //   284: return
    //   285: astore_1
    //   286: goto -16 -> 270
    //   289: astore_1
    //   290: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	291	0	this	g
    //   11	194	1	localFileInputStream	java.io.FileInputStream
    //   209	68	1	localIOException1	java.io.IOException
    //   281	1	1	localIOException2	java.io.IOException
    //   283	1	1	localIOException3	java.io.IOException
    //   285	1	1	localIOException4	java.io.IOException
    //   289	1	1	localFileNotFoundException	java.io.FileNotFoundException
    //   15	38	2	localXmlPullParser	org.xmlpull.v1.XmlPullParser
    //   74	77	2	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   172	66	2	localIOException5	java.io.IOException
    //   261	10	2	localObject	Object
    //   115	97	3	localList	List
    //   25	121	4	i1	int
    // Exception table:
    //   from	to	target	type
    //   12	24	74	org/xmlpull/v1/XmlPullParserException
    //   39	47	74	org/xmlpull/v1/XmlPullParserException
    //   50	74	74	org/xmlpull/v1/XmlPullParserException
    //   111	122	74	org/xmlpull/v1/XmlPullParserException
    //   122	130	74	org/xmlpull/v1/XmlPullParserException
    //   148	172	74	org/xmlpull/v1/XmlPullParserException
    //   211	258	74	org/xmlpull/v1/XmlPullParserException
    //   12	24	172	java/io/IOException
    //   39	47	172	java/io/IOException
    //   50	74	172	java/io/IOException
    //   111	122	172	java/io/IOException
    //   122	130	172	java/io/IOException
    //   148	172	172	java/io/IOException
    //   211	258	172	java/io/IOException
    //   204	208	209	java/io/IOException
    //   12	24	261	finally
    //   39	47	261	finally
    //   50	74	261	finally
    //   75	102	261	finally
    //   111	122	261	finally
    //   122	130	261	finally
    //   148	172	261	finally
    //   173	200	261	finally
    //   211	258	261	finally
    //   276	280	281	java/io/IOException
    //   106	110	283	java/io/IOException
    //   266	270	285	java/io/IOException
    //   0	12	289	java/io/FileNotFoundException
  }
  
  public final int a()
  {
    synchronized (this.a)
    {
      d();
      int i1 = this.b.size();
      return i1;
    }
  }
  
  public final int a(ResolveInfo paramResolveInfo)
  {
    for (;;)
    {
      int i1;
      synchronized (this.a)
      {
        d();
        List localList = this.b;
        int i2 = localList.size();
        i1 = 0;
        if (i1 < i2)
        {
          if (((h)localList.get(i1)).a == paramResolveInfo) {
            return i1;
          }
        }
        else {
          return -1;
        }
      }
      i1 += 1;
    }
  }
  
  public final ResolveInfo a(int paramInt)
  {
    synchronized (this.a)
    {
      d();
      ResolveInfo localResolveInfo = ((h)this.b.get(paramInt)).a;
      return localResolveInfo;
    }
  }
  
  final boolean a(j paramj)
  {
    boolean bool = this.f.add(paramj);
    if (bool)
    {
      this.n = true;
      g();
      if (!this.m) {
        throw new IllegalStateException("No preceding call to #readHistoricalData");
      }
      if (this.n)
      {
        this.n = false;
        if (!TextUtils.isEmpty(this.h))
        {
          if (Build.VERSION.SDK_INT < 11) {
            break label123;
          }
          new l(this, (byte)0).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Object[] { new ArrayList(this.f), this.h });
        }
      }
    }
    for (;;)
    {
      f();
      notifyChanged();
      return bool;
      label123:
      new l(this, (byte)0).execute(new Object[] { new ArrayList(this.f), this.h });
    }
  }
  
  public final Intent b(int paramInt)
  {
    synchronized (this.a)
    {
      if (this.i == null) {
        return null;
      }
      d();
      Object localObject2 = (h)this.b.get(paramInt);
      localObject2 = new ComponentName(((h)localObject2).a.activityInfo.packageName, ((h)localObject2).a.activityInfo.name);
      Intent localIntent = new Intent(this.i);
      localIntent.setComponent((ComponentName)localObject2);
      if (this.p != null)
      {
        new Intent(localIntent);
        if (this.p.a()) {
          return null;
        }
      }
      a(new j((ComponentName)localObject2, System.currentTimeMillis(), 1.0F));
      return localIntent;
    }
  }
  
  public final ResolveInfo b()
  {
    synchronized (this.a)
    {
      d();
      if (!this.b.isEmpty())
      {
        ResolveInfo localResolveInfo = ((h)this.b.get(0)).a;
        return localResolveInfo;
      }
      return null;
    }
  }
  
  public final int c()
  {
    synchronized (this.a)
    {
      d();
      int i1 = this.f.size();
      return i1;
    }
  }
  
  final void d()
  {
    int i2 = 1;
    int i1;
    if ((this.o) && (this.i != null))
    {
      this.o = false;
      this.b.clear();
      List localList = this.g.getPackageManager().queryIntentActivities(this.i, 0);
      int i3 = localList.size();
      i1 = 0;
      while (i1 < i3)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i1);
        this.b.add(new h(this, localResolveInfo));
        i1 += 1;
      }
      i1 = 1;
      if ((!this.l) || (!this.n) || (TextUtils.isEmpty(this.h))) {
        break label166;
      }
      this.l = false;
      this.m = true;
      h();
    }
    for (;;)
    {
      g();
      if ((i1 | i2) != 0)
      {
        f();
        notifyChanged();
      }
      return;
      i1 = 0;
      break;
      label166:
      i2 = 0;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */