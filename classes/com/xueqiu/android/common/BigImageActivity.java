package com.xueqiu.android.common;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import java.io.InputStream;
import java.net.URL;

public class BigImageActivity
  extends Activity
{
  private String a;
  
  public void getOriginImage(View paramView)
  {
    paramView = new Intent(this, ImageActivity.class);
    if ((this.a.indexOf(".jpg!") != -1) || (this.a.indexOf(".jpeg!") != -1) || (this.a.indexOf(".png!") != -1)) {
      this.a = this.a.substring(0, this.a.lastIndexOf('!'));
    }
    paramView.putExtra("url", this.a);
    startActivity(paramView);
    overridePendingTransition(2130968583, 2130968584);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    this.a = getIntent().getExtras().getString("url");
    setContentView(2130903242);
    new AsyncTask()
    {
      private Exception b = null;
      
      private Bitmap a()
      {
        try
        {
          Bitmap localBitmap = BitmapFactory.decodeStream((InputStream)new URL(BigImageActivity.a(BigImageActivity.this)).getContent());
          return localBitmap;
        }
        catch (Exception localException)
        {
          this.b = localException;
        }
        return null;
      }
    }.execute(new Integer[0]);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1) {
      finish();
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\BigImageActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */