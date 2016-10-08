.class public Lcom/xueqiu/android/community/UserProfileActivity;
.super Lcom/xueqiu/android/base/j;
.source "UserProfileActivity.java"

# interfaces
.implements Lcom/xueqiu/android/community/b/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/j",
        "<",
        "Lcom/xueqiu/android/community/d/e;",
        ">;",
        "Lcom/xueqiu/android/community/b/o;"
    }
.end annotation


# instance fields
.field private A:Landroid/content/Context;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Lcom/d/a/b/d;

.field private J:Landroid/content/BroadcastReceiver;

.field p:Lcom/xueqiu/android/community/model/User;

.field private q:Lcom/xueqiu/android/community/widget/i;

.field private r:Landroid/widget/ListView;

.field private s:Landroid/view/ViewGroup;

.field private t:Lcom/xueqiu/android/community/a/ak;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Lcom/d/a/b/f;

.field private w:I

.field private x:Landroid/view/ViewGroup;

.field private y:I

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7f020208

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/xueqiu/android/base/j;-><init>()V

    .line 103
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->v:Lcom/d/a/b/f;

    .line 104
    iput v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->w:I

    .line 106
    iput v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->y:I

    .line 109
    iput-boolean v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->B:Z

    .line 110
    iput-boolean v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->C:Z

    .line 111
    iput-boolean v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->D:Z

    .line 112
    iput-boolean v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->E:Z

    .line 117
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 2270
    iput v2, v0, Lcom/d/a/b/e;->b:I

    .line 2293
    iput v2, v0, Lcom/d/a/b/e;->c:I

    .line 3248
    iput v2, v0, Lcom/d/a/b/e;->a:I

    .line 120
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x42100000    # 36.0f

    .line 121
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 3445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 121
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->I:Lcom/d/a/b/d;

    .line 123
    new-instance v0, Lcom/xueqiu/android/community/UserProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UserProfileActivity$1;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->J:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserProfileActivity;I)I
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->y:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserProfileActivity;J)V
    .locals 3

    .prologue
    .line 94
    .line 16032
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 15404
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserProfileActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 94
    .line 16452
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserProfileActivity;->h()Landroid/app/Dialog;

    .line 17180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 16453
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$5;

    invoke-direct {v1, p0, p0, p1}, Lcom/xueqiu/android/community/UserProfileActivity$5;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 17381
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/xueqiu/android/base/b/an;->b(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 94
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/UserProfileActivity;)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 94
    .line 9257
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    const v2, 0x7f0e074d

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 9258
    if-nez v1, :cond_0

    .line 9259
    :goto_0
    return v0

    .line 9262
    :cond_0
    const v2, 0x7f0e05fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/high16 v3, 0x43020000    # 130.0f

    invoke-static {p0, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/xueqiu/android/community/UserProfileActivity;->s:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 9263
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    int-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 94
    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/UserProfileActivity;I)I
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->w:I

    return p1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string v0, "all"

    .line 241
    packed-switch p0, :pswitch_data_0

    .line 253
    :goto_0
    return-object v0

    .line 243
    :pswitch_0
    const-string v0, "all"

    goto :goto_0

    .line 246
    :pswitch_1
    const-string v0, "original"

    goto :goto_0

    .line 249
    :pswitch_2
    const-string v0, "question"

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/xueqiu/android/community/UserProfileActivity;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->B:Z

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/xueqiu/android/community/UserProfileActivity;->l()V

    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->x:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/community/widget/i;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->q:Lcom/xueqiu/android/community/widget/i;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/community/UserProfileActivity;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->w:I

    return v0
.end method

.method static synthetic k(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 977
    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 978
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->a(Landroid/view/ViewGroup;)V

    .line 979
    return-void
.end method

.method static synthetic m(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 7

    .prologue
    .line 9341
    new-instance v0, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v0}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 9342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9343
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "\u5feb\u6765\u770b\u770b%s \u7684\u4e2a\u4eba\u4e3b\u9875 %s\uff0c\u63a8\u8350\u4f60\u5173\u6ce8"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 9344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7684\u96ea\u7403\u4e3b\u9875"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10113
    iput-object v2, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 10129
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 9347
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 10137
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 11075
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 9348
    const-string v4, "wx_content_type"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12075
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 9349
    const-string v2, "wx_friend_content"

    iget-object v4, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13065
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 9350
    const-string v2, "wx_title"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14065
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 9351
    const-string v2, "wx_friend_title"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9352
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    .line 94
    return-void
.end method

.method static synthetic n(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 14408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14409
    const v1, 0x7f0702ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 14411
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14412
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14416
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 14417
    const v4, 0x7f08004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f08004c

    .line 14418
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f08004b

    .line 14419
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v6, 0x0

    .line 14417
    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 14421
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14423
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 14424
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14425
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14426
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14427
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 14429
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 14431
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 14434
    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/UserProfileActivity$3;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/community/UserProfileActivity$3;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14441
    const v1, 0x7f070070

    new-instance v2, Lcom/xueqiu/android/community/UserProfileActivity$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/UserProfileActivity$4;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14448
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    return-void
.end method

.method static synthetic o(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic p(Lcom/xueqiu/android/community/UserProfileActivity;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->H:Z

    return v0
.end method

.method static synthetic q(Lcom/xueqiu/android/community/UserProfileActivity;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->H:Z

    return v0
.end method

.method static synthetic r(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->G:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic t(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic u(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic v(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic w(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic x(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic y(Lcom/xueqiu/android/community/UserProfileActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic z(Lcom/xueqiu/android/community/UserProfileActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->z:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 937
    new-instance v2, Lcom/xueqiu/android/community/UserProfileActivity$25;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/community/UserProfileActivity$25;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;Landroid/view/ViewGroup;)V

    move v0, v1

    .line 968
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 969
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 970
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->w:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 974
    return-void
.end method

.method public final a(Lcom/xueqiu/android/common/model/PagedList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x11

    const/4 v8, 0x0

    .line 823
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    .line 824
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 825
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03020d

    iget-object v3, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 826
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 828
    const v1, 0x7f0e0746

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 829
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getTotalCount()I

    move-result v1

    .line 7807
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7808
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const v5, 0x7f07056c

    invoke-virtual {p0, v5}, Lcom/xueqiu/android/community/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xueqiu/android/community/UserProfileActivity;->F:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7809
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 7810
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, " (%d)"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7811
    const-string v1, "#aaaaaa"

    .line 7812
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 7813
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 7812
    invoke-virtual {v3, v5, v4, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7814
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v5, p0, Lcom/xueqiu/android/community/UserProfileActivity;->A:Landroid/content/Context;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 7815
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 7814
    invoke-virtual {v3, v1, v4, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7816
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 7817
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 7816
    invoke-virtual {v3, v1, v4, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7818
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$19;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    const v0, 0x7f0e0747

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 843
    new-instance v1, Lcom/xueqiu/android/community/a/w;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/w;-><init>(Landroid/content/Context;)V

    .line 844
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/a/w;->a(Ljava/util/ArrayList;)V

    .line 846
    const/4 v3, 0x0

    invoke-virtual {v1, v8, v3, v0}, Lcom/xueqiu/android/community/a/w;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 847
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 848
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Question;

    .line 849
    new-instance v2, Lcom/xueqiu/android/community/UserProfileActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity$20;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;Lcom/xueqiu/android/community/model/Question;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    :cond_0
    return-void
.end method

.method public final a(Lcom/xueqiu/android/community/model/User;Z)V
    .locals 9

    .prologue
    const v8, 0x7f0e01cf

    const v6, 0x7f0e0010

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 526
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    .line 527
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 6077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 527
    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->B:Z

    .line 528
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ba;->b(Lcom/xueqiu/android/community/model/User;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->F:Ljava/lang/String;

    .line 530
    if-nez p2, :cond_0

    .line 531
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030210

    iget-object v4, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 532
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 6273
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFemale()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6274
    const v0, 0x7f02048b

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->u:Landroid/graphics/drawable/Drawable;

    .line 6278
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->s:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->u:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 6280
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->B:Z

    if-eqz v0, :cond_1

    .line 6281
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6285
    :cond_1
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$26;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$26;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6293
    const v0, 0x7f0e0014

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$27;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$27;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6304
    const v0, 0x7f0e000b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$28;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$28;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6312
    const v0, 0x7f0e01b3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$29;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$29;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6320
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$30;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$30;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6328
    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$31;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$31;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6574
    const v0, 0x7f0e05fe

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6575
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v4

    .line 6576
    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v4, v1, :cond_a

    .line 6577
    const v1, 0x7f02048a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6582
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->v:Lcom/d/a/b/f;

    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/xueqiu/android/community/UserProfileActivity;->I:Lcom/d/a/b/d;

    invoke-virtual {v1, v5, v0, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 6583
    invoke-virtual {p0, v8}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$9;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6595
    const v0, 0x7f0e01d0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6596
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6598
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6599
    const v1, 0x7f0e021a

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6600
    iget-object v5, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6601
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6604
    :cond_2
    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->MALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v4, v1, :cond_b

    .line 6605
    const v1, 0x7f020280

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6612
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isVerifiedRealName()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6613
    :cond_4
    iput-boolean v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->D:Z

    .line 6614
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6616
    const v0, 0x7f0e074f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6617
    const v1, 0x7f0e0750

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6618
    iget-object v4, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ba;->a(Lcom/xueqiu/android/community/model/User;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 6620
    iget-object v5, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v5

    sget-object v6, Lcom/xueqiu/android/community/model/UserVerifyType;->NO_VERIFY:Lcom/xueqiu/android/community/model/UserVerifyType;

    if-eq v5, v6, :cond_5

    .line 6621
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6622
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6625
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isVerifiedRealName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6626
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6634
    :cond_6
    :goto_4
    const v0, 0x7f0e0209

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6635
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 7197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6635
    if-nez v1, :cond_d

    .line 6636
    iput-boolean v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->E:Z

    .line 6637
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "\u7b80\u4ecb\uff1a%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6638
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    :goto_5
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->B:Z

    if-nez v0, :cond_e

    .line 541
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserProfileActivity;->j()V

    .line 7720
    :goto_6
    const v0, 0x7f0e0755

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$13;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7729
    const v0, 0x7f0e0756

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getFriendsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7732
    const v0, 0x7f0e0757

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$14;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7741
    const v0, 0x7f0e01a0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getFollowersCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7744
    const v0, 0x7f0e0758

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$15;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7755
    const v0, 0x7f0e0759

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getStocksCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7758
    const v0, 0x7f0e075a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$16;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7769
    const v0, 0x7f0e075b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getCubeCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->D:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->E:Z

    if-nez v0, :cond_7

    .line 548
    const v0, 0x7f0e074e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 551
    :cond_7
    const v0, 0x7f0e074e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$7;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    const v1, 0x7f0e0752

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$8;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    return-void

    :cond_8
    move v0, v3

    .line 527
    goto/16 :goto_0

    .line 6276
    :cond_9
    const v0, 0x7f02048d

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->u:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 6579
    :cond_a
    const v1, 0x7f02048c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 6606
    :cond_b
    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v4, v1, :cond_3

    .line 6607
    const v1, 0x7f02027f

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_3

    .line 6629
    :cond_c
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 6640
    :cond_d
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 7645
    :cond_e
    const v0, 0x7f0e0751

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7646
    const v0, 0x7f0e0752

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7647
    const v0, 0x7f0e02a8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 7648
    const v0, 0x7f0e0754

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7650
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    const v1, 0x7f0e0754

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$10;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/SimpleFund;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 774
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 775
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03020e

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 776
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 778
    const v1, 0x7f0e0748

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 779
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const v2, 0x7f07056e

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/community/UserProfileActivity;->F:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$17;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$17;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/SimpleFund;

    .line 790
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/SimpleFund;->setManager(Ljava/lang/String;)V

    .line 792
    const v1, 0x7f0e0749

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 793
    new-instance v2, Lcom/xueqiu/android/community/a/m;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/a/m;-><init>(Landroid/content/Context;)V

    .line 794
    invoke-virtual {v2, p1}, Lcom/xueqiu/android/community/a/m;->a(Ljava/util/ArrayList;)V

    .line 795
    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, v1}, Lcom/xueqiu/android/community/a/m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 797
    new-instance v2, Lcom/xueqiu/android/community/UserProfileActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity$18;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;Lcom/xueqiu/android/community/model/SimpleFund;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x0

    .line 865
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 866
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03020f

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 867
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 869
    const v1, 0x7f0e074a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 870
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const v3, 0x7f07056f

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/community/UserProfileActivity;->F:Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    new-instance v2, Lcom/xueqiu/android/community/UserProfileActivity$21;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/UserProfileActivity$21;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    const v1, 0x7f0e074b

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 884
    new-instance v8, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v8, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    .line 885
    invoke-virtual {v8, p1}, Lcom/xueqiu/android/community/a/ak;->a(Ljava/util/ArrayList;)V

    .line 887
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_1

    move v4, v5

    :goto_0
    move v6, v7

    .line 888
    :goto_1
    if-ge v6, v4, :cond_2

    .line 889
    const/4 v2, 0x0

    invoke-virtual {v8, v6, v2, v1}, Lcom/xueqiu/android/community/a/ak;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 890
    if-nez v6, :cond_0

    .line 891
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 895
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/community/model/Status;

    .line 896
    new-instance v9, Lcom/xueqiu/android/community/UserProfileActivity$22;

    invoke-direct {v9, p0, v3}, Lcom/xueqiu/android/community/UserProfileActivity$22;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    .line 887
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v2

    goto :goto_0

    .line 910
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 911
    const v1, 0x7f0e074c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 912
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 913
    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$24;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$24;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    :cond_3
    return-void
.end method

.method public final b(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 484
    const v0, 0x7f0e0751

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 485
    const v1, 0x7f0e04aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->G:Landroid/view/View;

    .line 486
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pay_ask_first_in"

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->H:Z

    .line 487
    iget-boolean v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->H:Z

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->G:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 493
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->paidMentionAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->B:Z

    if-nez v1, :cond_1

    .line 494
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 495
    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$6;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    :goto_1
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 986
    const/4 v0, -0x1

    .line 987
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 988
    if-eqz v2, :cond_0

    .line 989
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 991
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->t:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v2, p1}, Lcom/xueqiu/android/community/a/ak;->a(Ljava/util/ArrayList;)V

    .line 992
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->t:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    .line 994
    const v2, 0x7f0e0118

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 995
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 996
    add-int/lit8 v1, v0, -0x2

    .line 997
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {p0, v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->y:I

    sub-int/2addr v0, v2

    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1001
    return-void
.end method

.method public final synthetic d()Lcom/xueqiu/android/base/c;
    .locals 2

    .prologue
    .line 94
    .line 8268
    new-instance v0, Lcom/xueqiu/android/community/d/e;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/community/d/e;-><init>(Lcom/xueqiu/android/community/b/o;Lcom/xueqiu/android/community/model/User;)V

    .line 94
    return-object v0
.end method

.method public final j()V
    .locals 8

    .prologue
    const v7, 0x7f0e000b

    const v6, 0x7f0d010e

    const v5, 0x7f0200e7

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 667
    const v0, 0x7f0e02a8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 668
    const v0, 0x7f0e0753

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 669
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 670
    invoke-static {v5}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 672
    const v2, 0x7f070072

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 673
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 674
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    :cond_0
    :goto_0
    new-instance v0, Lcom/xueqiu/android/community/UserProfileActivity$11;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UserProfileActivity$11;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    return-void

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 677
    invoke-static {v5}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 679
    const v2, 0x7f07002e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 680
    const v2, 0x7f02012b

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 681
    invoke-static {v6}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 683
    const v2, 0x7f070161

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 684
    const v2, 0x7f02012e

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 693
    :cond_2
    :goto_1
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 694
    const v0, 0x7f0e01b3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 695
    invoke-virtual {p0, v7}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 698
    const v0, 0x7f0e01b3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 687
    :cond_3
    const v2, 0x7f0200e9

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 688
    const-string v2, "\u5173\u6ce8"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    const v2, 0x7f02012d

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 690
    const v2, 0x7f0d0148

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 700
    :cond_4
    invoke-virtual {p0, v7}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 927
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030213

    iget-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 928
    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 930
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->x:Landroid/view/ViewGroup;

    .line 931
    const v1, 0x7f0e060d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->z:Landroid/view/View;

    .line 932
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->x:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->a(Landroid/view/ViewGroup;)V

    .line 933
    invoke-direct {p0}, Lcom/xueqiu/android/community/UserProfileActivity;->l()V

    .line 934
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->setContentView(I)V

    .line 135
    iput-object p0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->A:Landroid/content/Context;

    .line 136
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    .line 4066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 139
    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->s:Landroid/view/ViewGroup;

    .line 140
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->J:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.user.UPDATE_USER_INFO"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onDestroy()V

    .line 154
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 155
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 145
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onStart()V

    .line 146
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->C:Z

    if-nez v0, :cond_0

    .line 4158
    iput-boolean v3, p0, Lcom/xueqiu/android/community/UserProfileActivity;->C:Z

    .line 4159
    const v0, 0x7f0e01b2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 4160
    new-instance v2, Lcom/xueqiu/android/community/widget/i;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v1, Lcom/xueqiu/android/common/t;

    invoke-direct {v2, v0, v1}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/UserProfileActivity;->q:Lcom/xueqiu/android/community/widget/i;

    .line 4161
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->q:Lcom/xueqiu/android/community/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->c(Z)V

    .line 4163
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->q:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->d()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->r:Landroid/widget/ListView;

    .line 4164
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->t:Lcom/xueqiu/android/community/a/ak;

    .line 4165
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->t:Lcom/xueqiu/android/community/a/ak;

    .line 5157
    iput-boolean v3, v0, Lcom/xueqiu/android/community/a/ak;->h:Z

    .line 4167
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->q:Lcom/xueqiu/android/community/widget/i;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserProfileActivity;->t:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 4169
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->q:Lcom/xueqiu/android/community/widget/i;

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$12;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4219
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity;->q:Lcom/xueqiu/android/community/widget/i;

    new-instance v1, Lcom/xueqiu/android/community/UserProfileActivity$23;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserProfileActivity$23;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    :cond_0
    return-void
.end method
