package com.xueqiu.android.trade.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xueqiu.android.R.styleable;

public class IndicatorTabView
  extends LinearLayout
{
  private String a = "";
  private TextView b;
  
  public IndicatorTabView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setGravity(17);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.IndicatorTabView, 0, 0);
    this.a = paramAttributeSet.getString(0);
    paramAttributeSet.recycle();
    this.b = ((TextView)LayoutInflater.from(paramContext).inflate(2130903576, this, false));
    addView(this.b);
    setText(this.a);
  }
  
  public String getText()
  {
    return this.a;
  }
  
  public void setSelected(boolean paramBoolean)
  {
    super.setSelected(paramBoolean);
    this.b.setSelected(paramBoolean);
  }
  
  public void setText(String paramString)
  {
    if (paramString != null) {
      this.b.setText(paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\view\IndicatorTabView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */