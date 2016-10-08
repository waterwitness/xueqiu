package com.kwlopen.sdk.activity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.b.a.a.d;
import com.b.a.a.f;

public class ImageShowActivity
  extends Activity
  implements View.OnClickListener
{
  private Bitmap bmp;
  private TextView cameraTextView;
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what == 0)
      {
        ImageShowActivity.this.dismissDialog();
        ImageShowActivity.this.imageView.setImageBitmap(ImageShowActivity.this.bmp);
      }
    }
  };
  private ImageView imageView;
  private String image_path;
  ProgressDialog progressDialog;
  private TextView uploadTextView;
  
  private void decodeImage()
  {
    progressDialog();
    new Thread(new Runnable()
    {
      public void run()
      {
        d.a("image_path ---->" + ImageShowActivity.this.image_path);
        ImageShowActivity.access$102(ImageShowActivity.this, com.b.a.a.b.a(ImageShowActivity.this.image_path));
        ImageShowActivity.this.handler.sendEmptyMessage(0);
      }
    }).start();
  }
  
  private void dismissDialog()
  {
    if ((this.progressDialog != null) && (this.progressDialog.isShowing())) {
      this.progressDialog.dismiss();
    }
    this.progressDialog = null;
  }
  
  private void progressDialog()
  {
    if (this.progressDialog == null)
    {
      this.progressDialog = new ProgressDialog(this);
      this.progressDialog.setMessage("请稍后...");
      this.progressDialog.setCancelable(false);
    }
    this.progressDialog.show();
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == f.a(this, "camera_text_view"))
    {
      paramView = new Intent();
      paramView.setClass(this, CameraActivity.class);
      startActivity(paramView);
      finish();
    }
    while (paramView.getId() != f.a(this, "upload_text_view")) {
      return;
    }
    paramView = new com.kwlopen.sdk.camera.b();
    paramView.a = this.image_path;
    b.a.a.c.a().b(paramView);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(f.f(this, "kwlopen_show_image_layout"));
    this.image_path = getIntent().getStringExtra("image_path");
    this.imageView = ((ImageView)findViewById(f.a(this, "show_imageview")));
    this.cameraTextView = ((TextView)findViewById(f.a(this, "camera_text_view")));
    this.uploadTextView = ((TextView)findViewById(f.a(this, "upload_text_view")));
    if ((this.image_path == null) && (this.image_path.equals("")))
    {
      com.b.a.a.c.a(this, "选择的照片不存在，请选择其他照片");
      finish();
      return;
    }
    this.cameraTextView.setOnClickListener(this);
    this.uploadTextView.setOnClickListener(this);
    decodeImage();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    com.b.a.a.b.a(new Bitmap[] { this.bmp });
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = new Intent();
      paramKeyEvent.setClass(this, CameraActivity.class);
      startActivity(paramKeyEvent);
      finish();
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\activity\ImageShowActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */