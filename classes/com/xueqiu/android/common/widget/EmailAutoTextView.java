package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;

public class EmailAutoTextView
  extends AutoCompleteTextView
{
  private static final String[] a = { "@qq.com", "@163.com", "@126.com", "@gmail.com", "@sina.com", "@hotmail.com", "@sohu.com", "@sina.cn", "@139.com" };
  
  public EmailAutoTextView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public EmailAutoTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public EmailAutoTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    setAdapter(new h(this, paramContext, a));
    setThreshold(3);
  }
  
  public void performFiltering(CharSequence paramCharSequence, int paramInt)
  {
    paramCharSequence = paramCharSequence.toString().trim();
    int i = paramCharSequence.indexOf("@");
    if (i == -1)
    {
      if ((paramCharSequence.matches("^[a-zA-Z0-9_]+$")) && (!paramCharSequence.matches("[0-9]\\d+")))
      {
        super.performFiltering("@", paramInt);
        return;
      }
      dismissDropDown();
      return;
    }
    super.performFiltering(paramCharSequence.substring(i), paramInt);
  }
  
  protected void replaceText(CharSequence paramCharSequence)
  {
    String str2 = getText().toString().trim();
    int i = str2.indexOf("@");
    String str1 = str2;
    if (i != -1) {
      str1 = str2.substring(0, i);
    }
    super.replaceText(str1 + paramCharSequence);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\EmailAutoTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */