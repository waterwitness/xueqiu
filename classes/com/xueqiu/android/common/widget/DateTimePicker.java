package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;
import android.widget.ViewSwitcher;
import java.util.Calendar;

public class DateTimePicker
  extends RelativeLayout
  implements View.OnClickListener, DatePicker.OnDateChangedListener, TimePicker.OnTimeChangedListener
{
  private DatePicker a;
  private TimePicker b;
  private ViewSwitcher c;
  private Calendar d;
  
  public DateTimePicker(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DateTimePicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DateTimePicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = (LayoutInflater)paramContext.getSystemService("layout_inflater");
    paramAttributeSet.inflate(2130903574, this, true);
    paramContext = (LinearLayout)paramAttributeSet.inflate(2130903573, null);
    paramAttributeSet = (LinearLayout)paramAttributeSet.inflate(2130903592, null);
    this.d = Calendar.getInstance();
    this.c = ((ViewSwitcher)findViewById(2131625830));
    this.a = ((DatePicker)paramContext.findViewById(2131625826));
    this.a.init(this.d.get(1), this.d.get(2), this.d.get(5), this);
    this.b = ((TimePicker)paramAttributeSet.findViewById(2131625852));
    this.b.setOnTimeChangedListener(this);
    ((Button)findViewById(2131625829)).setOnClickListener(this);
    ((Button)findViewById(2131625828)).setOnClickListener(this);
    this.c.addView(paramContext, 0);
    this.c.addView(paramAttributeSet, 1);
  }
  
  public final int a(int paramInt)
  {
    return this.d.get(paramInt);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    this.b.setIs24HourView(Boolean.valueOf(true));
    this.b.setCurrentHour(Integer.valueOf(paramInt1));
    this.b.setCurrentMinute(Integer.valueOf(paramInt2));
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a.updateDate(paramInt1, paramInt2, paramInt3);
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    a(paramInt1, paramInt2, paramInt3);
    a(paramInt4, paramInt5);
  }
  
  public long getDateTimeMillis()
  {
    return this.d.getTimeInMillis();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131625828: 
      paramView.setEnabled(false);
      findViewById(2131625829).setEnabled(true);
      this.c.showPrevious();
      return;
    }
    paramView.setEnabled(false);
    findViewById(2131625828).setEnabled(true);
    this.c.showNext();
  }
  
  public void onDateChanged(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    this.d.set(paramInt1, paramInt2, paramInt3, this.d.get(11), this.d.get(12));
  }
  
  public void onTimeChanged(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    this.d.set(this.d.get(1), this.d.get(2), this.d.get(5), paramInt1, paramInt2);
  }
  
  public void setIs24HourView(boolean paramBoolean)
  {
    this.b.setIs24HourView(Boolean.valueOf(paramBoolean));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\DateTimePicker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */