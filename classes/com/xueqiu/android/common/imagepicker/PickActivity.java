package com.xueqiu.android.common.imagepicker;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageButton;
import com.d.a.b.f;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PickActivity
  extends b
{
  private d j;
  private GridView k;
  private List<c> p;
  private Button q;
  private ImageButton r;
  
  private void j()
  {
    Intent localIntent = new Intent();
    localIntent.putParcelableArrayListExtra("data", new ArrayList(this.j.b));
    setResult(-1, localIntent);
    finish();
  }
  
  private void k()
  {
    boolean bool = true;
    int i = this.j.b.size();
    this.q.setText(String.format("%s(%d/%d)", new Object[] { getString(2131166047), Integer.valueOf(i), Integer.valueOf(this.j.d) }));
    Button localButton = this.q;
    if (i != 0) {}
    for (;;)
    {
      localButton.setEnabled(bool);
      return;
      bool = false;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1)) {
      j();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903085);
    this.k = ((GridView)findViewById(2131623965));
    this.q = ((Button)findViewById(2131624248));
    this.q.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        PickActivity.a(PickActivity.this);
      }
    });
    this.r = ((ImageButton)findViewById(2131624247));
    this.r.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ArrayList localArrayList = new ArrayList(PickActivity.b(PickActivity.this).b.size());
        Iterator localIterator = PickActivity.b(PickActivity.this).b.iterator();
        while (localIterator.hasNext()) {
          localArrayList.add(((c)localIterator.next()).d);
        }
        paramAnonymousView = new Intent(paramAnonymousView.getContext(), PreviewActivity.class);
        paramAnonymousView.putStringArrayListExtra("extra_images", localArrayList);
        PickActivity.this.startActivityForResult(paramAnonymousView, 1);
      }
    });
    this.j = new d(this, f.a(), new int[] { 2131624772, 2131624099 });
    this.j.c = new e()
    {
      public final void a()
      {
        PickActivity.c(PickActivity.this);
        ImageButton localImageButton = PickActivity.d(PickActivity.this);
        if (PickActivity.b(PickActivity.this).b.size() > 0) {}
        for (boolean bool = true;; bool = false)
        {
          localImageButton.setEnabled(bool);
          return;
        }
      }
      
      public final void b()
      {
        aa.a(2131166042);
      }
    };
    this.k.setAdapter(this.j);
    this.p = getIntent().getParcelableArrayListExtra("extra_images");
    paramBundle = this.j;
    paramBundle.a = this.p;
    paramBundle.notifyDataSetChanged();
    paramBundle = this.r;
    if (this.j.b.size() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramBundle.setEnabled(bool);
      k();
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\imagepicker\PickActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */