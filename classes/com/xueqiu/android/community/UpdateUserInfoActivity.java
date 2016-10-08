package com.xueqiu.android.community;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.provider.MediaStore.Images.Media;
import android.support.v4.content.r;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.NumberPicker;
import android.widget.NumberPicker.Formatter;
import android.widget.NumberPicker.OnValueChangeListener;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.a.g;
import com.d.a.b.d;
import com.d.a.b.e;
import com.d.a.b.f;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.t;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ad;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.FileUploadResult;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import rx.i;

public class UpdateUserInfoActivity
  extends b
{
  private String A;
  private String B;
  private String C;
  private View D;
  private User E;
  private List<String> F;
  private x G;
  private ProgressDialog H;
  private View.OnClickListener I = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, String.valueOf(((EditText)UpdateUserInfoActivity.this.findViewById(2131624440)).getText()));
      if (UpdateUserInfoActivity.b(UpdateUserInfoActivity.h(UpdateUserInfoActivity.this)))
      {
        paramAnonymousView = "m";
        if (UpdateUserInfoActivity.this.getString(2131165562).equals(UpdateUserInfoActivity.i(UpdateUserInfoActivity.this))) {
          paramAnonymousView = "f";
        }
        for (;;)
        {
          UpdateUserInfoActivity.b(UpdateUserInfoActivity.this, String.valueOf(((EditText)UpdateUserInfoActivity.this.findViewById(2131624710)).getText()));
          UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, UpdateUserInfoActivity.h(UpdateUserInfoActivity.this), paramAnonymousView, UpdateUserInfoActivity.j(UpdateUserInfoActivity.this), UpdateUserInfoActivity.k(UpdateUserInfoActivity.this), UpdateUserInfoActivity.l(UpdateUserInfoActivity.this));
          return;
          if (UpdateUserInfoActivity.this.getString(2131165564).equals(UpdateUserInfoActivity.i(UpdateUserInfoActivity.this))) {
            paramAnonymousView = "n";
          }
        }
      }
      aa.a(UpdateUserInfoActivity.this.getString(2131166022));
    }
  };
  private View.OnClickListener J = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      UpdateUserInfoActivity.n(UpdateUserInfoActivity.this);
      UpdateUserInfoActivity.o(UpdateUserInfoActivity.this);
      UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, UpdateUserInfoActivity.p(UpdateUserInfoActivity.this), UpdateUserInfoActivity.q(UpdateUserInfoActivity.this));
    }
  };
  private View.OnClickListener K = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, true);
      UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, UpdateUserInfoActivity.j(UpdateUserInfoActivity.this), UpdateUserInfoActivity.k(UpdateUserInfoActivity.this));
    }
  };
  private View.OnClickListener L = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      UpdateUserInfoActivity.c(UpdateUserInfoActivity.this, UpdateUserInfoActivity.p(UpdateUserInfoActivity.this));
      UpdateUserInfoActivity.d(UpdateUserInfoActivity.this, UpdateUserInfoActivity.q(UpdateUserInfoActivity.this));
      UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, UpdateUserInfoActivity.j(UpdateUserInfoActivity.this), UpdateUserInfoActivity.k(UpdateUserInfoActivity.this));
    }
  };
  private View.OnClickListener M = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, false);
      UpdateUserInfoActivity.s(UpdateUserInfoActivity.this);
    }
  };
  private View.OnClickListener N = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, false);
      UpdateUserInfoActivity.n(UpdateUserInfoActivity.this);
      paramAnonymousView = UpdateUserInfoActivity.this;
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(UpdateUserInfoActivity.this).setTitle(2131165565);
      UpdateUserInfoActivity localUpdateUserInfoActivity1 = UpdateUserInfoActivity.this;
      String str1 = UpdateUserInfoActivity.this.getString(2131165563);
      String str2 = UpdateUserInfoActivity.this.getString(2131165562);
      String str3 = UpdateUserInfoActivity.this.getString(2131165564);
      UpdateUserInfoActivity localUpdateUserInfoActivity2 = UpdateUserInfoActivity.this;
      paramAnonymousView.k = localBuilder.setAdapter(new p(localUpdateUserInfoActivity1, new String[] { str1, str2, str3 }, localUpdateUserInfoActivity2), null).setNegativeButton(2131165296, null).create();
      UpdateUserInfoActivity.this.k.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public final void onCancel(DialogInterface paramAnonymous2DialogInterface)
        {
          ((TextView)UpdateUserInfoActivity.this.findViewById(2131624707)).setText(UpdateUserInfoActivity.i(UpdateUserInfoActivity.this));
        }
      });
      UpdateUserInfoActivity.this.k.show();
    }
  };
  SharedPreferences j;
  AlertDialog k;
  private ImageView p = null;
  private File q = null;
  private String r = null;
  private String s = null;
  private x t = null;
  private List<String> u = new ArrayList();
  private List<List<String>> v = new ArrayList();
  private String w;
  private String x;
  private String y;
  private String z;
  
  private void a(Uri paramUri)
  {
    Intent localIntent = new Intent("com.android.camera.action.CROP");
    localIntent.setDataAndType(paramUri, "image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", 180);
    localIntent.putExtra("outputY", 180);
    localIntent.putExtra("return-data", true);
    startActivityForResult(localIntent, 3);
  }
  
  private void a(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (getString(2131165857).equals(paramString1)) {
      str = getString(2131165835);
    }
    paramString1 = paramString2;
    if (getString(2131165311).equals(paramString2)) {
      paramString1 = getString(2131165835);
    }
    if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(paramString1)))
    {
      paramString2 = new StringBuilder().append(str).append(" / ");
      str = paramString1;
    }
    for (;;)
    {
      paramString1 = str;
      ((TextView)findViewById(2131624705)).setText(paramString1);
      return;
      StringBuilder localStringBuilder = new StringBuilder();
      paramString2 = str;
      if (TextUtils.isEmpty(str)) {
        paramString2 = "";
      }
      localStringBuilder = localStringBuilder.append(paramString2);
      paramString2 = localStringBuilder;
      str = paramString1;
      if (TextUtils.isEmpty(paramString1))
      {
        str = "";
        paramString2 = localStringBuilder;
      }
    }
  }
  
  protected static boolean b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    int i;
    do
    {
      return false;
      try
      {
        Integer.parseInt(paramString.substring(0, 1));
        return false;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Matcher localMatcher = Pattern.compile("[\\u4e00-\\u9fa5]").matcher(paramString);
        i = 0;
        if (localMatcher.find())
        {
          int n = 0;
          int m = i;
          for (;;)
          {
            i = m;
            if (n > localMatcher.groupCount()) {
              break;
            }
            n += 1;
            m += 1;
          }
        }
        if ((i == 0) && (paramString.length() >= 4)) {
          return true;
        }
        if ((i == 1) && (paramString.length() >= 3)) {
          return true;
        }
      }
    } while (i < 2);
    return true;
  }
  
  private void j()
  {
    setTitle(2131166568);
    Button localButton = (Button)findViewById(2131624711);
    View localView1 = findViewById(2131624706);
    View localView2 = findViewById(2131624703);
    View localView3 = findViewById(2131624684);
    this.p = ((ImageView)localView3.findViewById(2131624699));
    if (this.p != null)
    {
      final int m = getResources().getDimensionPixelOffset(2131230755);
      localObject2 = null;
      localObject1 = localObject2;
      if (this.E != null)
      {
        if (TextUtils.isEmpty(this.E.getProfileImageWidth_100())) {
          break label389;
        }
        localObject1 = n.b();
        ((e)localObject1).q = new com.d.a.b.c.a()
        {
          public final void display(Bitmap paramAnonymousBitmap, com.d.a.b.e.a paramAnonymousa, g paramAnonymousg)
          {
            paramAnonymousBitmap = ad.a(paramAnonymousBitmap, m);
            UpdateUserInfoActivity.g(UpdateUserInfoActivity.this).setImageBitmap(paramAnonymousBitmap);
          }
        };
        localObject1 = ((e)localObject1).b();
        o localo = new o();
        f.a().a(this.E.getProfileImageWidth_100(), this.p, (d)localObject1, localo);
        localObject1 = localObject2;
      }
      if ((localObject1 == null) && (this.p.getDrawable() != null))
      {
        localObject1 = ad.a(((BitmapDrawable)this.p.getDrawable()).getBitmap(), m);
        this.p.setImageBitmap((Bitmap)localObject1);
      }
    }
    final Object localObject1 = findViewById(2131624713);
    final Object localObject2 = findViewById(2131624714);
    this.D = findViewById(2131624712);
    localButton.setOnClickListener(this.I);
    localView2.setOnClickListener(this.J);
    localView1.setOnClickListener(this.N);
    ((View)localObject1).setOnClickListener(this.K);
    ((View)localObject2).setOnClickListener(this.L);
    localView3.setOnClickListener(this.M);
    ((TextView)localView1.findViewById(2131624707)).setText(this.w);
    ((TextView)localView2.findViewById(2131624705)).setText(this.z);
    localObject1 = (EditText)findViewById(2131624440);
    localObject2 = (EditText)findViewById(2131624710);
    ((EditText)localObject1).setText(this.x);
    ((EditText)localObject1).setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        System.out.println(paramAnonymousBoolean);
        if (paramAnonymousBoolean)
        {
          localObject1.setSelection(localObject1.getText().toString().length());
          UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, false);
          return;
        }
        ((InputMethodManager)UpdateUserInfoActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 2);
      }
    });
    ((EditText)localObject2).setText(this.A);
    ((EditText)localObject2).setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          localObject2.setSelection(localObject2.getText().toString().length());
          UpdateUserInfoActivity.a(UpdateUserInfoActivity.this, false);
          return;
        }
        ((InputMethodManager)UpdateUserInfoActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 2);
      }
    });
    a(this.y, this.z);
    return;
    label389:
    if (this.E.getGender() == User.Gender.FEMALE) {}
    for (int i = 2130838659;; i = 2130838664)
    {
      localObject1 = BitmapFactory.decodeResource(getResources(), i);
      break;
    }
  }
  
  private int k()
  {
    int i = 0;
    while (i < this.u.size())
    {
      String str = (String)this.u.get(i);
      if (this.y.equals(str)) {
        return i;
      }
      i += 1;
    }
    return 0;
  }
  
  private int l()
  {
    List localList = (List)this.v.get(k());
    int i = 0;
    while (i < localList.size())
    {
      String str = (String)localList.get(i);
      if (this.z.equals(str)) {
        return i;
      }
      i += 1;
    }
    return 0;
  }
  
  private String[] m()
  {
    String[] arrayOfString = new String[this.u.size()];
    int i = 0;
    while (i < this.u.size())
    {
      arrayOfString[i] = ((String)this.u.get(i));
      i += 1;
    }
    return arrayOfString;
  }
  
  final void a(String paramString, final boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        paramString = new JSONObject(paramString);
        Object localObject = paramString.getJSONArray("province");
        paramString = paramString.getJSONArray("city");
        i = 0;
        if (i < ((JSONArray)localObject).length())
        {
          String str = ((JSONArray)localObject).getString(i);
          this.u.add(str);
          i += 1;
          continue;
          if (i < paramString.length())
          {
            localObject = paramString.getString(i);
            str = getString(2131165835);
            if (str.equals(localObject)) {
              break label219;
            }
            String[] arrayOfString = ((String)localObject).split(",");
            ArrayList localArrayList = new ArrayList();
            if (!getString(2131165311).equals(localObject)) {
              localArrayList.add(str);
            }
            int n = arrayOfString.length;
            int m = 0;
            if (m < n)
            {
              localArrayList.add(arrayOfString[m]);
              m += 1;
              continue;
            }
            this.v.add(localArrayList);
            break label219;
          }
          new Thread()
          {
            public final void run()
            {
              if (paramBoolean)
              {
                StringBuilder localStringBuilder = new StringBuilder();
                localStringBuilder.append("{\"province\":[");
                int i = 0;
                while (i < UpdateUserInfoActivity.e(UpdateUserInfoActivity.this).size())
                {
                  localStringBuilder.append("\"").append((String)UpdateUserInfoActivity.e(UpdateUserInfoActivity.this).get(i)).append("\"");
                  if (i < UpdateUserInfoActivity.e(UpdateUserInfoActivity.this).size() - 1) {
                    localStringBuilder.append(",");
                  }
                  i += 1;
                }
                localStringBuilder.append("],\"city\":[");
                i = 0;
                while (i < UpdateUserInfoActivity.f(UpdateUserInfoActivity.this).size())
                {
                  List localList = (List)UpdateUserInfoActivity.f(UpdateUserInfoActivity.this).get(i);
                  localStringBuilder.append("\"");
                  int j = 0;
                  while (j < localList.size())
                  {
                    String str = (String)localList.get(j);
                    if (!UpdateUserInfoActivity.this.getString(2131165835).equals(str))
                    {
                      localStringBuilder.append((String)localList.get(j));
                      if (j < localList.size() - 1) {
                        localStringBuilder.append(",");
                      }
                    }
                    j += 1;
                  }
                  localStringBuilder.append("\"");
                  if (i < UpdateUserInfoActivity.f(UpdateUserInfoActivity.this).size() - 1) {
                    localStringBuilder.append(",");
                  }
                  i += 1;
                }
                localStringBuilder.append("]}");
                UpdateUserInfoActivity.this.j.edit().putString("province_city_data", localStringBuilder.toString()).commit();
              }
            }
          }.start();
          return;
        }
      }
      catch (JSONException paramString)
      {
        paramString.printStackTrace();
        return;
      }
      int i = 0;
      continue;
      label219:
      i += 1;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramIntent != null)
      {
        a(paramIntent.getData());
        continue;
        a(Uri.fromFile(new File(this.q, "snowball_temp.jpeg")));
        continue;
        if (paramIntent != null)
        {
          Object localObject1 = paramIntent.getExtras();
          if (localObject1 != null)
          {
            Object localObject2 = (Bitmap)((Bundle)localObject1).getParcelable("data");
            this.p.setImageBitmap((Bitmap)localObject2);
            if (this.t != null) {
              this.t.h = true;
            }
            this.H.show();
            localObject1 = new ByteArrayOutputStream();
            ((Bitmap)localObject2).compress(Bitmap.CompressFormat.JPEG, 100, (OutputStream)localObject1);
            localObject2 = new t();
            this.t = com.xueqiu.android.base.q.a().b().b(((ByteArrayOutputStream)localObject1).toByteArray(), "upload_profile_image.jpeg", (com.xueqiu.android.base.b.p)localObject2);
            ((t)localObject2).a(this).b(new i()
            {
              public final void a() {}
              
              public final void a(Throwable paramAnonymousThrowable)
              {
                UpdateUserInfoActivity.c(UpdateUserInfoActivity.this).cancel();
                aa.a(paramAnonymousThrowable);
              }
            });
          }
        }
      }
    }
  }
  
  public void onBackPressed()
  {
    if ((this.D != null) && (this.D.getVisibility() == 0))
    {
      this.D.setVisibility(4);
      return;
    }
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903230);
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      this.E = ((User)paramBundle.getExtras().get("user"));
      if (this.E == null)
      {
        this.w = getString(2131165564);
        this.x = "";
        this.y = getString(2131165835);
        this.z = getString(2131165835);
        this.A = "";
      }
    }
    else
    {
      this.q = new File(Environment.getExternalStorageDirectory(), "snowball");
      this.H = new ProgressDialog(this);
      this.H.setMessage(getString(2131166018));
      this.H.setCancelable(true);
      this.H.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public final void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          if (UpdateUserInfoActivity.a(UpdateUserInfoActivity.this) != null) {
            UpdateUserInfoActivity.a(UpdateUserInfoActivity.this).h = true;
          }
          if (UpdateUserInfoActivity.b(UpdateUserInfoActivity.this) != null) {
            UpdateUserInfoActivity.b(UpdateUserInfoActivity.this).h = true;
          }
        }
      });
      this.j = PreferenceManager.getDefaultSharedPreferences(this);
      paramBundle = this.j.getString("province_city_data", "");
      if (!TextUtils.isEmpty(paramBundle)) {
        break label484;
      }
      this.H.show();
      this.H.setMessage(getString(2131165647));
      paramBundle = com.xueqiu.android.base.q.a().b();
      com.xueqiu.android.base.b.p local12 = new com.xueqiu.android.base.b.p(this)
      {
        public final void a(y paramAnonymousy)
        {
          UpdateUserInfoActivity.c(UpdateUserInfoActivity.this).cancel();
          aa.a(paramAnonymousy);
          UpdateUserInfoActivity.this.a(UpdateUserInfoActivity.this.getString(2131165854), true);
          UpdateUserInfoActivity.d(UpdateUserInfoActivity.this);
        }
      };
      paramBundle.h.c(local12);
      return;
    }
    if (this.E.getGender() != null) {}
    switch (16.a[this.E.getGender().ordinal()])
    {
    default: 
      this.w = getString(2131165564);
      label295:
      if (TextUtils.isEmpty(this.E.getScreenName()))
      {
        paramBundle = "";
        label312:
        this.x = paramBundle;
        if (!TextUtils.isEmpty(this.E.getProvince())) {
          break label445;
        }
        paramBundle = "";
        label334:
        this.y = paramBundle;
        if (!TextUtils.isEmpty(this.E.getCity())) {
          break label456;
        }
        paramBundle = getString(2131166554);
        label360:
        this.z = paramBundle;
        if (!TextUtils.isEmpty(this.E.getDescription())) {
          break label467;
        }
      }
      break;
    }
    label445:
    label456:
    label467:
    for (paramBundle = "";; paramBundle = Html.fromHtml(this.E.getDescription()).toString())
    {
      this.A = paramBundle;
      this.B = this.y;
      this.C = this.z;
      break;
      this.w = getString(2131165562);
      break label295;
      this.w = getString(2131165563);
      break label295;
      paramBundle = this.E.getScreenName();
      break label312;
      paramBundle = this.E.getProvince();
      break label334;
      paramBundle = this.E.getCity();
      break label360;
    }
    label484:
    a(paramBundle, false);
    j();
  }
  
  protected void onDestroy()
  {
    Intent localIntent = new Intent("com.xueqiu.android.user.UPDATE_USER_INFO");
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("user", this.E);
    localIntent.putExtras(localBundle);
    r.a(getApplicationContext()).a(localIntent);
    super.onDestroy();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\UpdateUserInfoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */