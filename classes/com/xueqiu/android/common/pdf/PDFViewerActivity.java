package com.xueqiu.android.common.pdf;

import android.content.Intent;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ak;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.a.a.i;
import com.a.a.j;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.k;
import java.io.File;
import java.io.IOException;
import rx.h;

public class PDFViewerActivity
  extends com.xueqiu.android.common.b
{
  boolean j = false;
  private FrameLayout k;
  private i p;
  private FrameLayout q;
  private RoundProgressBar r;
  private boolean s = false;
  private String t = null;
  private File u = null;
  private Handler v = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
      case 1: 
        do
        {
          return;
        } while (PDFViewerActivity.a(PDFViewerActivity.this) == null);
        int i = ((Integer)paramAnonymousMessage.obj).intValue();
        PDFViewerActivity.a(PDFViewerActivity.this).setProgress(i);
        return;
      }
      PDFViewerActivity.b(PDFViewerActivity.this);
    }
  };
  
  private void j()
  {
    if (this.s) {
      return;
    }
    this.q.setVisibility(8);
    final File localFile = new File(this.u, this.t);
    if (!localFile.exists())
    {
      aa.a(getString(2131165803));
      return;
    }
    Object localObject = this.p;
    if (!localFile.exists()) {
      throw new com.a.a.a.a(localFile.getAbsolutePath() + "does not exist.");
    }
    localObject = new j((i)localObject, Uri.fromFile(localFile), (byte)0);
    ((j)localObject).c = 1;
    ((j)localObject).d = false;
    ((j)localObject).a = true;
    ((j)localObject).b = new com.a.a.b.b()
    {
      public final void a(int paramAnonymousInt)
      {
        if ((paramAnonymousInt == -1) && (!PDFViewerActivity.this.j)) {
          PDFViewerActivity.this.j = true;
        }
        try
        {
          Intent localIntent = new Intent("android.intent.action.VIEW");
          localIntent.setDataAndType(Uri.fromFile(localFile), "application/pdf");
          PDFViewerActivity.this.startActivity(localIntent);
          return;
        }
        catch (Throwable localThrowable) {}
      }
    };
    ((j)localObject).a();
    this.m = false;
    this.p.setVisibility(0);
    this.s = true;
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    int m = 1;
    super.onCreate(paramBundle);
    paramBundle = getIntent().getExtras();
    if (paramBundle == null)
    {
      finish();
      return;
    }
    paramBundle = paramBundle.getString("pdf_file_url");
    this.t = paramBundle.substring(paramBundle.lastIndexOf("/") + 1, paramBundle.length());
    this.i.b().a(this.t);
    this.k = new FrameLayout(this);
    this.k.setBackgroundColor(r.a(2131558411));
    this.p = new i(this);
    this.p.setVisibility(8);
    this.k.addView(this.p, new FrameLayout.LayoutParams(-1, -1));
    this.q = new FrameLayout(this);
    this.r = new RoundProgressBar(this);
    this.r.setCricleColor(r.a(2131558566));
    this.r.setCricleProgressColor(r.a(2131558418));
    this.r.setTextColor(r.a(2131558525));
    this.r.setTextSize(ay.a(11.0F));
    this.q.addView(this.r, new FrameLayout.LayoutParams(r.c(2131230882), r.c(2131230882), 17));
    this.k.addView(this.q, new FrameLayout.LayoutParams(-1, -1));
    setContentView(this.k);
    this.u = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "xueqiu_pdf_temp");
    File localFile = this.u;
    int i;
    if ((localFile == null) || (!localFile.exists()) || (!localFile.isDirectory()))
    {
      if (this.u.exists()) {
        break label380;
      }
      i = 1;
      label323:
      if (this.u.mkdir()) {
        break label385;
      }
    }
    for (;;)
    {
      if ((i & m) == 0) {
        break label391;
      }
      aa.a(getString(2131165804));
      finish();
      return;
      if (localFile.listFiles().length <= 100) {
        break;
      }
      try
      {
        k.b(localFile);
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
      break;
      label380:
      i = 0;
      break label323;
      label385:
      m = 0;
    }
    label391:
    if (new File(this.u, this.t).exists())
    {
      j();
      return;
    }
    ag.c.a(new rx.c.a()
    {
      public final void a()
      {
        PDFViewerActivity.a(PDFViewerActivity.this, paramBundle);
      }
    });
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772131 });
    SubMenu localSubMenu = paramMenu.addSubMenu(0, 1, 0, "更多");
    MenuItem localMenuItem = localSubMenu.getItem();
    localMenuItem.setIcon(localTypedArray.getResourceId(0, 0));
    ak.a(localMenuItem, 2);
    localSubMenu.add(0, 2, 0, getString(2131165805));
    localSubMenu.add(0, 3, 0, getString(2131166015));
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2) {}
    while (paramMenuItem.getItemId() != 3)
    {
      try
      {
        File localFile1 = new File(this.u, this.t);
        if (!localFile1.exists())
        {
          aa.a("文件下载出错, 请重试!");
          return true;
        }
        localObject = new Intent("android.intent.action.VIEW");
        ((Intent)localObject).setDataAndType(Uri.fromFile(localFile1), "application/pdf");
        startActivity((Intent)localObject);
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          aa.a(2131165806);
        }
      }
      return super.onOptionsItemSelected(paramMenuItem);
    }
    paramMenuItem = new File(this.u, this.t);
    if (!paramMenuItem.exists())
    {
      aa.a(2131165776);
      return true;
    }
    Object localObject = "xueqiu-" + this.t;
    File localFile2 = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
    localObject = new File(localFile2, (String)localObject);
    if (k.a(paramMenuItem.getPath(), ((File)localObject).getPath()))
    {
      aa.a(getString(2131165807, new Object[] { localFile2.getAbsolutePath() }));
      return true;
    }
    aa.a(2131165776);
    return true;
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\pdf\PDFViewerActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */