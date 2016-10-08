package com.xueqiu.android.trade.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.xueqiu.android.base.util.ay;

public final class e
  extends FrameLayout
{
  public FrameLayout a;
  private d b;
  private TextView c;
  private TextView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private Context h;
  
  public e(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private e(Context paramContext, byte paramByte)
  {
    super(paramContext, null);
    this.h = paramContext;
    LayoutInflater.from(paramContext).inflate(2130903534, this, true);
    this.b = ((d)findViewById(2131625678));
    this.a = ((FrameLayout)findViewById(2131625677));
    this.c = ((TextView)findViewById(2131625679));
    this.d = ((TextView)findViewById(2131625737));
    this.e = ((TextView)findViewById(2131625738));
    this.f = ((TextView)findViewById(2131625739));
    this.g = ((TextView)findViewById(2131625740));
    setMinimumHeight((int)(ay.d(paramContext) - ay.a(150.0F)));
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.b.setEmptyView(this.c);
      return;
    }
    this.b.setEmptyView(null);
  }
  
  public final d getListView()
  {
    return this.b;
  }
  
  public final void setEmptyText(String paramString)
  {
    this.c.setText(paramString);
  }
  
  public final void setTitle(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 3: 
      this.a.addView(LayoutInflater.from(this.h).inflate(2130903549, this, false));
      this.d = ((TextView)findViewById(2131625737));
      this.e = ((TextView)findViewById(2131625738));
      this.f = ((TextView)findViewById(2131625739));
      this.g = ((TextView)findViewById(2131625740));
      TextView localTextView = (TextView)findViewById(2131625757);
      this.d.setText(2131166362);
      this.e.setText(2131166363);
      this.f.setText(2131166364);
      this.g.setText(2131166365);
      localTextView.setText(2131166366);
      return;
    case 4: 
      this.a.addView(LayoutInflater.from(this.h).inflate(2130903548, this, false));
      this.d = ((TextView)findViewById(2131625737));
      this.e = ((TextView)findViewById(2131625738));
      this.f = ((TextView)findViewById(2131625739));
      this.g = ((TextView)findViewById(2131625740));
      this.d.setText(2131166358);
      this.e.setText(2131166359);
      this.f.setText(2131166360);
      this.g.setText(2131166361);
      return;
    }
    this.a.addView(LayoutInflater.from(this.h).inflate(2130903553, this, false));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\view\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */