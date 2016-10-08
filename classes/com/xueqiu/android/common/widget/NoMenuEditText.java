package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;

public class NoMenuEditText
  extends EditText
{
  private final Context a;
  
  public NoMenuEditText(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    a();
  }
  
  public NoMenuEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    a();
  }
  
  public NoMenuEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = paramContext;
    a();
  }
  
  private void a()
  {
    setCustomSelectionActionModeCallback(new t(this, (byte)0));
    setLongClickable(false);
  }
  
  public boolean isSuggestionsEnabled()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\NoMenuEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */