package com.tencent.plus;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.open.OpenApi;
import com.tencent.open.TContext;
import com.tencent.open.Util;
import com.tencent.tauth.IRequestListener;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ImageActivity
  extends Activity
{
  RelativeLayout a;
  private TContext b;
  private OpenApi c;
  private String d;
  private Handler e;
  private TouchView f;
  private Button g;
  private Button h;
  private MaskView i;
  private TextView j;
  private ProgressBar k;
  private int l = 0;
  private boolean m = false;
  private long n = 0L;
  private int o = 0;
  private int p = 640;
  private int q = 640;
  private Rect r = new Rect();
  private String s;
  private Bitmap t;
  private View.OnClickListener u = new i(this);
  private View.OnClickListener v = new f(this);
  private IRequestListener w = new h(this);
  private IRequestListener x = new g(this);
  
  private Bitmap a(String paramString)
  {
    int i1 = 1;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    paramString = Uri.parse(paramString);
    InputStream localInputStream = getContentResolver().openInputStream(paramString);
    BitmapFactory.decodeStream(localInputStream, null, localOptions);
    localInputStream.close();
    int i3 = localOptions.outWidth;
    int i2 = localOptions.outHeight;
    while (i3 * i2 > 4194304)
    {
      i3 /= 2;
      i2 /= 2;
      i1 *= 2;
    }
    localOptions.inJustDecodeBounds = false;
    localOptions.inSampleSize = i1;
    return BitmapFactory.decodeStream(getContentResolver().openInputStream(paramString), null, localOptions);
  }
  
  private View a()
  {
    Object localObject3 = new ViewGroup.LayoutParams(-1, -1);
    Object localObject2 = new ViewGroup.LayoutParams(-1, -1);
    Object localObject1 = new ViewGroup.LayoutParams(-2, -2);
    this.a = new RelativeLayout(this);
    this.a.setLayoutParams((ViewGroup.LayoutParams)localObject3);
    this.a.setBackgroundColor(-16777216);
    localObject3 = new RelativeLayout(this);
    ((RelativeLayout)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject1);
    this.a.addView((View)localObject3);
    this.f = new TouchView(this);
    this.f.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    this.f.setScaleType(ImageView.ScaleType.MATRIX);
    ((RelativeLayout)localObject3).addView(this.f);
    this.i = new MaskView(this);
    localObject2 = new RelativeLayout.LayoutParams((ViewGroup.LayoutParams)localObject2);
    ((RelativeLayout.LayoutParams)localObject2).addRule(14, -1);
    ((RelativeLayout.LayoutParams)localObject2).addRule(15, -1);
    this.i.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    ((RelativeLayout)localObject3).addView(this.i);
    localObject2 = new LinearLayout(this);
    localObject3 = new RelativeLayout.LayoutParams(-2, DensityUtil.dip2px(this, 80.0F));
    ((RelativeLayout.LayoutParams)localObject3).addRule(14, -1);
    ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ((LinearLayout)localObject2).setOrientation(0);
    ((LinearLayout)localObject2).setGravity(17);
    this.a.addView((View)localObject2);
    localObject3 = new ImageView(this);
    ((ImageView)localObject3).setLayoutParams(new LinearLayout.LayoutParams(DensityUtil.dip2px(this, 24.0F), DensityUtil.dip2px(this, 24.0F)));
    ((ImageView)localObject3).setImageDrawable(b("com.tencent.plus.logo.png"));
    ((LinearLayout)localObject2).addView((View)localObject3);
    this.j = new TextView(this);
    localObject3 = new LinearLayout.LayoutParams((ViewGroup.LayoutParams)localObject1);
    ((LinearLayout.LayoutParams)localObject3).leftMargin = DensityUtil.dip2px(this, 7.0F);
    this.j.setLayoutParams((ViewGroup.LayoutParams)localObject3);
    this.j.setEllipsize(TextUtils.TruncateAt.END);
    this.j.setSingleLine();
    this.j.setTextColor(-1);
    this.j.setTextSize(24.0F);
    this.j.setVisibility(8);
    ((LinearLayout)localObject2).addView(this.j);
    localObject2 = new RelativeLayout(this);
    localObject3 = new RelativeLayout.LayoutParams(-1, DensityUtil.dip2px(this, 60.0F));
    ((RelativeLayout.LayoutParams)localObject3).addRule(12, -1);
    ((RelativeLayout.LayoutParams)localObject3).addRule(9, -1);
    ((RelativeLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ((RelativeLayout)localObject2).setBackgroundDrawable(b("com.tencent.plus.bar.png"));
    int i1 = DensityUtil.dip2px(this, 10.0F);
    ((RelativeLayout)localObject2).setPadding(i1, i1, i1, 0);
    this.a.addView((View)localObject2);
    localObject3 = new b(this, this);
    i1 = DensityUtil.dip2px(this, 14.0F);
    int i2 = DensityUtil.dip2px(this, 7.0F);
    this.h = new Button(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(DensityUtil.dip2px(this, 78.0F), DensityUtil.dip2px(this, 45.0F));
    this.h.setLayoutParams(localLayoutParams);
    this.h.setText("取消");
    this.h.setTextColor(-1);
    this.h.setTextSize(18.0F);
    this.h.setPadding(i1, i2, i1, i2);
    ((b)localObject3).b(this.h);
    ((RelativeLayout)localObject2).addView(this.h);
    this.g = new Button(this);
    localLayoutParams = new RelativeLayout.LayoutParams(DensityUtil.dip2px(this, 78.0F), DensityUtil.dip2px(this, 45.0F));
    localLayoutParams.addRule(11, -1);
    this.g.setLayoutParams(localLayoutParams);
    this.g.setTextColor(-1);
    this.g.setTextSize(18.0F);
    this.g.setPadding(i1, i2, i1, i2);
    this.g.setText("选取");
    ((b)localObject3).a(this.g);
    ((RelativeLayout)localObject2).addView(this.g);
    localObject3 = new TextView(this);
    localLayoutParams = new RelativeLayout.LayoutParams((ViewGroup.LayoutParams)localObject1);
    localLayoutParams.addRule(13, -1);
    ((TextView)localObject3).setLayoutParams(localLayoutParams);
    ((TextView)localObject3).setText("移动和缩放");
    ((TextView)localObject3).setPadding(0, DensityUtil.dip2px(this, 3.0F), 0, 0);
    ((TextView)localObject3).setTextSize(18.0F);
    ((TextView)localObject3).setTextColor(-1);
    ((RelativeLayout)localObject2).addView((View)localObject3);
    this.k = new ProgressBar(this);
    localObject1 = new RelativeLayout.LayoutParams((ViewGroup.LayoutParams)localObject1);
    ((RelativeLayout.LayoutParams)localObject1).addRule(14, -1);
    ((RelativeLayout.LayoutParams)localObject1).addRule(15, -1);
    this.k.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    this.k.setVisibility(8);
    this.a.addView(this.k);
    return this.a;
  }
  
  private void a(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("key_error_code", paramInt);
    localIntent.putExtra("key_error_msg", paramString2);
    localIntent.putExtra("key_error_detail", paramString3);
    localIntent.putExtra("key_response", paramString1);
    setResult(-1, localIntent);
  }
  
  private void a(Bitmap paramBitmap)
  {
    Bundle localBundle = new Bundle();
    Object localObject = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 40, (OutputStream)localObject);
    localObject = ((ByteArrayOutputStream)localObject).toByteArray();
    paramBitmap.recycle();
    localBundle.putByteArray("picture", (byte[])localObject);
    this.c.a(this.b.f(), "user/set_user_face", localBundle, "POST", this.w, null);
  }
  
  private void a(String paramString, int paramInt)
  {
    this.e.post(new e(this, paramString, paramInt));
  }
  
  /* Error */
  private android.graphics.drawable.Drawable b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 417	com/tencent/plus/ImageActivity:getAssets	()Landroid/content/res/AssetManager;
    //   4: astore_2
    //   5: aload_2
    //   6: aload_1
    //   7: invokevirtual 423	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   10: astore_2
    //   11: aload_2
    //   12: aload_1
    //   13: invokestatic 429	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   16: astore_1
    //   17: aload_2
    //   18: invokevirtual 123	java/io/InputStream:close	()V
    //   21: aload_1
    //   22: areturn
    //   23: astore_2
    //   24: aconst_null
    //   25: astore_1
    //   26: aload_2
    //   27: invokevirtual 432	java/io/IOException:printStackTrace	()V
    //   30: aload_1
    //   31: areturn
    //   32: astore_2
    //   33: goto -7 -> 26
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	ImageActivity
    //   0	36	1	paramString	String
    //   4	14	2	localObject	Object
    //   23	4	2	localIOException1	IOException
    //   32	1	2	localIOException2	IOException
    // Exception table:
    //   from	to	target	type
    //   5	17	23	java/io/IOException
    //   17	21	32	java/io/IOException
  }
  
  private void b()
  {
    try
    {
      this.t = a(this.s);
      if (this.t == null) {
        throw new IOException("cannot read picture: '" + this.s + "'!");
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      b("图片读取失败，请检查该图片是否有效", 1);
      a(-5, null, "图片读取失败，请检查该图片是否有效", localIOException.getMessage());
      d();
    }
    for (;;)
    {
      this.g.setOnClickListener(this.u);
      this.h.setOnClickListener(this.v);
      this.a.getViewTreeObserver().addOnGlobalLayoutListener(new j(this));
      return;
      this.f.setImageBitmap(this.t);
    }
  }
  
  private void b(String paramString, int paramInt)
  {
    paramString = Toast.makeText(this, paramString, 1);
    LinearLayout localLinearLayout = (LinearLayout)paramString.getView();
    ((TextView)localLinearLayout.getChildAt(0)).setPadding(8, 0, 0, 0);
    ImageView localImageView = new ImageView(this);
    localImageView.setLayoutParams(new LinearLayout.LayoutParams(DensityUtil.dip2px(this, 16.0F), DensityUtil.dip2px(this, 16.0F)));
    if (paramInt == 0) {
      localImageView.setImageDrawable(b("com.tencent.plus.ic_success.png"));
    }
    for (;;)
    {
      localLinearLayout.addView(localImageView, 0);
      localLinearLayout.setOrientation(0);
      localLinearLayout.setGravity(17);
      paramString.setView(localLinearLayout);
      paramString.setGravity(17, 0, 0);
      paramString.show();
      return;
      localImageView.setImageDrawable(b("com.tencent.plus.ic_error.png"));
    }
  }
  
  private void c()
  {
    float f4 = this.r.width();
    Object localObject1 = this.f.getImageMatrix();
    Object localObject2 = new float[9];
    ((Matrix)localObject1).getValues((float[])localObject2);
    float f1 = localObject2[2];
    float f2 = localObject2[5];
    float f3 = localObject2[0];
    f4 = this.p / f4;
    int i1 = (int)((this.r.left - f1) / f3);
    int i2 = (int)((this.r.top - f2) / f3);
    localObject2 = new Matrix();
    ((Matrix)localObject2).set((Matrix)localObject1);
    ((Matrix)localObject2).postScale(f4, f4);
    int i4 = (int)(650.0F / f3);
    int i3 = Math.min(this.t.getWidth() - i1, i4);
    i4 = Math.min(this.t.getHeight() - i2, i4);
    localObject1 = Bitmap.createBitmap(this.t, i1, i2, i3, i4, (Matrix)localObject2, true);
    localObject2 = Bitmap.createBitmap((Bitmap)localObject1, 0, 0, this.p, this.q);
    ((Bitmap)localObject1).recycle();
    a((Bitmap)localObject2);
  }
  
  private void c(String paramString)
  {
    paramString = d(paramString);
    if (!"".equals(paramString))
    {
      this.j.setText(paramString);
      this.j.setVisibility(0);
    }
  }
  
  private String d(String paramString)
  {
    return paramString.replaceAll("&gt;", ">").replaceAll("&lt;", "<").replaceAll("&quot;", "\"").replaceAll("&#39;", "'").replaceAll("&amp;", "&");
  }
  
  private void d()
  {
    finish();
    if (this.o != 0) {
      overridePendingTransition(0, this.o);
    }
  }
  
  private void e()
  {
    this.l += 1;
    this.c.a(this.b.f(), "user/get_simple_userinfo", null, "GET", this.x, null);
  }
  
  public void a(String paramString, long paramLong)
  {
    Util.a(this, paramString, paramLong, this.b.d());
  }
  
  public void onBackPressed()
  {
    setResult(0);
    d();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setRequestedOrientation(1);
    setContentView(a());
    this.e = new Handler();
    paramBundle = getIntent().getBundleExtra("key_params");
    this.s = paramBundle.getString("picture");
    this.d = paramBundle.getString("return_activity");
    String str1 = paramBundle.getString("appid");
    String str2 = paramBundle.getString("access_token");
    long l1 = paramBundle.getLong("expires_in");
    String str3 = paramBundle.getString("openid");
    this.o = paramBundle.getInt("exitAnim");
    this.b = new TContext(str1, getApplicationContext());
    this.b.a(str2, (l1 - System.currentTimeMillis()) / 1000L);
    this.b.a(str3);
    this.c = new OpenApi(this.b);
    b();
    e();
    this.n = System.currentTimeMillis();
    a("10653", 0L);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.f.setImageBitmap(null);
    if ((this.t != null) && (!this.t.isRecycled())) {
      this.t.recycle();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\ImageActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */