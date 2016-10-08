package android.support.v4.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.e.c;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.aj;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class r
  extends q
  implements aj
{
  static final Interpolator A = new DecelerateInterpolator(2.5F);
  static final Interpolator B = new DecelerateInterpolator(1.5F);
  static final Interpolator C = new AccelerateInterpolator(2.5F);
  static final Interpolator D = new AccelerateInterpolator(1.5F);
  static boolean a;
  static final boolean b;
  static Field r;
  ArrayList<Runnable> c;
  Runnable[] d;
  boolean e;
  ArrayList<i> f;
  ArrayList<i> g;
  ArrayList<Integer> h;
  ArrayList<b> i;
  ArrayList<i> j;
  ArrayList<b> k;
  ArrayList<Integer> l;
  ArrayList<Object> m;
  int n = 0;
  p o;
  n p;
  i q;
  boolean s;
  boolean t;
  boolean u;
  String v;
  boolean w;
  Bundle x = null;
  SparseArray<Parcelable> y = null;
  Runnable z = new Runnable()
  {
    public final void run()
    {
      r.this.f();
    }
  };
  
  static
  {
    boolean bool = false;
    a = false;
    if (Build.VERSION.SDK_INT >= 11) {
      bool = true;
    }
    b = bool;
    r = null;
  }
  
  private i a(Bundle paramBundle, String paramString)
  {
    int i1 = paramBundle.getInt(paramString, -1);
    if (i1 == -1) {
      paramBundle = null;
    }
    i locali;
    do
    {
      return paramBundle;
      if (i1 >= this.f.size()) {
        a(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i1));
      }
      locali = (i)this.f.get(i1);
      paramBundle = locali;
    } while (locali != null);
    a(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i1));
    return locali;
  }
  
  private static Animation a(float paramFloat1, float paramFloat2)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat1, paramFloat2);
    localAlphaAnimation.setInterpolator(B);
    localAlphaAnimation.setDuration(220L);
    return localAlphaAnimation;
  }
  
  private static Animation a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    Object localObject = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    ((ScaleAnimation)localObject).setInterpolator(A);
    ((ScaleAnimation)localObject).setDuration(220L);
    localAnimationSet.addAnimation((Animation)localObject);
    localObject = new AlphaAnimation(paramFloat3, paramFloat4);
    ((AlphaAnimation)localObject).setInterpolator(B);
    ((AlphaAnimation)localObject).setDuration(220L);
    localAnimationSet.addAnimation((Animation)localObject);
    return localAnimationSet;
  }
  
  private Animation a(i parami, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    int i1 = parami.R;
    i.n();
    if (parami.R != 0)
    {
      parami = AnimationUtils.loadAnimation(this.o.c, parami.R);
      if (parami != null) {
        return parami;
      }
    }
    if (paramInt1 == 0) {
      return null;
    }
    i1 = -1;
    switch (paramInt1)
    {
    default: 
      paramInt1 = i1;
    }
    while (paramInt1 < 0)
    {
      return null;
      if (paramBoolean)
      {
        paramInt1 = 1;
      }
      else
      {
        paramInt1 = 2;
        continue;
        if (paramBoolean)
        {
          paramInt1 = 3;
        }
        else
        {
          paramInt1 = 4;
          continue;
          if (paramBoolean) {
            paramInt1 = 5;
          } else {
            paramInt1 = 6;
          }
        }
      }
    }
    switch (paramInt1)
    {
    default: 
      paramInt1 = paramInt2;
      if (paramInt2 == 0)
      {
        paramInt1 = paramInt2;
        if (this.o.e()) {
          paramInt1 = this.o.f();
        }
      }
      if (paramInt1 == 0) {
        return null;
      }
      break;
    case 1: 
      return a(1.125F, 1.0F, 0.0F, 1.0F);
    case 2: 
      return a(1.0F, 0.975F, 1.0F, 0.0F);
    case 3: 
      return a(0.975F, 1.0F, 0.0F, 1.0F);
    case 4: 
      return a(1.0F, 1.075F, 1.0F, 0.0F);
    case 5: 
      return a(0.0F, 1.0F);
    case 6: 
      return a(1.0F, 0.0F);
    }
    return null;
  }
  
  /* Error */
  private void a(int paramInt, b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 223	android/support/v4/a/r:k	Ljava/util/ArrayList;
    //   6: ifnonnull +14 -> 20
    //   9: aload_0
    //   10: new 118	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 224	java/util/ArrayList:<init>	()V
    //   17: putfield 223	android/support/v4/a/r:k	Ljava/util/ArrayList;
    //   20: aload_0
    //   21: getfield 223	android/support/v4/a/r:k	Ljava/util/ArrayList;
    //   24: invokevirtual 122	java/util/ArrayList:size	()I
    //   27: istore 4
    //   29: iload 4
    //   31: istore_3
    //   32: iload_1
    //   33: iload 4
    //   35: if_icmpge +53 -> 88
    //   38: getstatic 65	android/support/v4/a/r:a	Z
    //   41: ifeq +34 -> 75
    //   44: ldc -30
    //   46: new 126	java/lang/StringBuilder
    //   49: dup
    //   50: ldc -28
    //   52: invokespecial 131	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   55: iload_1
    //   56: invokevirtual 140	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   59: ldc -26
    //   61: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: aload_2
    //   65: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokestatic 238	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   74: pop
    //   75: aload_0
    //   76: getfield 223	android/support/v4/a/r:k	Ljava/util/ArrayList;
    //   79: iload_1
    //   80: aload_2
    //   81: invokevirtual 242	java/util/ArrayList:set	(ILjava/lang/Object;)Ljava/lang/Object;
    //   84: pop
    //   85: aload_0
    //   86: monitorexit
    //   87: return
    //   88: iload_3
    //   89: iload_1
    //   90: if_icmpge +77 -> 167
    //   93: aload_0
    //   94: getfield 223	android/support/v4/a/r:k	Ljava/util/ArrayList;
    //   97: aconst_null
    //   98: invokevirtual 246	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   101: pop
    //   102: aload_0
    //   103: getfield 248	android/support/v4/a/r:l	Ljava/util/ArrayList;
    //   106: ifnonnull +14 -> 120
    //   109: aload_0
    //   110: new 118	java/util/ArrayList
    //   113: dup
    //   114: invokespecial 224	java/util/ArrayList:<init>	()V
    //   117: putfield 248	android/support/v4/a/r:l	Ljava/util/ArrayList;
    //   120: getstatic 65	android/support/v4/a/r:a	Z
    //   123: ifeq +25 -> 148
    //   126: ldc -30
    //   128: new 126	java/lang/StringBuilder
    //   131: dup
    //   132: ldc -6
    //   134: invokespecial 131	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: iload_3
    //   138: invokevirtual 140	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   141: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokestatic 238	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   147: pop
    //   148: aload_0
    //   149: getfield 248	android/support/v4/a/r:l	Ljava/util/ArrayList;
    //   152: iload_3
    //   153: invokestatic 256	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   156: invokevirtual 246	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   159: pop
    //   160: iload_3
    //   161: iconst_1
    //   162: iadd
    //   163: istore_3
    //   164: goto -76 -> 88
    //   167: getstatic 65	android/support/v4/a/r:a	Z
    //   170: ifeq +36 -> 206
    //   173: ldc -30
    //   175: new 126	java/lang/StringBuilder
    //   178: dup
    //   179: ldc_w 258
    //   182: invokespecial 131	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: iload_1
    //   186: invokevirtual 140	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   189: ldc_w 260
    //   192: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_2
    //   196: invokevirtual 233	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokestatic 238	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   205: pop
    //   206: aload_0
    //   207: getfield 223	android/support/v4/a/r:k	Ljava/util/ArrayList;
    //   210: aload_2
    //   211: invokevirtual 246	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   214: pop
    //   215: goto -130 -> 85
    //   218: astore_2
    //   219: aload_0
    //   220: monitorexit
    //   221: aload_2
    //   222: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	r
    //   0	223	1	paramInt	int
    //   0	223	2	paramb	b
    //   31	133	3	i1	int
    //   27	9	4	i2	int
    // Exception table:
    //   from	to	target	type
    //   2	20	218	finally
    //   20	29	218	finally
    //   38	75	218	finally
    //   75	85	218	finally
    //   85	87	218	finally
    //   93	120	218	finally
    //   120	148	218	finally
    //   148	160	218	finally
    //   167	206	218	finally
    //   206	215	218	finally
    //   219	221	218	finally
  }
  
  private void a(RuntimeException paramRuntimeException)
  {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter localPrintWriter = new PrintWriter(new android.support.v4.e.d("FragmentManager"));
    if (this.o != null) {}
    for (;;)
    {
      try
      {
        this.o.a("  ", localPrintWriter, new String[0]);
        throw paramRuntimeException;
      }
      catch (Exception localException1)
      {
        Log.e("FragmentManager", "Failed dumping state", localException1);
        continue;
      }
      try
      {
        a("  ", null, localException1, new String[0]);
      }
      catch (Exception localException2)
      {
        Log.e("FragmentManager", "Failed dumping state", localException2);
      }
    }
  }
  
  static boolean a(View paramView, Animation paramAnimation)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (Build.VERSION.SDK_INT >= 19)
    {
      bool1 = bool2;
      if (ViewCompat.g(paramView) == 0)
      {
        bool1 = bool2;
        if (ViewCompat.s(paramView))
        {
          if (!(paramAnimation instanceof AlphaAnimation)) {
            break label54;
          }
          i1 = 1;
        }
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 != 0) {
        bool1 = true;
      }
      return bool1;
      label54:
      if ((paramAnimation instanceof AnimationSet))
      {
        paramView = ((AnimationSet)paramAnimation).getAnimations();
        i1 = 0;
        for (;;)
        {
          if (i1 >= paramView.size()) {
            break label106;
          }
          if ((paramView.get(i1) instanceof AlphaAnimation))
          {
            i1 = 1;
            break;
          }
          i1 += 1;
        }
      }
      label106:
      i1 = 0;
    }
  }
  
  private void b(i parami)
  {
    a(parami, this.n, 0, 0, false);
  }
  
  private static void b(View paramView, Animation paramAnimation)
  {
    if ((paramView == null) || (paramAnimation == null)) {}
    while (!a(paramView, paramAnimation)) {
      return;
    }
    try
    {
      if (r == null)
      {
        localObject1 = Animation.class.getDeclaredField("mListener");
        r = (Field)localObject1;
        ((Field)localObject1).setAccessible(true);
      }
      localObject1 = (Animation.AnimationListener)r.get(paramAnimation);
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        Object localObject1;
        Log.e("FragmentManager", "No field with the name mListener is found in Animation class", localNoSuchFieldException);
        Object localObject2 = null;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        Log.e("FragmentManager", "Cannot access Animation's mListener field", localIllegalAccessException);
        Object localObject3 = null;
      }
    }
    paramAnimation.setAnimationListener(new s(paramView, paramAnimation, (Animation.AnimationListener)localObject1));
  }
  
  private void c(i parami)
  {
    if (parami.U == null) {
      return;
    }
    if (this.y == null) {
      this.y = new SparseArray();
    }
    for (;;)
    {
      parami.U.saveHierarchyState(this.y);
      if (this.y.size() <= 0) {
        break;
      }
      parami.o = this.y;
      this.y = null;
      return;
      this.y.clear();
    }
  }
  
  public static int d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 4097: 
      return 8194;
    case 8194: 
      return 4097;
    }
    return 4099;
  }
  
  private void p()
  {
    if (this.t) {
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
    if (this.v != null) {
      throw new IllegalStateException("Can not perform this action inside of " + this.v);
    }
  }
  
  public final int a(b paramb)
  {
    try
    {
      if ((this.l == null) || (this.l.size() <= 0))
      {
        if (this.k == null) {
          this.k = new ArrayList();
        }
        i1 = this.k.size();
        if (a) {
          Log.v("FragmentManager", "Setting back stack index " + i1 + " to " + paramb);
        }
        this.k.add(paramb);
        return i1;
      }
      int i1 = ((Integer)this.l.remove(this.l.size() - 1)).intValue();
      if (a) {
        Log.v("FragmentManager", "Adding back stack index " + i1 + " with " + paramb);
      }
      this.k.set(i1, paramb);
      return i1;
    }
    finally {}
  }
  
  public final ac a()
  {
    return new b(this);
  }
  
  public final i a(int paramInt)
  {
    int i1;
    Object localObject;
    if (this.g != null)
    {
      i1 = this.g.size() - 1;
      while (i1 >= 0)
      {
        localObject = (i)this.g.get(i1);
        if ((localObject != null) && (((i)localObject).G == paramInt)) {
          return (i)localObject;
        }
        i1 -= 1;
      }
    }
    if (this.f != null)
    {
      i1 = this.f.size() - 1;
      for (;;)
      {
        if (i1 < 0) {
          break label118;
        }
        i locali = (i)this.f.get(i1);
        if (locali != null)
        {
          localObject = locali;
          if (locali.G == paramInt) {
            break;
          }
        }
        i1 -= 1;
      }
    }
    label118:
    return null;
  }
  
  public final i a(String paramString)
  {
    int i1;
    Object localObject;
    if ((this.g != null) && (paramString != null))
    {
      i1 = this.g.size() - 1;
      while (i1 >= 0)
      {
        localObject = (i)this.g.get(i1);
        if ((localObject != null) && (paramString.equals(((i)localObject).I))) {
          return (i)localObject;
        }
        i1 -= 1;
      }
    }
    if ((this.f != null) && (paramString != null))
    {
      i1 = this.f.size() - 1;
      for (;;)
      {
        if (i1 < 0) {
          break label132;
        }
        i locali = (i)this.f.get(i1);
        if (locali != null)
        {
          localObject = locali;
          if (paramString.equals(locali.I)) {
            break;
          }
        }
        i1 -= 1;
      }
    }
    label132:
    return null;
  }
  
  public final View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString)) {
      return null;
    }
    String str1 = paramAttributeSet.getAttributeValue(null, "class");
    paramString = paramContext.obtainStyledAttributes(paramAttributeSet, t.a);
    if (str1 == null) {
      str1 = paramString.getString(0);
    }
    for (;;)
    {
      int i3 = paramString.getResourceId(1, -1);
      String str2 = paramString.getString(2);
      paramString.recycle();
      if (!i.b(this.o.c, str1)) {
        return null;
      }
      if (paramView != null) {}
      for (int i1 = paramView.getId(); (i1 == -1) && (i3 == -1) && (str2 == null); i1 = 0) {
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str1);
      }
      int i2;
      if (i3 != -1)
      {
        paramString = a(i3);
        paramView = paramString;
        if (paramString == null)
        {
          paramView = paramString;
          if (str2 != null) {
            paramView = a(str2);
          }
        }
        paramString = paramView;
        if (paramView == null)
        {
          paramString = paramView;
          if (i1 != -1) {
            paramString = a(i1);
          }
        }
        if (a) {
          Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(i3) + " fname=" + str1 + " existing=" + paramString);
        }
        if (paramString != null) {
          break label413;
        }
        paramView = i.a(paramContext, str1);
        paramView.y = true;
        if (i3 == 0) {
          break label406;
        }
        i2 = i3;
        label288:
        paramView.G = i2;
        paramView.H = i1;
        paramView.I = str2;
        paramView.z = true;
        paramView.C = this;
        paramView.D = this.o;
        paramString = paramView.n;
        paramView.m();
        a(paramView, true);
        label339:
        if ((this.n > 0) || (!paramView.y)) {
          break label524;
        }
        a(paramView, 1, 0, 0, false);
      }
      for (;;)
      {
        if (paramView.T != null) {
          break label532;
        }
        throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
        paramString = null;
        break;
        label406:
        i2 = i1;
        break label288;
        label413:
        if (paramString.z) {
          throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(i3) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(i1) + " with another fragment for " + str1);
        }
        paramString.z = true;
        if (!paramString.M)
        {
          paramView = paramString.n;
          paramString.m();
        }
        paramView = paramString;
        break label339;
        label524:
        b(paramView);
      }
      label532:
      if (i3 != 0) {
        paramView.T.setId(i3);
      }
      if (paramView.T.getTag() == null) {
        paramView.T.setTag(str2);
      }
      return paramView.T;
    }
  }
  
  final void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((this.o == null) && (paramInt1 != 0)) {
      throw new IllegalStateException("No host");
    }
    if ((!paramBoolean) && (this.n == paramInt1)) {}
    do
    {
      return;
      this.n = paramInt1;
    } while (this.f == null);
    int i1 = 0;
    boolean bool = false;
    label54:
    if (i1 < this.f.size())
    {
      i locali = (i)this.f.get(i1);
      if (locali == null) {
        break label169;
      }
      a(locali, paramInt1, paramInt2, paramInt3, false);
      if (locali.X == null) {
        break label169;
      }
      bool |= locali.X.a();
    }
    label169:
    for (;;)
    {
      i1 += 1;
      break label54;
      if (!bool) {
        e();
      }
      if ((!this.s) || (this.o == null) || (this.n != 5)) {
        break;
      }
      this.o.d();
      this.s = false;
      return;
    }
  }
  
  public final void a(Configuration paramConfiguration)
  {
    if (this.g != null)
    {
      int i1 = 0;
      while (i1 < this.g.size())
      {
        i locali = (i)this.g.get(i1);
        if (locali != null)
        {
          locali.onConfigurationChanged(paramConfiguration);
          if (locali.E != null) {
            locali.E.a(paramConfiguration);
          }
        }
        i1 += 1;
      }
    }
  }
  
  final void a(Parcelable paramParcelable, List<i> paramList)
  {
    if (paramParcelable == null) {}
    for (;;)
    {
      return;
      paramParcelable = (u)paramParcelable;
      if (paramParcelable.a != null)
      {
        Object localObject1;
        Object localObject2;
        if (paramList != null)
        {
          i1 = 0;
          while (i1 < paramList.size())
          {
            localObject1 = (i)paramList.get(i1);
            if (a) {
              Log.v("FragmentManager", "restoreAllState: re-attaching retained " + localObject1);
            }
            localObject2 = paramParcelable.a[localObject1.p];
            ((w)localObject2).k = ((i)localObject1);
            ((i)localObject1).o = null;
            ((i)localObject1).B = 0;
            ((i)localObject1).z = false;
            ((i)localObject1).v = false;
            ((i)localObject1).s = null;
            if (((w)localObject2).j != null)
            {
              ((w)localObject2).j.setClassLoader(this.o.c.getClassLoader());
              ((i)localObject1).o = ((w)localObject2).j.getSparseParcelableArray("android:view_state");
              ((i)localObject1).n = ((w)localObject2).j;
            }
            i1 += 1;
          }
        }
        this.f = new ArrayList(paramParcelable.a.length);
        if (this.h != null) {
          this.h.clear();
        }
        int i1 = 0;
        if (i1 < paramParcelable.a.length)
        {
          localObject1 = paramParcelable.a[i1];
          if (localObject1 != null)
          {
            localObject2 = this.o;
            i locali = this.q;
            if (((w)localObject1).k == null)
            {
              Context localContext = ((p)localObject2).c;
              if (((w)localObject1).i != null) {
                ((w)localObject1).i.setClassLoader(localContext.getClassLoader());
              }
              ((w)localObject1).k = i.a(localContext, ((w)localObject1).a, ((w)localObject1).i);
              if (((w)localObject1).j != null)
              {
                ((w)localObject1).j.setClassLoader(localContext.getClassLoader());
                ((w)localObject1).k.n = ((w)localObject1).j;
              }
              ((w)localObject1).k.a(((w)localObject1).b, locali);
              ((w)localObject1).k.y = ((w)localObject1).c;
              ((w)localObject1).k.A = true;
              ((w)localObject1).k.G = ((w)localObject1).d;
              ((w)localObject1).k.H = ((w)localObject1).e;
              ((w)localObject1).k.I = ((w)localObject1).f;
              ((w)localObject1).k.L = ((w)localObject1).g;
              ((w)localObject1).k.K = ((w)localObject1).h;
              ((w)localObject1).k.C = ((p)localObject2).f;
              if (a) {
                Log.v("FragmentManager", "Instantiated fragment " + ((w)localObject1).k);
              }
            }
            localObject2 = ((w)localObject1).k;
            if (a) {
              Log.v("FragmentManager", "restoreAllState: active #" + i1 + ": " + localObject2);
            }
            this.f.add(localObject2);
            ((w)localObject1).k = null;
          }
          for (;;)
          {
            i1 += 1;
            break;
            this.f.add(null);
            if (this.h == null) {
              this.h = new ArrayList();
            }
            if (a) {
              Log.v("FragmentManager", "restoreAllState: avail #" + i1);
            }
            this.h.add(Integer.valueOf(i1));
          }
        }
        if (paramList != null)
        {
          i1 = 0;
          if (i1 < paramList.size())
          {
            localObject1 = (i)paramList.get(i1);
            if (((i)localObject1).t >= 0) {
              if (((i)localObject1).t >= this.f.size()) {
                break label677;
              }
            }
            for (((i)localObject1).s = ((i)this.f.get(((i)localObject1).t));; ((i)localObject1).s = null)
            {
              i1 += 1;
              break;
              label677:
              Log.w("FragmentManager", "Re-attaching retained fragment " + localObject1 + " target no longer exists: " + ((i)localObject1).t);
            }
          }
        }
        if (paramParcelable.b != null)
        {
          this.g = new ArrayList(paramParcelable.b.length);
          i1 = 0;
          while (i1 < paramParcelable.b.length)
          {
            paramList = (i)this.f.get(paramParcelable.b[i1]);
            if (paramList == null) {
              a(new IllegalStateException("No instantiated fragment for index #" + paramParcelable.b[i1]));
            }
            paramList.v = true;
            if (a) {
              Log.v("FragmentManager", "restoreAllState: added #" + i1 + ": " + paramList);
            }
            if (this.g.contains(paramList)) {
              throw new IllegalStateException("Already added!");
            }
            this.g.add(paramList);
            i1 += 1;
          }
        }
        this.g = null;
        if (paramParcelable.c == null) {
          break;
        }
        this.i = new ArrayList(paramParcelable.c.length);
        i1 = 0;
        while (i1 < paramParcelable.c.length)
        {
          paramList = paramParcelable.c[i1].a(this);
          if (a)
          {
            Log.v("FragmentManager", "restoreAllState: back stack #" + i1 + " (index " + paramList.p + "): " + paramList);
            paramList.a("  ", new PrintWriter(new android.support.v4.e.d("FragmentManager")), false);
          }
          this.i.add(paramList);
          if (paramList.p >= 0) {
            a(paramList.p, paramList);
          }
          i1 += 1;
        }
      }
    }
    this.i = null;
  }
  
  public final void a(i parami)
  {
    if (parami.V)
    {
      if (this.e) {
        this.w = true;
      }
    }
    else {
      return;
    }
    parami.V = false;
    a(parami, this.n, 0, 0, false);
  }
  
  public final void a(i parami, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "remove: " + parami + " nesting=" + parami.B);
    }
    if (parami.B > 0)
    {
      i1 = 1;
      if (i1 != 0) {
        break label142;
      }
      i1 = 1;
      label60:
      if ((!parami.K) || (i1 != 0))
      {
        if (this.g != null) {
          this.g.remove(parami);
        }
        if ((parami.O) && (parami.P)) {
          this.s = true;
        }
        parami.v = false;
        parami.w = true;
        if (i1 == 0) {
          break label148;
        }
      }
    }
    label142:
    label148:
    for (int i1 = 0;; i1 = 1)
    {
      a(parami, i1, paramInt1, paramInt2, false);
      return;
      i1 = 0;
      break;
      i1 = 0;
      break label60;
    }
  }
  
  final void a(final i parami, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i1;
    if (parami.v)
    {
      i1 = paramInt1;
      if (!parami.K) {}
    }
    else
    {
      i1 = paramInt1;
      if (paramInt1 > 1) {
        i1 = 1;
      }
    }
    int i2 = i1;
    if (parami.w)
    {
      i2 = i1;
      if (i1 > parami.k) {
        i2 = parami.k;
      }
    }
    paramInt1 = i2;
    if (parami.V)
    {
      paramInt1 = i2;
      if (parami.k < 4)
      {
        paramInt1 = i2;
        if (i2 > 3) {
          paramInt1 = 3;
        }
      }
    }
    int i3;
    label676:
    Object localObject2;
    if (parami.k < paramInt1)
    {
      if ((parami.y) && (!parami.z)) {
        return;
      }
      if (parami.l != null)
      {
        parami.l = null;
        a(parami, parami.m, 0, 0, true);
      }
      i1 = paramInt1;
      i3 = paramInt1;
      i2 = paramInt1;
      switch (parami.k)
      {
      default: 
        i1 = paramInt1;
        parami.k = i1;
        return;
      case 0: 
        if (a) {
          Log.v("FragmentManager", "moveto CREATED: " + parami);
        }
        i2 = paramInt1;
        if (parami.n != null)
        {
          parami.n.setClassLoader(this.o.c.getClassLoader());
          parami.o = parami.n.getSparseParcelableArray("android:view_state");
          parami.s = a(parami.n, "android:target_state");
          if (parami.s != null) {
            parami.u = parami.n.getInt("android:target_req_state", 0);
          }
          parami.W = parami.n.getBoolean("android:user_visible_hint", true);
          i2 = paramInt1;
          if (!parami.W)
          {
            parami.V = true;
            i2 = paramInt1;
            if (paramInt1 > 3) {
              i2 = 3;
            }
          }
        }
        parami.D = this.o;
        parami.F = this.q;
        if (this.q != null) {}
        for (localObject1 = this.q.E;; localObject1 = this.o.f)
        {
          parami.C = ((r)localObject1);
          parami.Q = false;
          parami.a(this.o.c);
          if (parami.Q) {
            break;
          }
          throw new cg("Fragment " + parami + " did not call through to super.onAttach()");
        }
        localObject1 = parami.F;
        if (!parami.M)
        {
          localObject1 = parami.n;
          if (parami.E != null) {
            parami.E.t = false;
          }
          parami.Q = false;
          parami.a((Bundle)localObject1);
          if (!parami.Q) {
            throw new cg("Fragment " + parami + " did not call through to super.onCreate()");
          }
          if (localObject1 != null)
          {
            localObject1 = ((Bundle)localObject1).getParcelable("android:support:fragments");
            if (localObject1 != null)
            {
              if (parami.E == null) {
                parami.s();
              }
              parami.E.a((Parcelable)localObject1, null);
              parami.E.i();
            }
          }
        }
        parami.M = false;
        i1 = i2;
        if (parami.y)
        {
          parami.T = parami.b(parami.b(parami.n), null, parami.n);
          if (parami.T == null) {
            break label1051;
          }
          parami.U = parami.T;
          if (Build.VERSION.SDK_INT < 11) {
            break label1037;
          }
          ViewCompat.r(parami.T);
          if (parami.J) {
            parami.T.setVisibility(8);
          }
          parami.a(parami.T, parami.n);
          i1 = i2;
        }
      case 1: 
        i3 = i1;
        if (i1 > 1)
        {
          if (a) {
            Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + parami);
          }
          if (!parami.y)
          {
            if (parami.H == 0) {
              break label2487;
            }
            localObject2 = (ViewGroup)this.p.a(parami.H);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = localObject2;
              if (!parami.A) {
                a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(parami.H) + " (" + parami.h().getResourceName(parami.H) + ") for fragment " + parami));
              }
            }
          }
        }
        break;
      }
    }
    label891:
    label1037:
    label1051:
    label1085:
    label1546:
    label2089:
    label2481:
    label2487:
    for (Object localObject1 = localObject2;; localObject1 = null)
    {
      parami.S = ((ViewGroup)localObject1);
      parami.T = parami.b(parami.b(parami.n), (ViewGroup)localObject1, parami.n);
      if (parami.T != null)
      {
        parami.U = parami.T;
        if (Build.VERSION.SDK_INT >= 11)
        {
          ViewCompat.r(parami.T);
          if (localObject1 != null)
          {
            localObject2 = a(parami, paramInt2, true, paramInt3);
            if (localObject2 != null)
            {
              b(parami.T, (Animation)localObject2);
              parami.T.startAnimation((Animation)localObject2);
            }
            ((ViewGroup)localObject1).addView(parami.T);
          }
          if (parami.J) {
            parami.T.setVisibility(8);
          }
          parami.a(parami.T, parami.n);
        }
      }
      for (;;)
      {
        localObject1 = parami.n;
        if (parami.E != null) {
          parami.E.t = false;
        }
        parami.Q = false;
        parami.c((Bundle)localObject1);
        if (parami.Q) {
          break label1085;
        }
        throw new cg("Fragment " + parami + " did not call through to super.onActivityCreated()");
        parami.T = ao.a(parami.T);
        break;
        parami.U = null;
        i1 = i2;
        break label676;
        parami.T = ao.a(parami.T);
        break label891;
        parami.U = null;
      }
      if (parami.E != null) {
        parami.E.j();
      }
      if (parami.T != null)
      {
        localObject1 = parami.n;
        if (parami.o != null)
        {
          parami.U.restoreHierarchyState(parami.o);
          parami.o = null;
        }
        parami.Q = false;
        parami.Q = true;
        if (!parami.Q) {
          throw new cg("Fragment " + parami + " did not call through to super.onViewStateRestored()");
        }
      }
      parami.n = null;
      i3 = i1;
      i2 = i3;
      if (i3 > 3)
      {
        if (a) {
          Log.v("FragmentManager", "moveto STARTED: " + parami);
        }
        if (parami.E != null)
        {
          parami.E.t = false;
          parami.E.f();
        }
        parami.Q = false;
        parami.K_();
        if (!parami.Q) {
          throw new cg("Fragment " + parami + " did not call through to super.onStart()");
        }
        if (parami.E != null) {
          parami.E.k();
        }
        i2 = i3;
        if (parami.X != null)
        {
          parami.X.f();
          i2 = i3;
        }
      }
      i1 = i2;
      if (i2 <= 4) {
        break;
      }
      if (a) {
        Log.v("FragmentManager", "moveto RESUMED: " + parami);
      }
      parami.x = true;
      if (parami.E != null)
      {
        parami.E.t = false;
        parami.E.f();
      }
      parami.Q = false;
      parami.o();
      if (!parami.Q) {
        throw new cg("Fragment " + parami + " did not call through to super.onResume()");
      }
      if (parami.E != null)
      {
        parami.E.l();
        parami.E.f();
      }
      parami.n = null;
      parami.o = null;
      i1 = i2;
      break;
      i1 = paramInt1;
      if (parami.k <= paramInt1) {
        break;
      }
      switch (parami.k)
      {
      default: 
        i1 = paramInt1;
        break;
      case 1: 
      case 5: 
      case 4: 
      case 3: 
      case 2: 
        do
        {
          i1 = paramInt1;
          if (paramInt1 > 0) {
            break;
          }
          if ((this.u) && (parami.l != null))
          {
            localObject1 = parami.l;
            parami.l = null;
            ((View)localObject1).clearAnimation();
          }
          if (parami.l == null) {
            break label2089;
          }
          parami.m = paramInt1;
          i1 = 1;
          break;
          if (paramInt1 < 5)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom RESUMED: " + parami);
            }
            if (parami.E != null) {
              parami.E.c(4);
            }
            parami.Q = false;
            parami.p();
            if (!parami.Q) {
              throw new cg("Fragment " + parami + " did not call through to super.onPause()");
            }
            parami.x = false;
          }
          if (paramInt1 < 4)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom STARTED: " + parami);
            }
            if (parami.E != null) {
              parami.E.m();
            }
            parami.Q = false;
            parami.d();
            if (!parami.Q) {
              throw new cg("Fragment " + parami + " did not call through to super.onStop()");
            }
          }
          if (paramInt1 < 3)
          {
            if (a) {
              Log.v("FragmentManager", "movefrom STOPPED: " + parami);
            }
            parami.t();
          }
        } while (paramInt1 >= 2);
        if (a) {
          Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + parami);
        }
        if ((parami.T != null) && (this.o.b()) && (parami.o == null)) {
          c(parami);
        }
        if (parami.E != null) {
          parami.E.c(1);
        }
        parami.Q = false;
        parami.e();
        if (!parami.Q) {
          throw new cg("Fragment " + parami + " did not call through to super.onDestroyView()");
        }
        if (parami.X != null) {
          parami.X.e();
        }
        if ((parami.T != null) && (parami.S != null)) {
          if ((this.n <= 0) || (this.u)) {
            break label2481;
          }
        }
        for (localObject1 = a(parami, paramInt2, false, paramInt3);; localObject1 = null)
        {
          if (localObject1 != null)
          {
            parami.l = parami.T;
            parami.m = paramInt1;
            ((Animation)localObject1).setAnimationListener(new s(parami.T, (Animation)localObject1)
            {
              public final void onAnimationEnd(Animation paramAnonymousAnimation)
              {
                super.onAnimationEnd(paramAnonymousAnimation);
                if (parami.l != null)
                {
                  parami.l = null;
                  r.this.a(parami, parami.m, 0, 0, false);
                }
              }
            });
            parami.T.startAnimation((Animation)localObject1);
          }
          parami.S.removeView(parami.T);
          parami.S = null;
          parami.T = null;
          parami.U = null;
          break label1546;
          if (a) {
            Log.v("FragmentManager", "movefrom CREATED: " + parami);
          }
          if (!parami.M)
          {
            if (parami.E != null) {
              parami.E.n();
            }
            parami.Q = false;
            parami.q();
            if (!parami.Q) {
              throw new cg("Fragment " + parami + " did not call through to super.onDestroy()");
            }
          }
          parami.Q = false;
          parami.F_();
          if (!parami.Q) {
            throw new cg("Fragment " + parami + " did not call through to super.onDetach()");
          }
          i1 = paramInt1;
          if (paramBoolean) {
            break;
          }
          if (!parami.M)
          {
            i1 = paramInt1;
            if (parami.p < 0) {
              break;
            }
            if (a) {
              Log.v("FragmentManager", "Freeing fragment index " + parami);
            }
            this.f.set(parami.p, null);
            if (this.h == null) {
              this.h = new ArrayList();
            }
            this.h.add(Integer.valueOf(parami.p));
            this.o.a(parami.q);
            parami.p = -1;
            parami.q = null;
            parami.v = false;
            parami.w = false;
            parami.x = false;
            parami.y = false;
            parami.z = false;
            parami.A = false;
            parami.B = 0;
            parami.C = null;
            parami.E = null;
            parami.D = null;
            parami.G = 0;
            parami.H = 0;
            parami.I = null;
            parami.J = false;
            parami.K = false;
            parami.M = false;
            parami.X = null;
            parami.Y = false;
            parami.Z = false;
            i1 = paramInt1;
            break;
          }
          parami.D = null;
          parami.F = null;
          parami.C = null;
          parami.E = null;
          i1 = paramInt1;
          break;
        }
      }
    }
  }
  
  public final void a(i parami, boolean paramBoolean)
  {
    if (this.g == null) {
      this.g = new ArrayList();
    }
    if (a) {
      Log.v("FragmentManager", "add: " + parami);
    }
    if (parami.p < 0)
    {
      if ((this.h != null) && (this.h.size() > 0)) {
        break label185;
      }
      if (this.f == null) {
        this.f = new ArrayList();
      }
      parami.a(this.f.size(), this.q);
      this.f.add(parami);
    }
    for (;;)
    {
      if (a) {
        Log.v("FragmentManager", "Allocated fragment index " + parami);
      }
      if (parami.K) {
        return;
      }
      if (!this.g.contains(parami)) {
        break;
      }
      throw new IllegalStateException("Fragment already added: " + parami);
      label185:
      parami.a(((Integer)this.h.remove(this.h.size() - 1)).intValue(), this.q);
      this.f.set(parami.p, parami);
    }
    this.g.add(parami);
    parami.v = true;
    parami.w = false;
    if ((parami.O) && (parami.P)) {
      this.s = true;
    }
    if (paramBoolean) {
      b(parami);
    }
  }
  
  public final void a(p paramp, n paramn, i parami)
  {
    if (this.o != null) {
      throw new IllegalStateException("Already attached");
    }
    this.o = paramp;
    this.p = paramn;
    this.q = parami;
  }
  
  public final void a(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!paramBoolean) {
      p();
    }
    try
    {
      if ((this.u) || (this.o == null)) {
        throw new IllegalStateException("Activity has been destroyed");
      }
    }
    finally
    {
      throw paramRunnable;
      if (this.c == null) {
        this.c = new ArrayList();
      }
      this.c.add(paramRunnable);
      if (this.c.size() == 1) {
        this.o.d.removeCallbacks(this.z);
      }
    }
  }
  
  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i2 = 0;
    String str = paramString + "    ";
    int i3;
    int i1;
    if (this.f != null)
    {
      i3 = this.f.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        i1 = 0;
        while (i1 < i3)
        {
          i locali = (i)this.f.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(locali);
          if (locali != null)
          {
            paramPrintWriter.print(str);
            paramPrintWriter.print("mFragmentId=#");
            paramPrintWriter.print(Integer.toHexString(locali.G));
            paramPrintWriter.print(" mContainerId=#");
            paramPrintWriter.print(Integer.toHexString(locali.H));
            paramPrintWriter.print(" mTag=");
            paramPrintWriter.println(locali.I);
            paramPrintWriter.print(str);
            paramPrintWriter.print("mState=");
            paramPrintWriter.print(locali.k);
            paramPrintWriter.print(" mIndex=");
            paramPrintWriter.print(locali.p);
            paramPrintWriter.print(" mWho=");
            paramPrintWriter.print(locali.q);
            paramPrintWriter.print(" mBackStackNesting=");
            paramPrintWriter.println(locali.B);
            paramPrintWriter.print(str);
            paramPrintWriter.print("mAdded=");
            paramPrintWriter.print(locali.v);
            paramPrintWriter.print(" mRemoving=");
            paramPrintWriter.print(locali.w);
            paramPrintWriter.print(" mResumed=");
            paramPrintWriter.print(locali.x);
            paramPrintWriter.print(" mFromLayout=");
            paramPrintWriter.print(locali.y);
            paramPrintWriter.print(" mInLayout=");
            paramPrintWriter.println(locali.z);
            paramPrintWriter.print(str);
            paramPrintWriter.print("mHidden=");
            paramPrintWriter.print(locali.J);
            paramPrintWriter.print(" mDetached=");
            paramPrintWriter.print(locali.K);
            paramPrintWriter.print(" mMenuVisible=");
            paramPrintWriter.print(locali.P);
            paramPrintWriter.print(" mHasMenu=");
            paramPrintWriter.println(locali.O);
            paramPrintWriter.print(str);
            paramPrintWriter.print("mRetainInstance=");
            paramPrintWriter.print(locali.L);
            paramPrintWriter.print(" mRetaining=");
            paramPrintWriter.print(locali.M);
            paramPrintWriter.print(" mUserVisibleHint=");
            paramPrintWriter.println(locali.W);
            if (locali.C != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mFragmentManager=");
              paramPrintWriter.println(locali.C);
            }
            if (locali.D != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mHost=");
              paramPrintWriter.println(locali.D);
            }
            if (locali.F != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mParentFragment=");
              paramPrintWriter.println(locali.F);
            }
            if (locali.r != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mArguments=");
              paramPrintWriter.println(locali.r);
            }
            if (locali.n != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mSavedFragmentState=");
              paramPrintWriter.println(locali.n);
            }
            if (locali.o != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mSavedViewState=");
              paramPrintWriter.println(locali.o);
            }
            if (locali.s != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mTarget=");
              paramPrintWriter.print(locali.s);
              paramPrintWriter.print(" mTargetRequestCode=");
              paramPrintWriter.println(locali.u);
            }
            if (locali.R != 0)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mNextAnim=");
              paramPrintWriter.println(locali.R);
            }
            if (locali.S != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mContainer=");
              paramPrintWriter.println(locali.S);
            }
            if (locali.T != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mView=");
              paramPrintWriter.println(locali.T);
            }
            if (locali.U != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mInnerView=");
              paramPrintWriter.println(locali.T);
            }
            if (locali.l != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.print("mAnimatingAway=");
              paramPrintWriter.println(locali.l);
              paramPrintWriter.print(str);
              paramPrintWriter.print("mStateAfterAnimating=");
              paramPrintWriter.println(locali.m);
            }
            if (locali.X != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.println("Loader Manager:");
              locali.X.a(str + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
            }
            if (locali.E != null)
            {
              paramPrintWriter.print(str);
              paramPrintWriter.println("Child " + locali.E + ":");
              locali.E.a(str + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
            }
          }
          i1 += 1;
        }
      }
    }
    if (this.g != null)
    {
      i3 = this.g.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Added Fragments:");
        i1 = 0;
        while (i1 < i3)
        {
          paramFileDescriptor = (i)this.g.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor.toString());
          i1 += 1;
        }
      }
    }
    if (this.j != null)
    {
      i3 = this.j.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        i1 = 0;
        while (i1 < i3)
        {
          paramFileDescriptor = (i)this.j.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor.toString());
          i1 += 1;
        }
      }
    }
    if (this.i != null)
    {
      i3 = this.i.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        i1 = 0;
        while (i1 < i3)
        {
          paramFileDescriptor = (b)this.i.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor.toString());
          paramFileDescriptor.a(str, paramPrintWriter);
          i1 += 1;
        }
      }
    }
    try
    {
      if (this.k != null)
      {
        i3 = this.k.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          i1 = 0;
          while (i1 < i3)
          {
            paramFileDescriptor = (b)this.k.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      if ((this.l != null) && (this.l.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(this.l.toArray()));
      }
      if (this.c != null)
      {
        i3 = this.c.size();
        if (i3 > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Pending Actions:");
          i1 = i2;
          while (i1 < i3)
          {
            paramFileDescriptor = (Runnable)this.c.get(i1);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i1);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i1 += 1;
          }
        }
      }
      paramPrintWriter.print(paramString);
    }
    finally {}
    paramPrintWriter.println("FragmentManager misc state:");
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mHost=");
    paramPrintWriter.println(this.o);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mContainer=");
    paramPrintWriter.println(this.p);
    if (this.q != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mParent=");
      paramPrintWriter.println(this.q);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mCurState=");
    paramPrintWriter.print(this.n);
    paramPrintWriter.print(" mStateSaved=");
    paramPrintWriter.print(this.t);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.u);
    if (this.s)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNeedMenuInvalidate=");
      paramPrintWriter.println(this.s);
    }
    if (this.v != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNoTransactionsBecause=");
      paramPrintWriter.println(this.v);
    }
    if ((this.h != null) && (this.h.size() > 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mAvailIndices: ");
      paramPrintWriter.println(Arrays.toString(this.h.toArray()));
    }
  }
  
  final boolean a(int paramInt1, int paramInt2)
  {
    if (this.i == null) {}
    int i1;
    do
    {
      int i2;
      do
      {
        do
        {
          return false;
          if ((paramInt1 >= 0) || ((paramInt2 & 0x1) != 0)) {
            break;
          }
          paramInt1 = this.i.size() - 1;
        } while (paramInt1 < 0);
        localObject1 = (b)this.i.remove(paramInt1);
        localObject2 = new SparseArray();
        localSparseArray1 = new SparseArray();
        ((b)localObject1).a((SparseArray)localObject2, localSparseArray1);
        ((b)localObject1).a(true, null, (SparseArray)localObject2, localSparseArray1);
        g();
        return true;
        i1 = -1;
        if (paramInt1 < 0) {
          break;
        }
        i2 = this.i.size() - 1;
        while (i2 >= 0)
        {
          localObject1 = (b)this.i.get(i2);
          if ((paramInt1 >= 0) && (paramInt1 == ((b)localObject1).p)) {
            break;
          }
          i2 -= 1;
        }
      } while (i2 < 0);
      i1 = i2;
      if ((paramInt2 & 0x1) != 0)
      {
        paramInt2 = i2 - 1;
        for (;;)
        {
          i1 = paramInt2;
          if (paramInt2 < 0) {
            break;
          }
          localObject1 = (b)this.i.get(paramInt2);
          i1 = paramInt2;
          if (paramInt1 < 0) {
            break;
          }
          i1 = paramInt2;
          if (paramInt1 != ((b)localObject1).p) {
            break;
          }
          paramInt2 -= 1;
        }
      }
    } while (i1 == this.i.size() - 1);
    Object localObject2 = new ArrayList();
    paramInt1 = this.i.size() - 1;
    while (paramInt1 > i1)
    {
      ((ArrayList)localObject2).add(this.i.remove(paramInt1));
      paramInt1 -= 1;
    }
    paramInt2 = ((ArrayList)localObject2).size() - 1;
    SparseArray localSparseArray1 = new SparseArray();
    SparseArray localSparseArray2 = new SparseArray();
    paramInt1 = 0;
    while (paramInt1 <= paramInt2)
    {
      ((b)((ArrayList)localObject2).get(paramInt1)).a(localSparseArray1, localSparseArray2);
      paramInt1 += 1;
    }
    Object localObject1 = null;
    paramInt1 = 0;
    label329:
    b localb;
    if (paramInt1 <= paramInt2)
    {
      if (a) {
        Log.v("FragmentManager", "Popping back stack state: " + ((ArrayList)localObject2).get(paramInt1));
      }
      localb = (b)((ArrayList)localObject2).get(paramInt1);
      if (paramInt1 != paramInt2) {
        break label407;
      }
    }
    label407:
    for (boolean bool = true;; bool = false)
    {
      localObject1 = localb.a(bool, (d)localObject1, localSparseArray1, localSparseArray2);
      paramInt1 += 1;
      break label329;
      break;
    }
  }
  
  public final boolean a(Menu paramMenu)
  {
    int i1;
    boolean bool3;
    boolean bool4;
    i locali;
    boolean bool1;
    if (this.g != null)
    {
      i1 = 0;
      bool3 = false;
      bool4 = bool3;
      if (i1 >= this.g.size()) {
        break label123;
      }
      locali = (i)this.g.get(i1);
      bool4 = bool3;
      if (locali != null)
      {
        if (locali.J) {
          break label131;
        }
        if ((!locali.O) || (!locali.P)) {
          break label126;
        }
        bool1 = true;
        label73:
        bool2 = bool1;
        if (locali.E == null) {}
      }
    }
    label123:
    label126:
    label131:
    for (boolean bool2 = bool1 | locali.E.a(paramMenu);; bool2 = false)
    {
      bool4 = bool3;
      if (bool2) {
        bool4 = true;
      }
      i1 += 1;
      bool3 = bool4;
      break;
      bool4 = false;
      return bool4;
      bool1 = false;
      break label73;
    }
  }
  
  public final boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    int i4 = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    int i3;
    boolean bool2;
    boolean bool3;
    i locali;
    int i1;
    if (this.g != null)
    {
      i3 = 0;
      bool2 = false;
      localObject2 = localObject1;
      bool3 = bool2;
      if (i3 >= this.g.size()) {
        break label167;
      }
      locali = (i)this.g.get(i3);
      if (locali == null) {
        break label238;
      }
      if (locali.J) {
        break label247;
      }
      if ((!locali.O) || (!locali.P)) {
        break label241;
      }
      locali.a(paramMenu, paramMenuInflater);
      i1 = 1;
      label93:
      int i2 = i1;
      if (locali.E == null) {}
    }
    label167:
    label238:
    label241:
    label247:
    for (boolean bool1 = i1 | locali.E.a(paramMenu, paramMenuInflater);; bool1 = false)
    {
      if (bool1)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList();
        }
        ((ArrayList)localObject2).add(locali);
        bool2 = true;
        localObject1 = localObject2;
      }
      for (;;)
      {
        i3 += 1;
        break;
        bool3 = false;
        if (this.j != null)
        {
          i1 = i4;
          while (i1 < this.j.size())
          {
            paramMenu = (i)this.j.get(i1);
            if ((localObject2 == null) || (!((ArrayList)localObject2).contains(paramMenu))) {
              i.r();
            }
            i1 += 1;
          }
        }
        this.j = ((ArrayList)localObject2);
        return bool3;
      }
      i1 = 0;
      break label93;
    }
  }
  
  public final boolean a(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i2;
    if (this.g != null) {
      i2 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      i locali;
      int i1;
      if (i2 < this.g.size())
      {
        locali = (i)this.g.get(i2);
        if (locali == null) {
          break label119;
        }
        if (locali.J) {
          break label114;
        }
        if ((!locali.O) || (!locali.P) || (!locali.a(paramMenuItem))) {
          break label91;
        }
        i1 = 1;
      }
      while (i1 != 0)
      {
        bool1 = true;
        return bool1;
        label91:
        if ((locali.E != null) && (locali.E.a(paramMenuItem))) {
          i1 = 1;
        } else {
          label114:
          i1 = 0;
        }
      }
      label119:
      i2 += 1;
    }
  }
  
  public final void b(final int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad id: " + paramInt);
    }
    a(new Runnable()
    {
      public final void run()
      {
        r localr = r.this;
        p localp = r.this.o;
        localr.a(paramInt, this.b);
      }
    }, false);
  }
  
  public final void b(i parami, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "hide: " + parami);
    }
    if (!parami.J)
    {
      parami.J = true;
      if (parami.T != null)
      {
        Animation localAnimation = a(parami, paramInt1, false, paramInt2);
        if (localAnimation != null)
        {
          b(parami.T, localAnimation);
          parami.T.startAnimation(localAnimation);
        }
        parami.T.setVisibility(8);
      }
      if ((parami.v) && (parami.O) && (parami.P)) {
        this.s = true;
      }
      parami.c_(true);
    }
  }
  
  public final void b(Menu paramMenu)
  {
    if (this.g != null)
    {
      int i1 = 0;
      while (i1 < this.g.size())
      {
        i locali = (i)this.g.get(i1);
        if ((locali != null) && (!locali.J) && (locali.E != null)) {
          locali.E.b(paramMenu);
        }
        i1 += 1;
      }
    }
  }
  
  public final boolean b()
  {
    return f();
  }
  
  public final boolean b(MenuItem paramMenuItem)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    int i1;
    if (this.g != null) {
      i1 = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i1 < this.g.size())
      {
        i locali = (i)this.g.get(i1);
        if (locali == null) {
          break label92;
        }
        if ((locali.J) || (locali.E == null) || (!locali.E.b(paramMenuItem))) {
          break label86;
        }
      }
      label86:
      for (int i2 = 1; i2 != 0; i2 = 0)
      {
        bool1 = true;
        return bool1;
      }
      label92:
      i1 += 1;
    }
  }
  
  final void c(int paramInt)
  {
    a(paramInt, 0, 0, false);
  }
  
  public final void c(i parami, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "show: " + parami);
    }
    if (parami.J)
    {
      parami.J = false;
      if (parami.T != null)
      {
        Animation localAnimation = a(parami, paramInt1, true, paramInt2);
        if (localAnimation != null)
        {
          b(parami.T, localAnimation);
          parami.T.startAnimation(localAnimation);
        }
        parami.T.setVisibility(0);
      }
      if ((parami.v) && (parami.O) && (parami.P)) {
        this.s = true;
      }
      parami.c_(false);
    }
  }
  
  public final boolean c()
  {
    p();
    f();
    return a(-1, 0);
  }
  
  public final List<i> d()
  {
    return this.f;
  }
  
  public final void d(i parami, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "detach: " + parami);
    }
    if (!parami.K)
    {
      parami.K = true;
      if (parami.v)
      {
        if (this.g != null)
        {
          if (a) {
            Log.v("FragmentManager", "remove from detach: " + parami);
          }
          this.g.remove(parami);
        }
        if ((parami.O) && (parami.P)) {
          this.s = true;
        }
        parami.v = false;
        a(parami, 1, paramInt1, paramInt2, false);
      }
    }
  }
  
  final void e()
  {
    if (this.f == null) {}
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < this.f.size())
      {
        i locali = (i)this.f.get(i1);
        if (locali != null) {
          a(locali);
        }
        i1 += 1;
      }
    }
  }
  
  public final void e(i parami, int paramInt1, int paramInt2)
  {
    if (a) {
      Log.v("FragmentManager", "attach: " + parami);
    }
    if (parami.K)
    {
      parami.K = false;
      if (!parami.v)
      {
        if (this.g == null) {
          this.g = new ArrayList();
        }
        if (this.g.contains(parami)) {
          throw new IllegalStateException("Fragment already added: " + parami);
        }
        if (a) {
          Log.v("FragmentManager", "add from attach: " + parami);
        }
        this.g.add(parami);
        parami.v = true;
        if ((parami.O) && (parami.P)) {
          this.s = true;
        }
        a(parami, this.n, paramInt1, paramInt2, false);
      }
    }
  }
  
  public final boolean f()
  {
    if (this.e) {
      throw new IllegalStateException("Recursive entry to executePendingTransactions");
    }
    if (Looper.myLooper() != this.o.d.getLooper()) {
      throw new IllegalStateException("Must be called from main thread of process");
    }
    int i2;
    for (boolean bool = false;; bool = true) {
      try
      {
        if ((this.c == null) || (this.c.size() == 0))
        {
          if (!this.w) {
            break label274;
          }
          i1 = 0;
          int i4;
          for (i2 = 0; i1 < this.f.size(); i2 = i4)
          {
            i locali = (i)this.f.get(i1);
            int i3 = i2;
            if (locali != null)
            {
              i3 = i2;
              if (locali.X != null) {
                i4 = i2 | locali.X.a();
              }
            }
            i1 += 1;
          }
        }
        i2 = this.c.size();
        if ((this.d == null) || (this.d.length < i2)) {
          this.d = new Runnable[i2];
        }
        this.c.toArray(this.d);
        this.c.clear();
        this.o.d.removeCallbacks(this.z);
        this.e = true;
        int i1 = 0;
        while (i1 < i2)
        {
          this.d[i1].run();
          this.d[i1] = null;
          i1 += 1;
        }
        this.e = false;
      }
      finally {}
    }
    if (i2 == 0)
    {
      this.w = false;
      e();
    }
    label274:
    return bool;
  }
  
  final void g()
  {
    if (this.m != null)
    {
      int i1 = 0;
      while (i1 < this.m.size())
      {
        this.m.get(i1);
        i1 += 1;
      }
    }
  }
  
  final Parcelable h()
  {
    Object localObject3 = null;
    f();
    if (b) {
      this.t = true;
    }
    if ((this.f == null) || (this.f.size() <= 0)) {
      return null;
    }
    int i3 = this.f.size();
    w[] arrayOfw = new w[i3];
    int i2 = 0;
    int i1 = 0;
    label59:
    i locali;
    w localw;
    Object localObject2;
    label217:
    Object localObject1;
    if (i2 < i3)
    {
      locali = (i)this.f.get(i2);
      if (locali == null) {
        break label896;
      }
      if (locali.p < 0) {
        a(new IllegalStateException("Failure saving state: active " + locali + " has cleared index: " + locali.p));
      }
      localw = new w(locali);
      arrayOfw[i2] = localw;
      if ((locali.k > 0) && (localw.j == null))
      {
        if (this.x == null) {
          this.x = new Bundle();
        }
        locali.f(this.x);
        if (this.x.isEmpty()) {
          break label891;
        }
        localObject2 = this.x;
        this.x = null;
        if (locali.T != null) {
          c(locali);
        }
        localObject1 = localObject2;
        if (locali.o != null)
        {
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = new Bundle();
          }
          ((Bundle)localObject1).putSparseParcelableArray("android:view_state", locali.o);
        }
        localObject2 = localObject1;
        if (!locali.W)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new Bundle();
          }
          ((Bundle)localObject2).putBoolean("android:user_visible_hint", locali.W);
        }
        localw.j = ((Bundle)localObject2);
        if (locali.s != null)
        {
          if (locali.s.p < 0) {
            a(new IllegalStateException("Failure saving state: " + locali + " has target not in fragment manager: " + locali.s));
          }
          if (localw.j == null) {
            localw.j = new Bundle();
          }
          localObject1 = localw.j;
          localObject2 = locali.s;
          if (((i)localObject2).p < 0) {
            a(new IllegalStateException("Fragment " + localObject2 + " is not currently in the FragmentManager"));
          }
          ((Bundle)localObject1).putInt("android:target_state", ((i)localObject2).p);
          if (locali.u != 0) {
            localw.j.putInt("android:target_req_state", locali.u);
          }
        }
        label479:
        if (a) {
          Log.v("FragmentManager", "Saved state of " + locali + ": " + localw.j);
        }
        i1 = 1;
      }
    }
    label891:
    label896:
    for (;;)
    {
      i2 += 1;
      break label59;
      localw.j = locali.n;
      break label479;
      if (i1 == 0)
      {
        if (!a) {
          break;
        }
        Log.v("FragmentManager", "saveAllState: no fragments!");
        return null;
      }
      if (this.g != null)
      {
        i2 = this.g.size();
        if (i2 > 0)
        {
          localObject2 = new int[i2];
          i1 = 0;
          for (;;)
          {
            localObject1 = localObject2;
            if (i1 >= i2) {
              break;
            }
            localObject2[i1] = ((i)this.g.get(i1)).p;
            if (localObject2[i1] < 0) {
              a(new IllegalStateException("Failure saving state: active " + this.g.get(i1) + " has cleared index: " + localObject2[i1]));
            }
            if (a) {
              Log.v("FragmentManager", "saveAllState: adding fragment #" + i1 + ": " + this.g.get(i1));
            }
            i1 += 1;
          }
        }
      }
      localObject1 = null;
      localObject2 = localObject3;
      if (this.i != null)
      {
        i2 = this.i.size();
        localObject2 = localObject3;
        if (i2 > 0)
        {
          localObject3 = new e[i2];
          i1 = 0;
          for (;;)
          {
            localObject2 = localObject3;
            if (i1 >= i2) {
              break;
            }
            localObject3[i1] = new e((b)this.i.get(i1));
            if (a) {
              Log.v("FragmentManager", "saveAllState: adding back stack #" + i1 + ": " + this.i.get(i1));
            }
            i1 += 1;
          }
        }
      }
      localObject3 = new u();
      ((u)localObject3).a = arrayOfw;
      ((u)localObject3).b = ((int[])localObject1);
      ((u)localObject3).c = ((e[])localObject2);
      return (Parcelable)localObject3;
      localObject2 = null;
      break label217;
    }
  }
  
  public final void i()
  {
    this.t = false;
    c(1);
  }
  
  public final void j()
  {
    this.t = false;
    c(2);
  }
  
  public final void k()
  {
    this.t = false;
    c(4);
  }
  
  public final void l()
  {
    this.t = false;
    c(5);
  }
  
  public final void m()
  {
    this.t = true;
    c(3);
  }
  
  public final void n()
  {
    this.u = true;
    f();
    c(0);
    this.o = null;
    this.p = null;
    this.q = null;
  }
  
  public final void o()
  {
    if (this.g != null)
    {
      int i1 = 0;
      while (i1 < this.g.size())
      {
        i locali = (i)this.g.get(i1);
        if (locali != null)
        {
          locali.onLowMemory();
          if (locali.E != null) {
            locali.E.o();
          }
        }
        i1 += 1;
      }
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    if (this.q != null) {
      c.a(this.q, localStringBuilder);
    }
    for (;;)
    {
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
      c.a(this.o, localStringBuilder);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */