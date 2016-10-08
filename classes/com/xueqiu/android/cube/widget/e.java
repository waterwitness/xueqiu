package com.xueqiu.android.cube.widget;

import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.FrameLayout;
import android.widget.TextView;

public final class e
  extends FrameLayout
{
  CheckBox a;
  TextView b;
  
  public final void setChecked(boolean paramBoolean)
  {
    this.a.setChecked(paramBoolean);
  }
  
  public final void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    this.a.setOnCheckedChangeListener(paramOnCheckedChangeListener);
  }
  
  public final void setTitle(String paramString)
  {
    this.b.setText(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\widget\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */