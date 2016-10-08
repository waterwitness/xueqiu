package com.xueqiu.android.common.imagepicker;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.support.v4.a.ag;
import android.support.v4.a.ah;
import android.support.v4.a.k;
import android.support.v4.a.o;
import android.support.v4.a.p;
import android.support.v4.content.h;
import android.support.v4.content.n;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.d.a.b.f;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.b;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

public class GalleryActivity
  extends b
{
  private static final String[] q = { "_id", "_display_name", "bucket_id", "bucket_display_name", "_data", "datetaken" };
  protected ListView j;
  protected a k;
  protected Map<String, List<c>> p;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1))
    {
      setResult(-1, paramIntent);
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903082);
    this.j = ((ListView)findViewById(2131624241));
    this.k = new a(this, f.a(), new int[] { 2131624772, 2131624097, 2131624773 });
    this.j.setAdapter(this.k);
    this.j.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (GalleryActivity.this.p != null)
        {
          paramAnonymousAdapterView = (List)GalleryActivity.this.p.get(((c)GalleryActivity.this.k.a.get(paramAnonymousInt)).c);
          paramAnonymousView = new Intent(GalleryActivity.this.getApplicationContext(), PickActivity.class);
          paramAnonymousView.putParcelableArrayListExtra("extra_images", new ArrayList(paramAnonymousAdapterView));
          GalleryActivity.this.startActivityForResult(paramAnonymousView, 1);
        }
      }
    });
    paramBundle = this.b.a;
    if (paramBundle.h != null) {}
    for (paramBundle = paramBundle.h;; paramBundle = paramBundle.h)
    {
      paramBundle.a(new ah()
      {
        public final n<Cursor> a()
        {
          Uri localUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
          return new h(GalleryActivity.this.getBaseContext(), localUri, GalleryActivity.j(), "datetaken DESC");
        }
        
        public final void b()
        {
          v.a("GalleryActivity", "onLoaderReset");
          GalleryActivity.this.k.a(null);
        }
      });
      return;
      paramBundle.i = true;
      paramBundle.h = paramBundle.a("(root)", paramBundle.j, true);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\imagepicker\GalleryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */