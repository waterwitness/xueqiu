package com.xueqiu.android.common;

import android.app.ActionBar;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.d.a.b.f;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.v;
import it.sephiroth.android.library.imagezoom.ImageViewTouch;
import it.sephiroth.android.library.imagezoom.c;
import java.util.HashMap;

public class ImageActivity
  extends b
{
  private String j;
  private Bitmap k;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903249);
    setTitle(2131166093);
    getActionBar().hide();
    final ImageViewTouch localImageViewTouch = (ImageViewTouch)findViewById(2131624756);
    localImageViewTouch.setDisplayType$6cc409cc(it.sephiroth.android.library.imagezoom.e.b);
    localImageViewTouch.setSingleTapListener(new c()
    {
      public final void a()
      {
        ImageActivity.this.finish();
        ImageActivity.this.overridePendingTransition(2130968583, 2130968584);
      }
    });
    ((Button)findViewById(2131624775)).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = "xueqiu_" + System.currentTimeMillis() + ".jpg";
        ImageActivity.a(ImageActivity.this, paramAnonymousView);
      }
    });
    final View localView = findViewById(2131624311);
    Object localObject = (Bitmap)getIntent().getExtras().getParcelable("img");
    if (localObject != null)
    {
      this.k = ((Bitmap)localObject);
      localImageViewTouch.setImageBitmap((Bitmap)localObject);
      return;
    }
    if ((paramBundle != null) && (paramBundle.getParcelable("img_saved") != null))
    {
      this.j = paramBundle.getString("url_saved");
      localImageViewTouch.setImageBitmap((Bitmap)paramBundle.getParcelable("img_saved"));
      return;
    }
    this.j = getIntent().getExtras().getString("url");
    paramBundle = new HashMap();
    paramBundle.put("Cookie", String.format("xq_a_token=%s", new Object[] { u.a().a }));
    if ((this.j.startsWith("http://xueqiu.com/im/image/")) || (this.j.startsWith(v.b("/im/image/"))))
    {
      localObject = n.a();
      ((com.d.a.b.e)localObject).n = paramBundle;
      ((com.d.a.b.e)localObject).j = com.d.a.b.a.e.a;
    }
    for (paramBundle = ((com.d.a.b.e)localObject).b();; paramBundle = paramBundle.b())
    {
      f.a().a(this.j, paramBundle, new com.d.a.b.f.a()
      {
        public final void a()
        {
          localView.setVisibility(8);
        }
        
        public final void a(com.d.a.b.a.b paramAnonymousb)
        {
          aa.a(ImageActivity.this.getString(2131166119));
          localView.setVisibility(8);
        }
        
        public final void a(String paramAnonymousString, View paramAnonymousView)
        {
          localView.setVisibility(0);
        }
        
        public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
        {
          localView.setVisibility(8);
          localImageViewTouch.setImageBitmap$39eee89d(paramAnonymousBitmap);
        }
      });
      return;
      paramBundle = n.a();
      paramBundle.j = com.d.a.b.a.e.a;
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    ImageViewTouch localImageViewTouch = (ImageViewTouch)findViewById(2131624756);
    if ((localImageViewTouch.getDrawable() != null) && (((it.sephiroth.android.library.imagezoom.a.a)localImageViewTouch.getDrawable()).a() != null))
    {
      paramBundle.putParcelable("img_saved", ((it.sephiroth.android.library.imagezoom.a.a)localImageViewTouch.getDrawable()).a());
      paramBundle.putString("url_saved", this.j);
    }
    super.onSaveInstanceState(paramBundle);
  }
  
  public final Boolean w_()
  {
    return Boolean.valueOf(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\ImageActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */