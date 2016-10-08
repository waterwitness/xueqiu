package com.xueqiu.android.base.util;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v4.content.r;
import android.text.InputFilter;
import android.util.SparseArray;
import android.view.View;
import android.widget.EditText;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.t;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.a.d;
import com.xueqiu.android.community.a.e;
import com.xueqiu.android.community.model.FriendshipGroup;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.ChatActivity;
import com.xueqiu.android.message.model.Talk;
import com.xueqiu.android.stock.a.n;
import com.xueqiu.android.stock.a.o;
import com.xueqiu.android.stock.model.Portfolio;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import rx.a;
import rx.c.f;
import rx.c.g;

public final class l
{
  public static void a(com.xueqiu.android.common.b paramb, final int paramInt, final String paramString)
  {
    paramb.h();
    paramb.a(q.a().b().a(-1L, paramString, paramInt, new p()
    {
      public final void a(y paramAnonymousy)
      {
        l.this.i();
        aa.a(paramAnonymousy);
      }
    }));
  }
  
  public static void a(com.xueqiu.android.common.b paramb, final long paramLong)
  {
    paramb.h();
    ai localai = q.a().b();
    t localt = new t();
    localai.k(-1L, localt);
    localt.a(paramb).b(new f() {}).a(new f() {}).b(new g() {}).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {});
  }
  
  public static void a(User paramUser, Context paramContext)
  {
    DBManager.getInstance().insertOrUpdateUserByKeepFollowShip(paramUser);
    Talk localTalk2 = DataStore.getInstance(paramContext).getTalk(paramUser.getUserId(), false);
    Talk localTalk1 = localTalk2;
    if (localTalk2 == null)
    {
      localTalk1 = Talk.from(paramUser);
      DataStore.getInstance(paramContext).saveTalk(localTalk1);
    }
    localTalk1.setUserRef(paramUser);
    paramUser = new Intent(paramContext, ChatActivity.class);
    paramUser.putExtra("talk", localTalk1);
    paramContext.startActivity(paramUser);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */