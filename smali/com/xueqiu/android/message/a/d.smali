.class public final Lcom/xueqiu/android/message/a/d;
.super Landroid/widget/BaseAdapter;
.source "ChatAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/xueqiu/android/base/SnowBallApplication;

.field private c:Lcom/xueqiu/android/message/ChatActivity;

.field private d:Lcom/xueqiu/android/message/model/Talk;

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/xueqiu/android/base/storage/DBManager;

.field private g:Lcom/xueqiu/android/community/model/User;

.field private h:Lcom/d/a/b/f;

.field private i:Lcom/d/a/b/d;

.field private j:Lcom/d/a/b/d;

.field private k:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;Ljava/util/List;Lcom/d/a/b/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/message/ChatActivity;",
            "Lcom/xueqiu/android/message/model/Talk;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;",
            "Lcom/d/a/b/f;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const v1, 0x7f020488

    const v3, 0x7f020483

    const/4 v2, 0x1

    .line 119
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    .line 121
    iput-object p2, p0, Lcom/xueqiu/android/message/a/d;->d:Lcom/xueqiu/android/message/model/Talk;

    .line 122
    iput-object p3, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 123
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/d;->f:Lcom/xueqiu/android/base/storage/DBManager;

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/SnowBallApplication;

    iput-object v0, p0, Lcom/xueqiu/android/message/a/d;->b:Lcom/xueqiu/android/base/SnowBallApplication;

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->f:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getCurrentUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/d;->g:Lcom/xueqiu/android/community/model/User;

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    .line 127
    iput-object p4, p0, Lcom/xueqiu/android/message/a/d;->h:Lcom/d/a/b/f;

    .line 129
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    .line 2248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 2293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2341
    iput-boolean v2, v0, Lcom/d/a/b/e;->h:Z

    .line 2367
    iput-boolean v2, v0, Lcom/d/a/b/e;->i:Z

    .line 2415
    iput-boolean v4, v0, Lcom/d/a/b/e;->m:Z

    .line 137
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/message/a/d;->i:Lcom/d/a/b/d;

    .line 3248
    iput v3, v0, Lcom/d/a/b/e;->a:I

    .line 3270
    iput v3, v0, Lcom/d/a/b/e;->b:I

    .line 3293
    iput v3, v0, Lcom/d/a/b/e;->c:I

    .line 3341
    iput-boolean v2, v0, Lcom/d/a/b/e;->h:Z

    .line 3367
    iput-boolean v2, v0, Lcom/d/a/b/e;->i:Z

    .line 3415
    iput-boolean v4, v0, Lcom/d/a/b/e;->m:Z

    .line 145
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/d;->j:Lcom/d/a/b/d;

    .line 146
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/d;->k:Lcom/d/a/b/d;

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/ChatActivity;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a/d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/widget/LinearLayout;Lcom/xueqiu/android/message/model/Message;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 343
    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 351
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 352
    const-string v3, "list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 353
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 354
    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->getId()J

    .line 355
    const v0, 0x7f0e009d

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 356
    iget-object v5, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-static {v5, v6}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 357
    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v6}, Lcom/xueqiu/android/message/ChatActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    sub-int v5, v6, v5

    .line 358
    int-to-float v6, v5

    const/high16 v7, 0x438c0000    # 280.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x44070000    # 540.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 359
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 361
    iget-object v5, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    .line 4955
    iget-object v5, v5, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 361
    const-string v6, "image"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xueqiu/android/message/a/d;->k:Lcom/d/a/b/d;

    invoke-virtual {v5, v6, v0, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 362
    const v0, 0x7f0e00a1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/xueqiu/android/message/a/d$7;

    invoke-direct {v5, p0, v4}, Lcom/xueqiu/android/message/a/d$7;-><init>(Lcom/xueqiu/android/message/a/d;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 371
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 373
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    const v5, 0x7f030162

    const/4 v6, 0x0

    invoke-virtual {v0, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 374
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    .line 5955
    iget-object v6, v0, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 374
    const-string v0, "image"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f0e009d

    .line 375
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/xueqiu/android/message/a/d;->k:Lcom/d/a/b/d;

    .line 374
    invoke-virtual {v6, v7, v0, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 377
    const v0, 0x7f0e00a1

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    new-instance v0, Lcom/xueqiu/android/message/a/d$8;

    invoke-direct {v0, p0, v4}, Lcom/xueqiu/android/message/a/d$8;-><init>(Lcom/xueqiu/android/message/a/d;Lorg/json/JSONObject;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const/4 v0, -0x1

    const/4 v4, -0x2

    invoke-virtual {p1, v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 370
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 389
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V
    .locals 4

    .prologue
    .line 6955
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 7077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 6955
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 6956
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6957
    const-string v1, "extra_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6958
    iget-object v1, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 6977
    :goto_0
    return-void

    .line 6959
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->d:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6960
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u804a\u5929"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e2a\u4eba\u9875"

    aput-object v2, v0, v1

    .line 6961
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/a/d$4;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/message/a/d$4;-><init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6976
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 6978
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6979
    const-string v1, "extra_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6980
    iget-object v1, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/a/d;)Lcom/xueqiu/android/message/model/Talk;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->d:Lcom/xueqiu/android/message/model/Talk;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V
    .locals 1

    .prologue
    .line 82
    .line 7992
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/message/ChatActivity;->a(Landroid/content/Context;Lcom/xueqiu/android/community/model/User;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    return-void
.end method

.method public final a(Lcom/xueqiu/android/message/model/Message;)V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    invoke-static {p1}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/a;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->i()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/a/d$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/a/d$2;-><init>(Lcom/xueqiu/android/message/a/d;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 895
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/xueqiu/android/message/model/Message;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 912
    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    .line 913
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "\u590d\u5236"

    aput-object v3, v0, v2

    const-string v3, "\u8f6c\u53d1"

    aput-object v3, v0, v1

    const-string v3, "\u5220\u9664"

    aput-object v3, v0, v4

    .line 914
    invoke-virtual {p2}, Lcom/xueqiu/android/message/model/Message;->isFailed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 915
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u590d\u5236"

    aput-object v3, v0, v2

    const-string v2, "\u8f6c\u53d1"

    aput-object v2, v0, v1

    const-string v2, "\u5220\u9664"

    aput-object v2, v0, v4

    const-string v2, "\u91cd\u53d1"

    aput-object v2, v0, v5

    .line 917
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07024f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/a/d$3;

    invoke-direct {v3, p0, p2}, Lcom/xueqiu/android/message/a/d$3;-><init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/message/model/Message;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 937
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/message/model/Message;)V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6461
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6462
    new-instance v1, Lcom/xueqiu/android/message/a/d$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/a/d$12;-><init>(Lcom/xueqiu/android/message/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 900
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 4

    .prologue
    const/4 v1, 0x7

    .line 217
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 218
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 219
    :cond_0
    const/4 v0, 0x2

    .line 233
    :goto_0
    return v0

    .line 220
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 221
    const/4 v0, 0x3

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 223
    const/4 v0, 0x4

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 225
    const/4 v0, 0x5

    goto :goto_0

    .line 226
    :cond_4
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_5

    .line 227
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_5

    .line 228
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    .line 229
    :cond_5
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    goto :goto_0

    .line 230
    :cond_7
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x7

    const/4 v8, 0x0

    .line 239
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/d;->getItemViewType(I)I

    move-result v5

    .line 240
    if-nez p2, :cond_1f

    .line 241
    if-ne v5, v10, :cond_2

    .line 242
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030160

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 280
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/message/model/Message;

    .line 281
    new-instance v3, Lcom/xueqiu/android/message/a/g;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/a/g;-><init>(Lcom/xueqiu/android/message/a/d;)V

    .line 282
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    if-ne v5, v10, :cond_d

    .line 4394
    const v3, 0x7f0e054e

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4395
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_c

    if-eqz v3, :cond_c

    .line 4396
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    const-string v5, "yyyy-MM-dd"

    invoke-static {v2, v5}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :cond_1
    :goto_1
    return-object v4

    .line 243
    :cond_2
    if-ne v5, v11, :cond_3

    .line 244
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030164

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 245
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v2, v4}, Lcom/xueqiu/android/message/a/i;->a(Landroid/app/Activity;Landroid/view/View;)Lcom/xueqiu/android/message/a/i;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_3
    if-ne v5, v12, :cond_4

    .line 247
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030165

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 248
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v2, v4}, Lcom/xueqiu/android/message/a/i;->a(Landroid/app/Activity;Landroid/view/View;)Lcom/xueqiu/android/message/a/i;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_4
    const/4 v2, 0x5

    if-ne v5, v2, :cond_5

    .line 250
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030161

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 251
    :cond_5
    const/4 v2, 0x6

    if-eq v5, v2, :cond_6

    if-ne v5, v9, :cond_8

    .line 253
    :cond_6
    iget-object v3, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    if-ne v5, v9, :cond_7

    const v2, 0x7f030163

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v3, v2, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 254
    invoke-static {v4}, Lcom/xueqiu/android/message/a/f;->a(Landroid/view/View;)Lcom/xueqiu/android/message/a/f;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    const v2, 0x7f0e0556

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 256
    const v2, 0x7f0e0551

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 257
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 258
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 259
    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    const v7, 0x7f030167

    invoke-virtual {v6, v7, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 260
    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v3, Lcom/xueqiu/android/message/a/e;

    invoke-direct {v3, p0, v6}, Lcom/xueqiu/android/message/a/e;-><init>(Lcom/xueqiu/android/message/a/d;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 253
    :cond_7
    const v2, 0x7f030166

    goto :goto_2

    .line 262
    :cond_8
    const/4 v2, 0x1

    if-ne v5, v2, :cond_b

    .line 263
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030163

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 264
    invoke-static {v4}, Lcom/xueqiu/android/message/a/f;->a(Landroid/view/View;)Lcom/xueqiu/android/message/a/f;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 265
    const v2, 0x7f0e0550

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 266
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->g:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    :cond_9
    iget-object v3, p0, Lcom/xueqiu/android/message/a/d;->g:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 268
    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->h:Lcom/d/a/b/f;

    iget-object v3, p0, Lcom/xueqiu/android/message/a/d;->g:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/xueqiu/android/message/a/d;->g:Lcom/xueqiu/android/community/model/User;

    .line 270
    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v3

    sget-object v8, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v3, v8, :cond_a

    iget-object v3, p0, Lcom/xueqiu/android/message/a/d;->j:Lcom/d/a/b/d;

    :goto_3
    new-instance v8, Lcom/xueqiu/android/message/b/a;

    invoke-direct {v8}, Lcom/xueqiu/android/message/b/a;-><init>()V

    .line 268
    invoke-virtual {v6, v7, v2, v3, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_0

    .line 270
    :cond_a
    iget-object v3, p0, Lcom/xueqiu/android/message/a/d;->i:Lcom/d/a/b/d;

    goto :goto_3

    .line 275
    :cond_b
    iget-object v2, p0, Lcom/xueqiu/android/message/a/d;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030166

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 276
    invoke-static {v4}, Lcom/xueqiu/android/message/a/f;->a(Landroid/view/View;)Lcom/xueqiu/android/message/a/f;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4397
    :cond_c
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v5

    if-ne v5, v9, :cond_1

    if-eqz v3, :cond_1

    .line 4398
    iget-object v5, p0, Lcom/xueqiu/android/message/a/d;->f:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v2, v5}, Lcom/xueqiu/android/message/model/Message;->getEventText(Lcom/xueqiu/android/base/storage/DBManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 286
    :cond_d
    if-ne v5, v11, :cond_f

    .line 287
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/message/a/i;

    iget-object v5, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v3, v2, v5}, Lcom/xueqiu/android/message/a/i;->a(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/ChatActivity;)V

    .line 289
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "url"

    invoke-static {v3, v2}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    new-instance v2, Lcom/xueqiu/android/message/a/d$1;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/message/a/d$1;-><init>(Lcom/xueqiu/android/message/a/d;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 297
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 290
    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 299
    :cond_f
    if-ne v5, v12, :cond_11

    .line 300
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/message/a/i;

    iget-object v5, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v3, v2, v5}, Lcom/xueqiu/android/message/a/i;->a(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/ChatActivity;)V

    .line 302
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "url"

    invoke-static {v3, v2}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    new-instance v2, Lcom/xueqiu/android/message/a/d$5;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/message/a/d$5;-><init>(Lcom/xueqiu/android/message/a/d;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 310
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 303
    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    .line 313
    :cond_11
    const/4 v3, 0x5

    if-ne v5, v3, :cond_12

    .line 314
    const v3, 0x7f0e054f

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 315
    invoke-direct {p0, v3, v2}, Lcom/xueqiu/android/message/a/d;->a(Landroid/widget/LinearLayout;Lcom/xueqiu/android/message/model/Message;)V

    goto/16 :goto_1

    .line 317
    :cond_12
    new-instance v7, Lcom/xueqiu/android/message/a/h;

    invoke-direct {v7, p0, v2}, Lcom/xueqiu/android/message/a/h;-><init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/message/model/Message;)V

    .line 318
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 319
    const v3, 0x7f0e0558

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 320
    if-eqz v3, :cond_13

    .line 321
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 323
    :cond_13
    iget-object v3, p0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/message/model/Message;

    .line 4403
    const v5, 0x7f0e0550

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 4404
    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->f:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v8

    .line 4405
    if-eqz v8, :cond_16

    if-eqz v5, :cond_16

    .line 4406
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 4407
    :cond_14
    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4408
    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1b

    .line 4409
    iget-object v9, p0, Lcom/xueqiu/android/message/a/d;->h:Lcom/d/a/b/f;

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v10

    .line 4411
    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v6

    sget-object v11, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v6, v11, :cond_1a

    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->j:Lcom/d/a/b/d;

    :goto_6
    new-instance v11, Lcom/xueqiu/android/message/b/a;

    invoke-direct {v11}, Lcom/xueqiu/android/message/b/a;-><init>()V

    .line 4409
    invoke-virtual {v9, v10, v5, v6, v11}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 4427
    :cond_15
    :goto_7
    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->d:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v6}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 4428
    new-instance v6, Lcom/xueqiu/android/message/a/d$9;

    invoke-direct {v6, p0, v8}, Lcom/xueqiu/android/message/a/d$9;-><init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4434
    new-instance v6, Lcom/xueqiu/android/message/a/d$10;

    invoke-direct {v6, p0, v8}, Lcom/xueqiu/android/message/a/d$10;-><init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4450
    :cond_16
    :goto_8
    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 4451
    const v5, 0x7f0e0555

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 4452
    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v6

    if-nez v6, :cond_1e

    const v6, 0x7f020141

    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4454
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xueqiu/android/message/a/f;

    .line 4455
    if-eqz v5, :cond_18

    .line 4456
    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->c:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v5, v3, v6}, Lcom/xueqiu/android/message/a/f;->a(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/ChatActivity;)V

    .line 324
    :cond_18
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/message/a/f;

    .line 325
    if-eqz v3, :cond_19

    iget-object v5, v3, Lcom/xueqiu/android/message/a/f;->f:Landroid/widget/TextView;

    if-eqz v5, :cond_19

    .line 326
    iget-object v5, v3, Lcom/xueqiu/android/message/a/f;->f:Landroid/widget/TextView;

    new-instance v6, Lcom/xueqiu/android/message/a/d$6;

    invoke-direct {v6, p0, v2}, Lcom/xueqiu/android/message/a/d$6;-><init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/message/model/Message;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_19
    if-eqz v3, :cond_1

    iget-object v2, v3, Lcom/xueqiu/android/message/a/f;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, v3, Lcom/xueqiu/android/message/a/f;->d:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, v3, Lcom/xueqiu/android/message/a/f;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 4411
    :cond_1a
    iget-object v6, p0, Lcom/xueqiu/android/message/a/d;->i:Lcom/d/a/b/d;

    goto :goto_6

    .line 4414
    :cond_1b
    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v6

    sget-object v9, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v6, v9, :cond_1c

    const v6, 0x7f020483

    :goto_a
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_1c
    const v6, 0x7f020488

    goto :goto_a

    .line 4442
    :cond_1d
    new-instance v6, Lcom/xueqiu/android/message/a/d$11;

    invoke-direct {v6, p0, v8}, Lcom/xueqiu/android/message/a/d$11;-><init>(Lcom/xueqiu/android/message/a/d;Lcom/xueqiu/android/community/model/User;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 4452
    :cond_1e
    const v6, 0x7f020140

    goto :goto_9

    :cond_1f
    move-object v4, p2

    goto/16 :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x8

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x0

    return v0
.end method
