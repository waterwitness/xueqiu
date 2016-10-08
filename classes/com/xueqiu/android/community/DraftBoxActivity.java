package com.xueqiu.android.community;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.view.ak;
import android.support.v4.widget.a;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.util.ad;
import com.xueqiu.android.common.b;
import com.xueqiu.android.community.model.Draft;
import java.io.File;

public class DraftBoxActivity
  extends b
{
  private ListView j;
  private c k;
  private int p;
  private String q;
  private DBManager r;
  private boolean s = true;
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onContextItemSelected(paramMenuItem);
      new AlertDialog.Builder(this).setNegativeButton(getString(2131165296), null).setPositiveButton(getString(2131165361), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (DraftBoxActivity.a(DraftBoxActivity.a(DraftBoxActivity.this), DraftBoxActivity.b(DraftBoxActivity.this)))
          {
            paramAnonymousDialogInterface = DraftBoxActivity.c(DraftBoxActivity.this).getAllDraft();
            DraftBoxActivity.d(DraftBoxActivity.this).b(paramAnonymousDialogInterface);
            DraftBoxActivity.d(DraftBoxActivity.this).notifyDataSetChanged();
          }
        }
      }).setMessage(getString(2131165365)).create().show();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903145);
    setTitle(getString(2131165483));
    this.j = ((ListView)findViewById(2131624418));
    this.r = DBManager.getInstance();
    this.k = new c(this, this, this.r.getAllDraft());
    this.j.setAdapter(this.k);
    this.j.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Draft)paramAnonymousView.getTag();
        paramAnonymousView = new Intent(DraftBoxActivity.this, WriteStatusActivity.class);
        paramAnonymousView.addFlags(67108864);
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("extra_draft", paramAnonymousAdapterView);
        localBundle.putInt("extra_write_type", paramAnonymousAdapterView.getType());
        localBundle.putBoolean("extra_is_from_draft", true);
        paramAnonymousView.putExtras(localBundle);
        DraftBoxActivity.this.startActivity(paramAnonymousView);
        DraftBoxActivity.a(paramAnonymousAdapterView.getId(), null);
      }
    });
    this.j.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
    {
      public final boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Draft)paramAnonymousView.getTag();
        DraftBoxActivity.a(DraftBoxActivity.this, paramAnonymousAdapterView.getId());
        DraftBoxActivity.a(DraftBoxActivity.this, paramAnonymousAdapterView.getImageName());
        return false;
      }
    });
    this.j.setOnCreateContextMenuListener(this);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    paramContextMenu.setHeaderTitle("删除确认");
    paramContextMenu.add(0, 0, 0, 2131165467);
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772118 });
    ak.a(paramMenu.add(0, 1, 0, 2131165316).setIcon(localTypedArray.getResourceId(0, 0)), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy()
  {
    if (this.r != null)
    {
      if ((this.k != null) && (this.k.c != null) && (!this.k.c.isClosed())) {
        this.k.c.close();
      }
      this.r = null;
    }
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1)
    {
      new AlertDialog.Builder(this).setNegativeButton(getString(2131165296), null).setPositiveButton(getString(2131165361), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          DraftBoxActivity.c(DraftBoxActivity.this).clearDraftBox();
          paramAnonymousDialogInterface = new File(ad.a);
          if (paramAnonymousDialogInterface.isDirectory())
          {
            paramAnonymousDialogInterface = paramAnonymousDialogInterface.listFiles();
            if (paramAnonymousDialogInterface != null)
            {
              int i = paramAnonymousDialogInterface.length;
              paramAnonymousInt = 0;
              while (paramAnonymousInt < i)
              {
                paramAnonymousDialogInterface[paramAnonymousInt].delete();
                paramAnonymousInt += 1;
              }
            }
          }
          DraftBoxActivity.this.finish();
        }
      }).setMessage(getString(2131165365)).create().show();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!this.s)
    {
      Cursor localCursor;
      if ((this.r != null) && (this.k != null))
      {
        localCursor = this.r.getAllDraft();
        if (localCursor.getCount() <= 0)
        {
          localCursor.close();
          finish();
        }
      }
      else
      {
        return;
      }
      this.k.b(localCursor);
      this.k.notifyDataSetChanged();
      return;
    }
    this.s = false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\DraftBoxActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */