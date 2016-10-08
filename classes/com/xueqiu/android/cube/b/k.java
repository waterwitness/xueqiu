package com.xueqiu.android.cube.b;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xueqiu.android.common.c;

public final class k
  extends c
{
  private l a;
  
  private static void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    paramLayoutInflater.inflate(2130903590, paramViewGroup);
  }
  
  private static View b(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903312, paramViewGroup, false);
    paramViewGroup.addView(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public static k u()
  {
    return new k();
  }
  
  public final void F_()
  {
    super.F_();
    this.a = null;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(2130903351, paramViewGroup, false);
    ((TextView)paramViewGroup.findViewById(2131624097)).setText(2131165414);
    ((TextView)paramViewGroup.findViewById(2131624534)).setText(2131166040);
    paramBundle = (LinearLayout)paramViewGroup.findViewById(2131625169);
    a(paramLayoutInflater, paramBundle);
    View localView = b(paramLayoutInflater, paramBundle);
    a(paramLayoutInflater, paramBundle);
    ((TextView)localView.findViewById(2131624240)).setText(a(2131165734));
    localView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        k.a(k.this, "cn");
      }
    });
    localView = b(paramLayoutInflater, paramBundle);
    a(paramLayoutInflater, paramBundle);
    ((TextView)localView.findViewById(2131624240)).setText(a(2131165733));
    localView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        k.a(k.this, "hk");
      }
    });
    localView = b(paramLayoutInflater, paramBundle);
    a(paramLayoutInflater, paramBundle);
    ((TextView)localView.findViewById(2131624240)).setText(a(2131165735));
    localView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        k.a(k.this, "us");
      }
    });
    return paramViewGroup;
  }
  
  public final void a(Activity paramActivity)
  {
    super.a(paramActivity);
    try
    {
      this.a = ((l)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramActivity.toString() + " must implement OnFragmentInteractionListener");
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\b\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */