package android.support.v4.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class y
  extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList<ab> a = new ArrayList();
  private FrameLayout b;
  private Context c;
  private q d;
  private int e;
  private TabHost.OnTabChangeListener f;
  private ab g;
  private boolean h;
  
  public y(Context paramContext)
  {
    super(paramContext, null);
    a(paramContext, null);
  }
  
  public y(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private ac a(String paramString, ac paramac)
  {
    Object localObject = null;
    int i = 0;
    if (i < this.a.size())
    {
      ab localab = (ab)this.a.get(i);
      if (!localab.a.equals(paramString)) {
        break label205;
      }
      localObject = localab;
    }
    label193:
    label205:
    for (;;)
    {
      i += 1;
      break;
      if (localObject == null) {
        throw new IllegalStateException("No tab known for tag " + paramString);
      }
      paramString = paramac;
      if (this.g != localObject)
      {
        paramString = paramac;
        if (paramac == null) {
          paramString = this.d.a();
        }
        if ((this.g != null) && (this.g.d != null)) {
          paramString.e(this.g.d);
        }
        if (localObject != null)
        {
          if (((ab)localObject).d != null) {
            break label193;
          }
          ((ab)localObject).d = i.a(this.c, ((ab)localObject).b.getName(), ((ab)localObject).c);
          paramString.a(this.e, ((ab)localObject).d, ((ab)localObject).a);
        }
      }
      for (;;)
      {
        this.g = ((ab)localObject);
        return paramString;
        paramString.f(((ab)localObject).d);
      }
    }
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    this.e = paramContext.getResourceId(0, 0);
    paramContext.recycle();
    super.setOnTabChangedListener(this);
  }
  
  public void a(Context paramContext, q paramq, int paramInt)
  {
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      Object localObject = new TabWidget(paramContext);
      ((TabWidget)localObject).setId(16908307);
      ((TabWidget)localObject).setOrientation(0);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      localObject = new FrameLayout(paramContext);
      ((FrameLayout)localObject).setId(16908305);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(0, 0, 0.0F));
      localObject = new FrameLayout(paramContext);
      this.b = ((FrameLayout)localObject);
      this.b.setId(this.e);
      localLinearLayout.addView((View)localObject, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
    super.setup();
    this.c = paramContext;
    this.d = paramq;
    this.e = paramInt;
    if (this.b == null)
    {
      this.b = ((FrameLayout)findViewById(this.e));
      if (this.b == null) {
        throw new IllegalStateException("No tab content FrameLayout found for id " + this.e);
      }
    }
    this.b.setId(paramInt);
    if (getId() == -1) {
      setId(16908306);
    }
  }
  
  public final void a(TabHost.TabSpec paramTabSpec, Class<?> paramClass, Bundle paramBundle)
  {
    paramTabSpec.setContent(new z(this.c));
    String str = paramTabSpec.getTag();
    paramClass = new ab(str, paramClass, paramBundle);
    if (this.h)
    {
      paramClass.d = this.d.a(str);
      if ((paramClass.d != null) && (!paramClass.d.K))
      {
        paramBundle = this.d.a();
        paramBundle.e(paramClass.d);
        paramBundle.d();
      }
    }
    this.a.add(paramClass);
    addTab(paramTabSpec);
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    Object localObject1 = null;
    int i = 0;
    if (i < this.a.size())
    {
      ab localab = (ab)this.a.get(i);
      localab.d = this.d.a(localab.a);
      Object localObject2 = localObject1;
      if (localab.d != null)
      {
        localObject2 = localObject1;
        if (!localab.d.K)
        {
          if (!localab.a.equals(str)) {
            break label111;
          }
          this.g = localab;
          localObject2 = localObject1;
        }
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        label111:
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = this.d.a();
        }
        ((ac)localObject2).e(localab.d);
      }
    }
    this.h = true;
    localObject1 = a(str, (ac)localObject1);
    if (localObject1 != null)
    {
      ((ac)localObject1).d();
      this.d.b();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.h = false;
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (aa)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setCurrentTabByTag(paramParcelable.a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    aa localaa = new aa(super.onSaveInstanceState());
    localaa.a = getCurrentTabTag();
    return localaa;
  }
  
  public void onTabChanged(String paramString)
  {
    if (this.h)
    {
      ac localac = a(paramString, null);
      if (localac != null) {
        localac.d();
      }
    }
    if (this.f != null) {
      this.f.onTabChanged(paramString);
    }
  }
  
  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    this.f = paramOnTabChangeListener;
  }
  
  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */