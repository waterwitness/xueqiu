package com.kwlopen.sdk.activity;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.DocumentsContract;
import android.provider.MediaStore.Audio.Media;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.b.a.a.d;
import com.b.a.a.f;
import com.b.a.a.h;
import com.b.a.a.i;

public class SelectPicActivity
  extends Activity
  implements View.OnClickListener
{
  public static String IMAGE_PATH;
  public static final String KEY_PHOTO_PATH = "photo_path";
  public static final int SELECT_PIC_BY_CLIP_PHOTO = 3;
  public static final int SELECT_PIC_BY_PICK_PHOTO = 2;
  public static final int SELECT_PIC_BY_TACK_PHOTO = 1;
  private static final String TAG = "SelectPicActivity";
  private Button cancelBtn;
  private LinearLayout dialogLayout;
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (paramAnonymousMessage.what == 0)
      {
        com.b.a.a.c.a();
        paramAnonymousMessage = (String)paramAnonymousMessage.obj;
        com.kwlopen.sdk.camera.b localb = new com.kwlopen.sdk.camera.b();
        localb.a = paramAnonymousMessage;
        b.a.a.c.a().b(localb);
      }
    }
  };
  private Intent lastIntent;
  private Uri photoUri;
  private String picPath;
  private Button pickPhotoBtn;
  private Button takePhotoBtn;
  
  private void doPhoto(int paramInt, Intent paramIntent)
  {
    String[] arrayOfString1 = null;
    String[] arrayOfString2 = null;
    if (paramInt == 2)
    {
      if (paramIntent == null)
      {
        Toast.makeText(this, "选择图片文件出错", 1).show();
        return;
      }
      this.photoUri = paramIntent.getData();
      if (this.photoUri == null)
      {
        Toast.makeText(this, "选择图片文件出错", 1).show();
        return;
      }
    }
    Object localObject = this.photoUri;
    paramIntent = arrayOfString2;
    if (this != null)
    {
      if (localObject != null) {
        break label127;
      }
      paramIntent = arrayOfString2;
    }
    for (;;)
    {
      this.picPath = paramIntent;
      d.a("imagePath = " + this.picPath);
      this.lastIntent.putExtra("photo_path", this.picPath);
      setResult(-1, this.lastIntent);
      finish();
      return;
      label127:
      if ((Build.VERSION.SDK_INT >= 19) && (DocumentsContract.isDocumentUri(this, (Uri)localObject)))
      {
        if ("com.android.externalstorage.documents".equals(((Uri)localObject).getAuthority()))
        {
          arrayOfString1 = DocumentsContract.getDocumentId((Uri)localObject).split(":");
          paramIntent = arrayOfString2;
          if ("primary".equalsIgnoreCase(arrayOfString1[0])) {
            paramIntent = Environment.getExternalStorageDirectory() + "/" + arrayOfString1[1];
          }
        }
        else if ("com.android.providers.downloads.documents".equals(((Uri)localObject).getAuthority()))
        {
          paramIntent = DocumentsContract.getDocumentId((Uri)localObject);
          paramIntent = h.a(this, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(paramIntent).longValue()), null, null);
        }
        else
        {
          paramIntent = arrayOfString2;
          if ("com.android.providers.media.documents".equals(((Uri)localObject).getAuthority()))
          {
            arrayOfString2 = DocumentsContract.getDocumentId((Uri)localObject).split(":");
            localObject = arrayOfString2[0];
            if ("image".equals(localObject)) {
              paramIntent = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            }
            for (;;)
            {
              paramIntent = h.a(this, paramIntent, "_id=?", new String[] { arrayOfString2[1] });
              break;
              if ("video".equals(localObject))
              {
                paramIntent = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
              }
              else
              {
                paramIntent = arrayOfString1;
                if ("audio".equals(localObject)) {
                  paramIntent = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
              }
            }
          }
        }
      }
      else if ("content".equalsIgnoreCase(((Uri)localObject).getScheme()))
      {
        if ("com.google.android.apps.photos.content".equals(((Uri)localObject).getAuthority())) {
          paramIntent = ((Uri)localObject).getLastPathSegment();
        } else {
          paramIntent = h.a(this, (Uri)localObject, null, null);
        }
      }
      else
      {
        paramIntent = arrayOfString2;
        if ("file".equalsIgnoreCase(((Uri)localObject).getScheme())) {
          paramIntent = ((Uri)localObject).getPath();
        }
      }
    }
  }
  
  private void initView()
  {
    this.dialogLayout = ((LinearLayout)findViewById(f.a(this, "pop_layout")));
    this.dialogLayout.setOnClickListener(this);
    this.takePhotoBtn = ((Button)findViewById(f.a(this, "btn_take_photo")));
    this.takePhotoBtn.setOnClickListener(this);
    this.pickPhotoBtn = ((Button)findViewById(f.a(this, "btn_pick_photo")));
    this.pickPhotoBtn.setOnClickListener(this);
    this.cancelBtn = ((Button)findViewById(f.a(this, "btn_cancel")));
    this.cancelBtn.setOnClickListener(this);
    this.lastIntent = getIntent();
  }
  
  private void pickPhoto()
  {
    startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 2);
  }
  
  private void takePhoto()
  {
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      ContentValues localContentValues = new ContentValues();
      this.photoUri = getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, localContentValues);
      localIntent.putExtra("output", this.photoUri);
      startActivityForResult(localIntent, 1);
      return;
    }
    Toast.makeText(this, "内存卡不存在", 1).show();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1)
    {
      if (paramInt1 != 3) {
        break label28;
      }
      setResult(-1, paramIntent);
      finish();
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      label28:
      doPhoto(paramInt1, paramIntent);
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == f.a(this, "pop_layout"))
    {
      finish();
      return;
    }
    if (paramView.getId() == f.a(this, "btn_take_photo")) {}
    try
    {
      com.b.a.a.b.b(IMAGE_PATH);
      startActivity(new Intent(this, CameraActivity.class));
      return;
      if (paramView.getId() == f.a(this, "btn_pick_photo")) {}
      try
      {
        com.b.a.a.b.b(IMAGE_PATH);
        pickPhoto();
        return;
        finish();
        return;
      }
      catch (Exception paramView)
      {
        for (;;) {}
      }
    }
    catch (Exception paramView)
    {
      for (;;) {}
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(f.f(this, "kwlopen_select_pic_dialog"));
    IMAGE_PATH = i.a(this) + "/openAccount/";
    initView();
    b.a.a.c.a().a(this, "onEvent");
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    b.a.a.c.a().a(this);
  }
  
  public void onEventMainThread(com.kwlopen.sdk.camera.b paramb)
  {
    paramb = paramb.a;
    d.a("最终选择的图片路径---》" + paramb);
    this.lastIntent.putExtra("photo_path", paramb);
    setResult(-1, this.lastIntent);
    finish();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    finish();
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\activity\SelectPicActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */