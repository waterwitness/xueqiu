package com.xueqiu.android.community;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.support.v4.widget.a;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ad;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.community.model.Draft;
import java.lang.ref.WeakReference;
import java.util.Date;
import org.json.JSONObject;

final class c
  extends a
{
  public c(DraftBoxActivity paramDraftBoxActivity, Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor);
  }
  
  public final View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return View.inflate(paramContext, 2130903159, null);
  }
  
  public final void a(View paramView, Cursor paramCursor)
  {
    TextView localTextView2 = (TextView)paramView.findViewById(2131624460);
    TextView localTextView3 = (TextView)paramView.findViewById(2131624461);
    TextView localTextView1 = (TextView)paramView.findViewById(2131624462);
    ImageView localImageView = (ImageView)paramView.findViewById(2131624463);
    String str2 = paramCursor.getString(paramCursor.getColumnIndex("title"));
    int i = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
    String str3 = paramCursor.getString(paramCursor.getColumnIndex("text"));
    String str4 = paramCursor.getString(paramCursor.getColumnIndex("img_name"));
    int k = paramCursor.getInt(paramCursor.getColumnIndex("type"));
    String str5 = h.a(new Date(paramCursor.getLong(paramCursor.getColumnIndex("timestamp"))));
    paramCursor = "";
    try
    {
      String str1 = new JSONObject(str3).getString("draft_text");
      paramCursor = str1;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int m;
        localException.printStackTrace();
      }
    }
    localTextView2.setText(str2);
    localTextView3.setText(str5);
    localTextView1.setText(paramCursor);
    if (!TextUtils.isEmpty(str4))
    {
      m = (int)this.j.getResources().getDimension(2131231002);
      paramCursor = ad.a(ad.a + str4, m, m);
      if (paramCursor != null)
      {
        localImageView.setVisibility(0);
        localImageView.setImageBitmap((Bitmap)paramCursor.get());
      }
    }
    try
    {
      paramCursor = new JSONObject(str3);
      if ((!paramCursor.has("draft_text")) || (TextUtils.isEmpty(paramCursor.getString("draft_text")))) {
        localTextView1.setVisibility(8);
      }
    }
    catch (Exception paramCursor)
    {
      for (;;)
      {
        aa.a(paramCursor);
      }
    }
    paramCursor = new Draft();
    paramCursor.setId(i);
    paramCursor.setTitle(str2);
    paramCursor.setText(str3);
    paramCursor.setImageName(str4);
    paramCursor.setType(k);
    paramView.setTag(paramCursor);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */