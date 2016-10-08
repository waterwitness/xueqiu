package com.xueqiu.android.message.a;

import android.app.Activity;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.common.model.parser.JSONUtils;
import com.xueqiu.android.message.ChatActivity;
import com.xueqiu.android.message.model.Message;
import org.json.JSONException;
import org.json.JSONObject;

public final class i
{
  TextView a;
  ImageView b;
  TextView c;
  TextView d;
  View e;
  View f;
  
  public static i a(Activity paramActivity, View paramView)
  {
    i locali = new i();
    try
    {
      locali.a = ((TextView)paramView.findViewById(2131624097));
      locali.b = ((ImageView)paramView.findViewById(2131624093));
      locali.c = ((TextView)paramView.findViewById(2131625306));
      locali.d = ((TextView)paramView.findViewById(2131624688));
      locali.e = paramView.findViewById(2131624443);
      locali.f = paramView.findViewById(2131625307);
      if (locali.b != null)
      {
        int i = (int)ay.a(paramActivity, 26.0F);
        i = paramActivity.getWindowManager().getDefaultDisplay().getWidth() - i;
        int j = (int)(i * 280.0F / 540.0F);
        locali.b.getLayoutParams().width = i;
        locali.b.getLayoutParams().height = j;
      }
      return locali;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
    return locali;
  }
  
  public final void a(Message paramMessage, ChatActivity paramChatActivity)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramMessage.getText());
      if (this.a != null) {
        this.a.setText(localJSONObject.optString("title"));
      }
      if (this.d != null) {
        this.d.setText(localJSONObject.optString("text"));
      }
      if (this.c != null) {
        this.c.setText(h.a(paramMessage.getCreatedAt(), "MM-dd HH:mm"));
      }
      if (this.b != null) {
        paramChatActivity.s.a(localJSONObject.getString("image"), this.b);
      }
      if (JSONUtils.getString(localJSONObject, "url").length() > 0)
      {
        this.e.setVisibility(0);
        this.f.setVisibility(0);
        return;
      }
      this.e.setVisibility(8);
      this.f.setVisibility(8);
      return;
    }
    catch (JSONException paramMessage)
    {
      paramMessage.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */