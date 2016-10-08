package me.grantland.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import java.util.ArrayList;

public class AutofitTextView
  extends TextView
{
  private a a;
  
  public AutofitTextView(Context paramContext)
  {
    super(paramContext);
    a(null, 0);
  }
  
  public AutofitTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet, 0);
  }
  
  public AutofitTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet, paramInt);
  }
  
  private void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = a.a(this, paramAttributeSet, paramInt);
    if (paramAttributeSet.f == null) {
      paramAttributeSet.f = new ArrayList();
    }
    paramAttributeSet.f.add(this);
    this.a = paramAttributeSet;
  }
  
  public a getAutofitHelper()
  {
    return this.a;
  }
  
  public float getMaxTextSize()
  {
    return this.a.c;
  }
  
  public float getMinTextSize()
  {
    return this.a.b;
  }
  
  public float getPrecision()
  {
    return this.a.d;
  }
  
  public void setLines(int paramInt)
  {
    super.setLines(paramInt);
    if (this.a != null) {
      this.a.a(paramInt);
    }
  }
  
  public void setMaxLines(int paramInt)
  {
    super.setMaxLines(paramInt);
    if (this.a != null) {
      this.a.a(paramInt);
    }
  }
  
  public void setMaxTextSize(float paramFloat)
  {
    a locala = this.a;
    Context localContext = locala.a.getContext();
    Resources localResources = Resources.getSystem();
    if (localContext != null) {
      localResources = localContext.getResources();
    }
    paramFloat = TypedValue.applyDimension(2, paramFloat, localResources.getDisplayMetrics());
    if (paramFloat != locala.c)
    {
      locala.c = paramFloat;
      locala.a();
    }
  }
  
  public void setMinTextSize(int paramInt)
  {
    this.a.a(2, paramInt);
  }
  
  public void setPrecision(float paramFloat)
  {
    this.a.a(paramFloat);
  }
  
  public void setSizeToFit(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }
  
  public void setTextSize(int paramInt, float paramFloat)
  {
    super.setTextSize(paramInt, paramFloat);
    if (this.a != null)
    {
      a locala = this.a;
      if (!locala.e)
      {
        Context localContext = locala.a.getContext();
        Resources localResources = Resources.getSystem();
        if (localContext != null) {
          localResources = localContext.getResources();
        }
        locala.b(TypedValue.applyDimension(paramInt, paramFloat, localResources.getDisplayMetrics()));
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\me\grantland\widget\AutofitTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */