package com.xueqiu.android.base.h5;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.xueqiu.android.common.b;

public class H5TestActivity
  extends b
{
  private EditText j;
  private Button k;
  private TextView p;
  private WebView q;
  
  public void display(View paramView)
  {
    paramView = this.j.getText().toString();
    Intent localIntent = new Intent(this, H5Activity.class);
    localIntent.putExtra("extra_url", paramView);
    startActivity(localIntent);
  }
  
  public void find(View paramView)
  {
    paramView = f.a().b.find(this.j.getText().toString());
    if (paramView != null)
    {
      this.p.setText(paramView.a());
      return;
    }
    this.p.setText("");
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903109);
    this.j = ((EditText)findViewById(2131624328));
    this.k = ((Button)findViewById(2131624330));
    this.p = ((TextView)findViewById(2131624331));
    this.q = ((WebView)findViewById(2131624332));
    this.q.getSettings().setJavaScriptEnabled(true);
  }
  
  public void refresh(View paramView)
  {
    f.a().b.refresh();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\H5TestActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */