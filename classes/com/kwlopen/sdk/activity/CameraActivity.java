package com.kwlopen.sdk.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.hardware.Camera;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.kwlopen.sdk.camera.a;
import com.kwlopen.sdk.camera.a.1;

public class CameraActivity
  extends Activity
  implements View.OnClickListener, com.kwlopen.sdk.camera.f
{
  public static final String TAG = "CameraAty";
  private Button closeButton;
  private Button mCameraShutterButton;
  
  public void onCapture(boolean paramBoolean, String paramString)
  {
    Intent localIntent = new Intent(this, ImageShowActivity.class);
    localIntent.putExtra("image_path", paramString);
    startActivity(localIntent);
    finish();
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == com.b.a.a.f.a(this, "btn_shutter_camera")) {
      paramView = a.a();
    }
    for (;;)
    {
      try
      {
        paramView.d.autoFocus(new a.1(paramView, this, this));
        return;
      }
      catch (Exception paramView) {}
      if (paramView.getId() == com.b.a.a.f.a(this, "close_btn"))
      {
        finish();
        return;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(com.b.a.a.f.f(this, "kwlopen_camera"));
    this.mCameraShutterButton = ((Button)findViewById(com.b.a.a.f.a(this, "btn_shutter_camera")));
    this.closeButton = ((Button)findViewById(com.b.a.a.f.a(this, "close_btn")));
    this.mCameraShutterButton.setOnClickListener(this);
    this.closeButton.setOnClickListener(this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\activity\CameraActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */