package android.support.v7.internal.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.j;
import android.support.v7.b.k;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import org.xmlpull.v1.XmlPullParser;

public final class d
  extends MenuInflater
{
  private static final Class<?>[] a;
  private static final Class<?>[] b;
  private final Object[] c;
  private final Object[] d;
  private Context e;
  private Object f;
  
  static
  {
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Context.class;
    a = arrayOfClass;
    b = arrayOfClass;
  }
  
  public d(Context paramContext)
  {
    super(paramContext);
    this.e = paramContext;
    this.f = paramContext;
    this.c = new Object[] { paramContext };
    this.d = this.c;
  }
  
  private void a(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu)
  {
    f localf = new f(this, paramMenu);
    int i = paramXmlPullParser.getEventType();
    int j = 0;
    paramMenu = null;
    Object localObject;
    int k;
    if (i == 2)
    {
      localObject = paramXmlPullParser.getName();
      if (((String)localObject).equals("menu"))
      {
        k = paramXmlPullParser.next();
        label56:
        i = 0;
        label59:
        if (i != 0) {
          return;
        }
      }
    }
    switch (k)
    {
    default: 
    case 2: 
    case 3: 
      for (;;)
      {
        k = paramXmlPullParser.next();
        break label59;
        throw new RuntimeException("Expecting menu, got " + (String)localObject);
        k = paramXmlPullParser.next();
        i = k;
        if (k != 1) {
          break;
        }
        break label56;
        if (j == 0)
        {
          localObject = paramXmlPullParser.getName();
          if (((String)localObject).equals("group"))
          {
            localObject = localf.z.e.obtainStyledAttributes(paramAttributeSet, k.MenuGroup);
            localf.b = ((TypedArray)localObject).getResourceId(1, 0);
            localf.c = ((TypedArray)localObject).getInt(3, 0);
            localf.d = ((TypedArray)localObject).getInt(4, 0);
            localf.e = ((TypedArray)localObject).getInt(5, 0);
            localf.f = ((TypedArray)localObject).getBoolean(2, true);
            localf.g = ((TypedArray)localObject).getBoolean(0, true);
            ((TypedArray)localObject).recycle();
          }
          else
          {
            if (((String)localObject).equals("item"))
            {
              localObject = localf.z.e.obtainStyledAttributes(paramAttributeSet, k.MenuItem);
              localf.i = ((TypedArray)localObject).getResourceId(2, 0);
              localf.j = (((TypedArray)localObject).getInt(5, localf.c) & 0xFFFF0000 | ((TypedArray)localObject).getInt(6, localf.d) & 0xFFFF);
              localf.k = ((TypedArray)localObject).getText(7);
              localf.l = ((TypedArray)localObject).getText(8);
              localf.m = ((TypedArray)localObject).getResourceId(0, 0);
              localf.n = f.a(((TypedArray)localObject).getString(9));
              localf.o = f.a(((TypedArray)localObject).getString(10));
              if (((TypedArray)localObject).hasValue(11)) {
                if (((TypedArray)localObject).getBoolean(11, false))
                {
                  k = 1;
                  label433:
                  localf.p = k;
                  label440:
                  localf.q = ((TypedArray)localObject).getBoolean(3, false);
                  localf.r = ((TypedArray)localObject).getBoolean(4, localf.f);
                  localf.s = ((TypedArray)localObject).getBoolean(1, localf.g);
                  localf.t = ((TypedArray)localObject).getInt(13, -1);
                  localf.x = ((TypedArray)localObject).getString(12);
                  localf.u = ((TypedArray)localObject).getResourceId(14, 0);
                  localf.v = ((TypedArray)localObject).getString(15);
                  localf.w = ((TypedArray)localObject).getString(16);
                  if (localf.w == null) {
                    break label640;
                  }
                  k = 1;
                  label557:
                  if ((k == 0) || (localf.u != 0) || (localf.v != null)) {
                    break label646;
                  }
                }
              }
              for (localf.y = ((j)localf.a(localf.w, b, localf.z.d));; localf.y = null)
              {
                ((TypedArray)localObject).recycle();
                localf.h = false;
                break;
                k = 0;
                break label433;
                localf.p = localf.e;
                break label440;
                label640:
                k = 0;
                break label557;
                label646:
                if (k != 0) {
                  Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
              }
            }
            if (((String)localObject).equals("menu"))
            {
              localf.h = true;
              localObject = localf.a.addSubMenu(localf.b, localf.i, localf.j, localf.k);
              localf.a(((SubMenu)localObject).getItem());
              a(paramXmlPullParser, paramAttributeSet, (Menu)localObject);
            }
            else
            {
              j = 1;
              paramMenu = (Menu)localObject;
              continue;
              localObject = paramXmlPullParser.getName();
              if ((j != 0) && (((String)localObject).equals(paramMenu)))
              {
                j = 0;
                paramMenu = null;
              }
              else if (((String)localObject).equals("group"))
              {
                localf.a();
              }
              else if (((String)localObject).equals("item"))
              {
                if (!localf.h)
                {
                  localf.h = true;
                  localf.a(localf.a.add(localf.b, localf.i, localf.j, localf.k));
                }
              }
              else if (((String)localObject).equals("menu"))
              {
                i = 1;
              }
            }
          }
        }
      }
    }
    throw new RuntimeException("Unexpected end of document");
  }
  
  /* Error */
  public final void inflate(int paramInt, Menu paramMenu)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 265
    //   4: ifne +10 -> 14
    //   7: aload_0
    //   8: iload_1
    //   9: aload_2
    //   10: invokespecial 267	android/view/MenuInflater:inflate	(ILandroid/view/Menu;)V
    //   13: return
    //   14: aconst_null
    //   15: astore_3
    //   16: aconst_null
    //   17: astore 5
    //   19: aconst_null
    //   20: astore 4
    //   22: aload_0
    //   23: getfield 32	android/support/v7/internal/view/d:e	Landroid/content/Context;
    //   26: invokevirtual 271	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   29: iload_1
    //   30: invokevirtual 277	android/content/res/Resources:getLayout	(I)Landroid/content/res/XmlResourceParser;
    //   33: astore 6
    //   35: aload 6
    //   37: astore 4
    //   39: aload 6
    //   41: astore_3
    //   42: aload 6
    //   44: astore 5
    //   46: aload_0
    //   47: aload 6
    //   49: aload 6
    //   51: invokestatic 283	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   54: aload_2
    //   55: invokespecial 246	android/support/v7/internal/view/d:a	(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    //   58: aload 6
    //   60: ifnull -47 -> 13
    //   63: aload 6
    //   65: invokeinterface 288 1 0
    //   70: return
    //   71: astore_2
    //   72: aload 4
    //   74: astore_3
    //   75: new 290	android/view/InflateException
    //   78: dup
    //   79: ldc_w 292
    //   82: aload_2
    //   83: invokespecial 295	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: athrow
    //   87: astore_2
    //   88: aload_3
    //   89: ifnull +9 -> 98
    //   92: aload_3
    //   93: invokeinterface 288 1 0
    //   98: aload_2
    //   99: athrow
    //   100: astore_2
    //   101: aload 5
    //   103: astore_3
    //   104: new 290	android/view/InflateException
    //   107: dup
    //   108: ldc_w 292
    //   111: aload_2
    //   112: invokespecial 295	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   115: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	d
    //   0	116	1	paramInt	int
    //   0	116	2	paramMenu	Menu
    //   15	89	3	localObject1	Object
    //   20	53	4	localObject2	Object
    //   17	85	5	localObject3	Object
    //   33	31	6	localXmlResourceParser	android.content.res.XmlResourceParser
    // Exception table:
    //   from	to	target	type
    //   22	35	71	org/xmlpull/v1/XmlPullParserException
    //   46	58	71	org/xmlpull/v1/XmlPullParserException
    //   22	35	87	finally
    //   46	58	87	finally
    //   75	87	87	finally
    //   104	116	87	finally
    //   22	35	100	java/io/IOException
    //   46	58	100	java/io/IOException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */