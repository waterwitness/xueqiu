.class public Lcom/xueqiu/android/community/StatusDetailActivity;
.super Lcom/xueqiu/android/common/b;
.source "StatusDetailActivity.java"


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/TextView;

.field private G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/LinearLayout;

.field private K:Landroid/widget/LinearLayout;

.field private L:Lcom/xueqiu/android/community/a/a;

.field private M:Lcom/xueqiu/android/community/a/a;

.field private N:Landroid/content/Context;

.field private O:Landroid/view/View$OnClickListener;

.field private P:Lcom/xueqiu/android/base/b/x;

.field private Q:Lcom/xueqiu/android/common/widget/j;

.field private R:Landroid/content/BroadcastReceiver;

.field private S:Landroid/content/BroadcastReceiver;

.field private T:Landroid/content/BroadcastReceiver;

.field j:Lcom/xueqiu/android/community/model/Status;

.field k:Z

.field private p:Lcom/xueqiu/android/community/model/Status;

.field private q:J

.field private r:Z

.field private s:Lcom/xueqiu/android/community/a/a;

.field private t:I

.field private u:I

.field private v:Lcom/xueqiu/android/community/model/Comment;

.field private w:Landroid/app/Dialog;

.field private x:Z

.field private y:Lorg/json/JSONObject;

.field private z:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 167
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 169
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->q:J

    .line 173
    iput-boolean v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->r:Z

    .line 184
    iput v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    .line 185
    iput v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    .line 186
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->v:Lcom/xueqiu/android/community/model/Comment;

    .line 187
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->w:Landroid/app/Dialog;

    .line 188
    iput-boolean v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->x:Z

    .line 189
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->y:Lorg/json/JSONObject;

    .line 191
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    .line 193
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    .line 195
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    .line 208
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->J:Landroid/widget/LinearLayout;

    .line 209
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->K:Landroid/widget/LinearLayout;

    .line 211
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->L:Lcom/xueqiu/android/community/a/a;

    .line 213
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->M:Lcom/xueqiu/android/community/a/a;

    .line 215
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->k:Z

    .line 1011
    new-instance v0, Lcom/xueqiu/android/community/StatusDetailActivity$14;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$14;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->O:Landroid/view/View$OnClickListener;

    .line 1231
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->P:Lcom/xueqiu/android/base/b/x;

    .line 1961
    new-instance v0, Lcom/xueqiu/android/community/StatusDetailActivity$30;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$30;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->Q:Lcom/xueqiu/android/common/widget/j;

    .line 2120
    new-instance v0, Lcom/xueqiu/android/community/StatusDetailActivity$35;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$35;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->R:Landroid/content/BroadcastReceiver;

    .line 2127
    new-instance v0, Lcom/xueqiu/android/community/StatusDetailActivity$36;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$36;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->S:Landroid/content/BroadcastReceiver;

    .line 2164
    new-instance v0, Lcom/xueqiu/android/community/StatusDetailActivity$37;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$37;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->T:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/xueqiu/android/community/StatusDetailActivity;)Z
    .locals 2

    .prologue
    .line 143
    .line 33188
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 143
    goto :goto_0
.end method

.method static synthetic B(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 2

    .prologue
    .line 143
    .line 34167
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const v1, 0x7f0e0063

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method static synthetic C(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 1

    .prologue
    .line 143
    .line 35141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method static synthetic D(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 2

    .prologue
    const v1, 0x7f0e0063

    .line 143
    .line 35181
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35182
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35183
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 143
    :cond_0
    return-void
.end method

.method static synthetic E(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 4

    .prologue
    .line 36712
    const-string v0, "\u662f\u5426\u786e\u5b9a\u5220\u9664?"

    .line 36713
    const-string v1, "UNANSWERED"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36714
    const-string v0, "\u5220\u9664\u540e\u8d39\u7528\u4e0d\u9000\u8fd8\uff0c\u5c06\u8f6c\u7ed9\u88ab\u63d0\u95ee\u8005"

    .line 36717
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070409

    .line 36718
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    .line 36719
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    .line 36720
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/StatusDetailActivity$26;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$26;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 36726
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    return-void
.end method

.method static synthetic F(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 2

    .prologue
    .line 38180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 38103
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$33;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$33;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->j(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 143
    return-void
.end method

.method static synthetic G(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 4

    .prologue
    .line 39180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 39055
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$31;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$31;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 40143
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/an;->f(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 143
    return-void
.end method

.method static synthetic H(Lcom/xueqiu/android/community/StatusDetailActivity;)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->r:Z

    return v0
.end method

.method static synthetic I(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->l()V

    return-void
.end method

.method static synthetic J(Lcom/xueqiu/android/community/StatusDetailActivity;)I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    return v0
.end method

.method static synthetic K(Lcom/xueqiu/android/community/StatusDetailActivity;)Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->x:Z

    return v0
.end method

.method static synthetic L(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->p()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;I)I
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a/a;)Lcom/xueqiu/android/community/a/a;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->L:Lcom/xueqiu/android/community/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Comment;)Lcom/xueqiu/android/community/model/Comment;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->v:Lcom/xueqiu/android/community/model/Comment;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)Lcom/xueqiu/android/community/model/Status;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->y:Lorg/json/JSONObject;

    return-object p1
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1517
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    .line 1521
    new-instance v1, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 1522
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    invoke-virtual {v2, p1, p0, v0, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    .line 35671
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_be_from_stock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35672
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35673
    invoke-static {p0, p1, p2, v2, v0}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 35677
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    return-void

    .line 36032
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v2, v0}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/google/gson/JsonArray;)V
    .locals 4

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x0

    .line 143
    .line 31369
    const v0, 0x7f0e02b1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 31370
    new-instance v1, Lcom/xueqiu/android/stock/a/ah;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/stock/a/ah;-><init>(Landroid/content/Context;Lcom/google/gson/JsonArray;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 31371
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 31372
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setClipToPadding(Z)V

    .line 31373
    const/high16 v1, -0x3e800000    # -16.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 31374
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$19;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/User;)V
    .locals 6

    .prologue
    .line 16023
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16024
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 16025
    const-class v1, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16026
    const-string v1, "extra_user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16036
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    :cond_0
    return-void

    .line 16028
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    .line 16030
    if-eqz v0, :cond_0

    .line 16033
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 16034
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/c;)V
    .locals 2

    .prologue
    .line 31480
    new-instance v0, Lcom/xueqiu/android/community/StatusDetailActivity$24;

    invoke-direct {v0, p0, p2}, Lcom/xueqiu/android/community/StatusDetailActivity$24;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/cube/a/c;)V

    .line 32025
    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/xueqiu/android/base/util/f;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/StatusDetailActivity;Ljava/util/ArrayList;)V
    .locals 13

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    const v1, 0x7f0e0299

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    .line 16816
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->E:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    if-nez v0, :cond_1

    .line 16864
    :cond_0
    :goto_0
    return-void

    .line 16819
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->isTruncated()Z

    move-result v0

    if-nez v0, :cond_8

    .line 16820
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16821
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$8;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 17077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 16834
    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    move v5, v2

    .line 16837
    :goto_1
    if-eqz v5, :cond_5

    const-string v0, "ANSWER"

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    .line 16838
    invoke-static {v1}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    .line 16840
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 18069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 18077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 16841
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    const-string v0, "ANSWERED"

    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 16842
    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v4, v2

    .line 16845
    :goto_3
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%d\u4eba\u5df2\u6253\u8d4f"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/Status;->getRewardUserCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 16846
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v7, 0x7f0e029b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16847
    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, "\u203b \u8be5\u95ee\u9898\u4e0b\u60a8\u5171\u5f97\u5230\u6536\u5165 <font color=\"#C0A26F\">[\u00a5%.2f]</font> \u203b"

    new-array v9, v2, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v10}, Lcom/xueqiu/android/community/model/Status;->getRewardAmount()J

    move-result-wide v10

    long-to-float v10, v10

    div-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 16849
    if-nez v1, :cond_2

    if-eqz v4, :cond_7

    .line 16851
    :cond_2
    invoke-static {v7, p0, v0}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16852
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16861
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v1, 0x7f0e029a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16867
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 16868
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    float-to-int v0, v0

    .line 16869
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    .line 16870
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v2

    .line 16871
    sub-int/2addr v2, v1

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    div-int/2addr v2, v4

    .line 16872
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16873
    invoke-virtual {v4, v0, v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 16874
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 16875
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RewardCash;

    .line 16876
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16877
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16878
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RewardCash;->getSmallImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 16879
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16874
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    move v5, v3

    .line 16834
    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 16838
    goto/16 :goto_2

    :cond_6
    move v4, v3

    .line 16842
    goto/16 :goto_3

    .line 16854
    :cond_7
    if-eqz v5, :cond_3

    .line 16855
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "\u203b \u60a8\u5171\u5f97\u5230\u6536\u5165 <font color=\"#C0A26F\">[\u00a5%.2f]</font> \u203b"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/Status;->getRewardAmount()J

    move-result-wide v8

    long-to-float v5, v8

    div-float/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 16856
    invoke-static {v1, p0, v0}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16857
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 16863
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/c;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1499
    sget-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->DAILY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    .line 9148
    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/xueqiu/android/cube/a/c;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/CubeCalGainType;ZZ)V

    .line 1501
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v1, 0x7f0e02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1503
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->y:Lorg/json/JSONObject;

    const-string v2, "list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1504
    const-string v0, "display_gain"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display_gain_label"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    const v0, 0x7f0e03ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1506
    const-string v3, "display_gain"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/cube/a/c;->a(D)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    const v0, 0x7f0e0396

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1509
    const-string v1, "display_gain_label"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    :cond_0
    :goto_0
    return-void

    .line 1512
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a/a;)Lcom/xueqiu/android/community/a/a;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)Lcom/xueqiu/android/community/model/Status;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    return-object p1
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1145
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const v1, 0x7f0e02a1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1147
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    .line 1148
    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1149
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 1151
    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_0

    .line 1164
    :goto_1
    return-void

    .line 1147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1157
    if-nez p1, :cond_2

    .line 1158
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1159
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1162
    :cond_2
    const v1, 0x7f0e0062

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 1163
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->s()V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/StatusDetailActivity;I)V
    .locals 4

    .prologue
    .line 37077
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 37078
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/PromotionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37079
    const-string v1, "extra_status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 37080
    const-string v1, "extra_top_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37081
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 37082
    :goto_0
    return-void

    .line 37180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 37084
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$32;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$32;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->t(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/c;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/c;)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/StatusDetailActivity;Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const v6, 0x7f020208

    const/4 v5, 0x0

    .line 143
    .line 27422
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v1, 0x7f0e02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27423
    const v1, 0x7f0e0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 27425
    new-instance v2, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v3, "list"

    new-instance v4, Lcom/xueqiu/android/community/StatusDetailActivity$21;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$21;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 27426
    invoke-virtual {v4}, Lcom/xueqiu/android/community/StatusDetailActivity$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;->parse(Ljava/lang/String;)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v2

    .line 27428
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xueqiu/android/common/model/PagedGroup;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 27429
    :cond_0
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 27430
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 27431
    :goto_0
    return-void

    .line 27433
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27434
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27437
    invoke-virtual {v2, v5}, Lcom/xueqiu/android/common/model/PagedGroup;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 27439
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 27440
    new-instance v2, Lcom/xueqiu/android/cube/a/c;

    invoke-direct {v2}, Lcom/xueqiu/android/cube/a/c;-><init>()V

    .line 27442
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v3

    .line 28293
    iput v6, v3, Lcom/d/a/b/e;->c:I

    .line 29270
    iput v6, v3, Lcom/d/a/b/e;->b:I

    .line 30248
    iput v6, v3, Lcom/d/a/b/e;->a:I

    .line 27445
    new-instance v4, Lcom/d/a/b/c/c;

    const/high16 v5, 0x41900000    # 18.0f

    .line 27446
    invoke-static {v5}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v5}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 30445
    iput-object v4, v3, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 27447
    invoke-virtual {v3}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v3

    .line 27448
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/community/StatusDetailActivity$22;

    invoke-direct {v5, p0, v2, v0}, Lcom/xueqiu/android/community/StatusDetailActivity$22;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/cube/a/c;Lcom/xueqiu/android/cube/model/Cube;)V

    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/xueqiu/android/cube/a/c;->a(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/xueqiu/android/cube/a/b;Lcom/d/a/b/d;)Lcom/xueqiu/android/cube/a/c;

    .line 27470
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27471
    const v3, 0x7f0200f1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27476
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/c;)V

    goto :goto_0

    .line 27473
    :cond_2
    const v3, 0x7f0200f0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->L:Lcom/xueqiu/android/community/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 6

    .prologue
    .line 15114
    new-instance v3, Lcom/xueqiu/android/community/a;

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->L:Lcom/xueqiu/android/community/a/a;

    invoke-direct {v3, p0, v0, v1}, Lcom/xueqiu/android/community/a;-><init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/common/a/d;)V

    .line 15116
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->J:Landroid/widget/LinearLayout;

    const v1, 0x7f0e02a0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 15117
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15119
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->L:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/a;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 15120
    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->L:Lcom/xueqiu/android/community/a/a;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v5, v1}, Lcom/xueqiu/android/community/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 15122
    new-instance v4, Lcom/xueqiu/android/community/StatusDetailActivity$15;

    invoke-direct {v4, p0, v3, v2}, Lcom/xueqiu/android/community/StatusDetailActivity$15;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15133
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15119
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->w:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->w:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->N:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->H:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    .line 425
    new-instance v3, Lcom/xueqiu/android/community/a;

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->M:Lcom/xueqiu/android/community/a/a;

    invoke-direct {v3, p0, v0, v1}, Lcom/xueqiu/android/community/a;-><init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/common/a/d;)V

    .line 427
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->K:Landroid/widget/LinearLayout;

    const v1, 0x7f0e029e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 428
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 429
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->M:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/a;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 430
    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->M:Lcom/xueqiu/android/community/a/a;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v5, v1}, Lcom/xueqiu/android/community/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 432
    new-instance v4, Lcom/xueqiu/android/community/StatusDetailActivity$34;

    invoke-direct {v4, p0, v3, v2}, Lcom/xueqiu/android/community/StatusDetailActivity$34;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 429
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->I:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h()Landroid/app/Dialog;

    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 769
    iget-wide v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->q:J

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$7;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$7;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 813
    return-void
.end method

.method private m()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->D:Landroid/view/View;

    .line 892
    :goto_0
    const v1, 0x7f0e02a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 894
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->n()V

    .line 897
    iget v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    if-nez v1, :cond_1

    .line 898
    const v1, 0x7f0700a9

    .line 904
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 906
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 907
    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 908
    new-instance v2, Lcom/xueqiu/android/community/StatusDetailActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity$9;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Landroid/widget/PopupMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    new-instance v2, Lcom/xueqiu/android/community/StatusDetailActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity$10;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 941
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->C:Landroid/view/View;

    goto :goto_0

    .line 899
    :cond_1
    iget v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 900
    const v1, 0x7f0700ab

    goto :goto_1

    .line 902
    :cond_2
    const v1, 0x7f0700a8

    goto :goto_1
.end method

.method static synthetic m(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 7

    .prologue
    const v6, 0x7f0e02a5

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v4, 0x0

    .line 143
    .line 18356
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18357
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18356
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 18359
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 18361
    new-instance v0, Lcom/xueqiu/android/community/a/a;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    .line 18362
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    .line 19367
    iput-wide v2, v0, Lcom/xueqiu/android/community/a/a;->e:J

    .line 18363
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/a;->a(Ljava/util/ArrayList;)V

    .line 18364
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18366
    new-instance v0, Lcom/xueqiu/android/community/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/xueqiu/android/community/a;-><init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/common/a/d;)V

    .line 18369
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    new-instance v2, Lcom/xueqiu/android/community/StatusDetailActivity$23;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity$23;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 18385
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRecommendStatusCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 18386
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRecommendStatusCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendCard;->getElements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 18387
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRecommendStatusCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendCard;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 18389
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18390
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getRecommendStatusCard()Lcom/xueqiu/android/community/model/RecommendCard;

    move-result-object v1

    .line 19395
    const v0, 0x7f0e02a7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 19396
    new-instance v2, Lcom/xueqiu/android/community/a/ac;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/community/a/ac;-><init>(Landroid/content/Context;Lcom/xueqiu/android/community/model/RecommendCard;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 19397
    invoke-static {v5}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v5}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 19398
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setClipToPadding(Z)V

    .line 19399
    const/high16 v1, -0x3e800000    # -16.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 19400
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$20;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$20;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 18395
    :goto_0
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->m()V

    .line 143
    return-void

    .line 18392
    :cond_0
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private n()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 944
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    if-nez v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->D:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->D:Landroid/view/View;

    .line 953
    :goto_1
    const v1, 0x7f0e02a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 954
    const v0, 0x7f0e0246

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 955
    const v2, 0x7f0e0244

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 956
    const-string v2, "\u8bc4 %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 957
    const-string v3, "\u8f6c %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/Status;->getRetweetsCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 958
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->C:Landroid/view/View;

    goto :goto_1
.end method

.method static synthetic n(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 13

    .prologue
    .line 143
    .line 20400
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v1, 0x7f0e0296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 20449
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 21197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 20449
    if-nez v0, :cond_0

    .line 20450
    const v0, 0x7f0e022a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20451
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20452
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20454
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    .line 20455
    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 20460
    :cond_0
    const v0, 0x7f0e022b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/StatusDetailTextView;

    .line 20461
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->setVisibility(I)V

    .line 20462
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_1

    .line 20463
    const v1, -0x42b33333    # -0.05f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->setLetterSpacing(F)V

    .line 20465
    :cond_1
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getText()Ljava/lang/String;

    move-result-object v1

    .line 20467
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->isAnswer()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20468
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->isRefused()Z

    move-result v4

    invoke-static {v1, v4, p0}, Lcom/xueqiu/android/base/util/ap;->a(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 20470
    :cond_2
    invoke-static {v1, p0, v0}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->setText(Ljava/lang/CharSequence;)V

    .line 20471
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$38;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$38;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/StatusDetailTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 20479
    const v0, 0x7f0e0210

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 20480
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 20481
    invoke-static {v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 20482
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$39;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity$39;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20490
    const v0, 0x7f0e0228

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20491
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20495
    const v0, 0x7f0e01f9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20496
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 20497
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20498
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20504
    :goto_0
    const v0, 0x7f0e01d1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 20505
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20507
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserVerifyType;->iconResId()I

    move-result v1

    .line 20508
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20512
    :cond_3
    const v0, 0x7f0e01fa

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20513
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 20514
    invoke-static {v1, p0}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 20515
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20518
    const v0, 0x7f0e021b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20519
    const v1, 0x7f070399

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getSource()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20521
    const v0, 0x7f0e0293

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$40;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity$40;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20541
    const v0, 0x7f0e0294

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 20542
    if-eqz v0, :cond_4

    .line 20543
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$41;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity$41;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20555
    :cond_4
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->isReward()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20556
    iput-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    .line 20557
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v1, 0x7f0e0297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20558
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->F:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$42;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity$42;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21585
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21586
    const v1, 0x7f0701db

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070164

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 21587
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v1, 0x7f0e0239

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 21588
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v2, 0x7f0e023c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 21589
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v3, 0x7f0e023d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/common/widget/SnowBallTextView;

    .line 21590
    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v4, 0x7f0e023e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 21592
    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v6, 0x7f0e023f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 21593
    iget-object v6, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v7, 0x7f0e0204

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 21596
    iget-object v7, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 21597
    iget-object v7, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v7

    .line 21598
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21600
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v8, 0x7f0e0206

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 21601
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 21602
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v9, "(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v12

    invoke-virtual {v12}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21603
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21608
    :goto_2
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21609
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21610
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21614
    :goto_3
    const/4 v0, 0x2

    const v8, 0x3e4ccccd    # 0.2f

    sub-float v8, v5, v8

    invoke-virtual {v1, v0, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21616
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 21617
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 21618
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setText(Ljava/lang/CharSequence;)V

    .line 21619
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    .line 21623
    :goto_4
    const/4 v0, 0x2

    const v1, 0x3e4ccccd    # 0.2f

    sub-float v1, v5, v1

    invoke-virtual {v2, v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setTextSize(IF)V

    .line 21625
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 21626
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getBmiddlePic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 21627
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21632
    :goto_5
    const v0, 0x7f0702eb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 21633
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 21632
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21634
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21636
    new-instance v0, Lcom/xueqiu/android/community/StatusDetailActivity$2;

    invoke-direct {v0, p0, v7}, Lcom/xueqiu/android/community/StatusDetailActivity$2;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21645
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21647
    const v0, 0x7f0e023b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 21648
    const v1, 0x7f0e023a

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 21650
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 21651
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21652
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21963
    const v0, 0x7f0e02b4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 21964
    const v1, 0x7f0e02b5

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 21965
    const v2, 0x7f0e02b6

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 21968
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21969
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21971
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 21972
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    const v2, 0x7f0800ce

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v4, v1

    .line 21973
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v8

    .line 21974
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    double-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21978
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    .line 21980
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v2

    .line 22270
    const v4, 0x7f02028b

    iput v4, v2, Lcom/d/a/b/e;->b:I

    .line 23248
    const v4, 0x7f02028b

    iput v4, v2, Lcom/d/a/b/e;->a:I

    .line 23293
    const v4, 0x7f02028b

    iput v4, v2, Lcom/d/a/b/e;->c:I

    .line 21984
    invoke-virtual {v2}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v2

    .line 21986
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getPromotionPic()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/community/StatusDetailActivity$11;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$11;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-virtual {v1, v4, v0, v2, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 21993
    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/Status;->getPromotionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21994
    const v0, 0x7f0e0237

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 21996
    if-nez v0, :cond_5

    .line 21997
    const v0, 0x7f0e023a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 22000
    :cond_5
    if-eqz v0, :cond_6

    .line 22001
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$13;

    invoke-direct {v1, p0, v7}, Lcom/xueqiu/android/community/StatusDetailActivity$13;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20406
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getAnswers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 23412
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getAnswers()Ljava/util/List;

    move-result-object v0

    .line 23413
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 23414
    new-instance v1, Lcom/xueqiu/android/community/a/a;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->M:Lcom/xueqiu/android/community/a/a;

    .line 23415
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->M:Lcom/xueqiu/android/community/a/a;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/a/a;->a(Ljava/util/ArrayList;)V

    .line 23416
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->M:Lcom/xueqiu/android/community/a/a;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    .line 24367
    iput-wide v2, v0, Lcom/xueqiu/android/community/a/a;->e:J

    .line 23417
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->K:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23418
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->k()V

    :cond_7
    :goto_7
    return-void

    .line 20500
    :cond_8
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 20579
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v1, 0x7f0e0297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20580
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v1, 0x7f0e0299

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 21605
    :cond_a
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 21612
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 21621
    :cond_c
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/SnowBallTextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 21629
    :cond_d
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 21656
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21657
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 21660
    :cond_f
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 23420
    :cond_10
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->K:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1193
    if-eqz v0, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1196
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 143
    .line 24666
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    .line 25069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 25077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 24667
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 24669
    :goto_0
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 24671
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 24672
    new-instance v0, Lcom/xueqiu/android/community/StatusDetailActivity$3;

    invoke-direct {v0, p0, p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity$3;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/User;)V

    .line 24700
    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->H:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24702
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->H:Landroid/view/View;

    new-instance v3, Lcom/xueqiu/android/community/StatusDetailActivity$4;

    invoke-direct {v3, p0, v2, v0}, Lcom/xueqiu/android/community/StatusDetailActivity$4;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/User;Lcom/xueqiu/android/base/b/p;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24716
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->I:Landroid/view/View;

    new-instance v3, Lcom/xueqiu/android/community/StatusDetailActivity$5;

    invoke-direct {v3, p0, v2, v0}, Lcom/xueqiu/android/community/StatusDetailActivity$5;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/User;Lcom/xueqiu/android/base/b/p;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 24667
    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const v1, 0x7f0e0141

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1229
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 5

    .prologue
    .line 143
    .line 25295
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    .line 26180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 25296
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    iget v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    new-instance v4, Lcom/xueqiu/android/community/StatusDetailActivity$18;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$18;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->a(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 143
    return-void
.end method

.method private q()V
    .locals 8

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->P:Lcom/xueqiu/android/base/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->P:Lcom/xueqiu/android/base/b/x;

    .line 6538
    iget-boolean v0, v0, Lcom/android/volley/n;->i:Z

    .line 1234
    if-eqz v0, :cond_2

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    const v1, 0x7f0e076b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1238
    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1241
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    .line 1243
    iget v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 7180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 1244
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 1245
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    iget v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    iget v5, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    const-string v6, "status"

    new-instance v7, Lcom/xueqiu/android/community/StatusDetailActivity$16;

    invoke-direct {v7, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$16;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 1244
    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(JIILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->P:Lcom/xueqiu/android/base/b/x;

    .line 1290
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->P:Lcom/xueqiu/android/base/b/x;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 1292
    :cond_2
    return-void

    .line 1268
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 1269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Ljava/util/ArrayList;)V

    .line 8180
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1272
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    iget v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    new-instance v4, Lcom/xueqiu/android/community/StatusDetailActivity$17;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$17;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->b(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->P:Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic q(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    .line 26766
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->o()V

    .line 26768
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const v1, 0x7f0e0141

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26769
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->p()V

    .line 26772
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 26773
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26774
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "comment_sort"

    iget v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26778
    :cond_1
    iput-boolean v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->x:Z

    .line 26779
    iput v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    .line 26780
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const v1, 0x7f0e076a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 26781
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 26784
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 26785
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 26788
    :cond_3
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->q()V

    .line 26790
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h()Landroid/app/Dialog;

    .line 143
    return-void
.end method

.method private r()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v7, 0x3

    const/4 v5, 0x0

    .line 1914
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1918
    const-string v0, "UNANSWERED"

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ap;->b(Lcom/xueqiu/android/community/model/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 1919
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/community/model/Status;)J

    move-result-wide v0

    .line 13069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 13077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 1919
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1920
    const/16 v0, 0xc0

    const/16 v1, 0xa2

    const/16 v2, 0x6f

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 1921
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const-string v2, "\u56de\u590d"

    .line 13078
    const/4 v1, 0x7

    const v3, 0x7f02035c

    const/4 v4, 0x0

    iget-object v6, v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v6, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;ILjava/lang/String;ZIII)Landroid/view/View;

    .line 1928
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->isFavorited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1929
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    .line 1935
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    if-eqz v0, :cond_3

    .line 14069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 14077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 1936
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1938
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-virtual {v9, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v12, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(II)Lcom/xueqiu/android/common/widget/i;

    move-result-object v0

    .line 1939
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v1

    if-ne v1, v10, :cond_2

    .line 1940
    const/16 v1, 0x12

    const v2, 0x7f070076

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1945
    :goto_2
    const/16 v1, 0x11

    const v2, 0x7f0703ae

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1946
    const/16 v1, 0x13

    const v2, 0x7f0702ab

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1947
    const/16 v1, 0xb

    const v2, 0x7f07011b

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1951
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->Q:Lcom/xueqiu/android/common/widget/j;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setOnMenuItemSelectedListener(Lcom/xueqiu/android/common/widget/j;)V

    .line 1952
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1953
    return-void

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const/4 v1, 0x2

    const-string v2, "\u8bc4\u8bba"

    invoke-virtual {v9, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    .line 1924
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const-string v1, "\u5206\u4eab"

    invoke-virtual {v9, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v11, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1931
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 1942
    :cond_2
    const/16 v1, 0x10

    const v2, 0x7f0703af

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    goto :goto_2

    .line 1949
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    const/16 v1, 0xa

    const v2, 0x7f0702f1

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v9, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    goto :goto_3

    .line 1914
    :array_0
    .array-data 4
        0x7f0100b6
        0x7f0100bc
        0x7f0100bb
        0x7f0100b8
        0x7f0100ba
        0x7f0100b4
        0x7f0100b5
    .end array-data
.end method

.method static synthetic r(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->q()V

    return-void
.end method

.method static synthetic s(Lcom/xueqiu/android/community/StatusDetailActivity;)I
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    return v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 14252
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1957
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->r()V

    .line 1958
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->invalidate()V

    .line 1959
    return-void
.end method

.method static synthetic t(Lcom/xueqiu/android/community/StatusDetailActivity;)I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    return v0
.end method

.method static synthetic u(Lcom/xueqiu/android/community/StatusDetailActivity;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->y:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic v(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->J:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 4

    .prologue
    .line 143
    .line 32730
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h()Landroid/app/Dialog;

    .line 33180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 32731
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$27;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$27;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 143
    return-void
.end method

.method static synthetic x(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->O:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic y(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->C:Landroid/view/View;

    return-object v0
.end method

.method static synthetic z(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->m()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1200
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1202
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const v1, 0x7f0e0141

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1203
    if-nez v0, :cond_0

    .line 1204
    const v0, 0x7f030217

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1205
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1206
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1211
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1212
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->o()V

    .line 1215
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v4, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    move-object v1, v0

    .line 1218
    const v0, 0x7f0e018e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1219
    const v2, 0x7f0e009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1220
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1222
    return-void

    .line 1208
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1041
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    const v1, 0x7f0e076c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    const v1, 0x7f0e076b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0703f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1046
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->u:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    .line 1048
    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1052
    :cond_1
    instance-of v0, p1, Lcom/xueqiu/android/common/model/PagedGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1053
    check-cast v0, Lcom/xueqiu/android/common/model/PagedGroup;

    .line 1054
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedGroup;->getTotalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/Status;->setCommentsCount(I)V

    .line 1056
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedGroup;->hasMore()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1058
    iput-boolean v5, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->x:Z

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1065
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 1066
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->isAnswer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1067
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->C:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    :goto_0
    return-void

    .line 1073
    :cond_3
    if-eqz p1, :cond_8

    .line 1074
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 1075
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1076
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 1077
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1078
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1079
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1082
    :cond_6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1083
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->notifyDataSetChanged()V

    .line 1085
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_position_to_comment"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1086
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 1087
    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1088
    if-eqz v0, :cond_7

    .line 1089
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    :cond_7
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->m()V

    .line 1092
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_position_to_comment"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    :cond_8
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 1099
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->n()V

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 1103
    iget v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1104
    const v0, 0x7f070135

    .line 1108
    :goto_2
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->k:Z

    if-eqz v0, :cond_b

    const v0, 0x7f020199

    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Ljava/lang/String;I)V

    .line 1110
    :cond_9
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->s()V

    goto/16 :goto_0

    .line 1106
    :cond_a
    const v0, 0x7f070134

    goto :goto_2

    .line 1108
    :cond_b
    const v0, 0x7f020198

    goto :goto_3
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 2186
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2187
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->setTheme(I)V

    .line 2191
    :goto_0
    return-void

    .line 2189
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method public final j()V
    .locals 4

    .prologue
    .line 1557
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1558
    const-string v0, "extra_write_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1559
    const-string v0, "extra_status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1560
    const-string v0, "extra_reply_somebody"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    const-string v0, "extra_paid_to_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1562
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1563
    const-string v2, "extra_paid_mention"

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1565
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1566
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1689
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 1690
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1691
    if-ne p1, v3, :cond_1

    .line 1692
    const-string v0, "result_pay_state"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9733
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    if-eqz v0, :cond_0

    .line 9737
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->p:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v0

    .line 10180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 9738
    new-instance v3, Lcom/xueqiu/android/community/StatusDetailActivity$6;

    invoke-direct {v3, p0, p0, v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity$6;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;J)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/ai;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1696
    const-string v0, "result_pay_state"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->v:Lcom/xueqiu/android/community/model/Comment;

    if-eqz v0, :cond_0

    .line 10825
    sget-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->SHARE_COMMENT_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/GuideTutorialType;->storeKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10826
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10827
    sget-object v0, Lcom/xueqiu/android/common/model/GuideTutorialType;->SHARE_COMMENT_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/GuideTutorialType;->storeKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10828
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10829
    const-string v1, "extra_which_view"

    sget-object v2, Lcom/xueqiu/android/common/model/GuideTutorialType;->SHARE_COMMENT_FIRST_IN:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 10830
    const-string v1, "extra_view_click_position"

    new-array v2, v3, [I

    const v3, 0x7f0e0287

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 10831
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 10832
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->overridePendingTransition(II)V

    .line 1698
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1699
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 1700
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->v:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1701
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->v:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getRewardUserCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Comment;->setRewardUserCount(I)V

    .line 1702
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->s:Lcom/xueqiu/android/community/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    if-eqz v0, :cond_0

    .line 2177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2178
    const-string v1, "back_status"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2179
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 2181
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 2182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 220
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->setContentView(I)V

    .line 222
    const v0, 0x7f070221

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->setTitle(I)V

    .line 224
    iput-object p0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->N:Landroid/content/Context;

    .line 225
    new-instance v0, Landroid/support/v7/a/c;

    const/16 v1, 0x15

    invoke-direct {v0, v1, v5}, Landroid/support/v7/a/c;-><init>(IB)V

    .line 226
    const v1, 0x7f03009e

    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4066
    iget-object v2, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v2}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v2

    .line 227
    invoke-virtual {v2, v1, v0}, Landroid/support/v7/a/a;->a(Landroid/view/View;Landroid/support/v7/a/c;)V

    .line 229
    const v0, 0x7f0e024a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$1;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 241
    invoke-virtual {v0, v6}, Landroid/support/v7/a/a;->d(Z)V

    .line 243
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 244
    const-string v1, "comment_sort"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->t:I

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xueqiu.android.action.commentSuccess"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 249
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->R:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_share"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 252
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->T:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.statusDetailPaidMentionCommentSuccess"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 254
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 255
    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->D:Landroid/view/View;

    .line 256
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v0, 0x7f0e0117

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    .line 262
    const v0, 0x7f03009d

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v2, 0x7f0e029c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->E:Landroid/widget/LinearLayout;

    .line 264
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v2, 0x7f0e0298

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->F:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v2, 0x7f0e02a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->H:Landroid/view/View;

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    const v2, 0x7f0e02a9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->I:Landroid/view/View;

    .line 268
    const v0, 0x7f03009f

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->C:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 272
    const v0, 0x7f0e0116

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->G:Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    .line 5838
    new-instance v2, Lcom/d/a/b/f/c;

    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/community/StatusDetailActivity$29;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$29;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/d/a/b/f/c;-><init>(Lcom/d/a/b/f;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 5898
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 275
    const v0, 0x7f03021c

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 279
    const v0, 0x7f0e029f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->J:Landroid/widget/LinearLayout;

    .line 280
    const v0, 0x7f0e029d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->K:Landroid/widget/LinearLayout;

    .line 282
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    iput-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    if-nez v0, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status_id"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->q:J

    .line 285
    iget-wide v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->q:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->finish()V

    .line 352
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->q:J

    const-wide/32 v2, 0x14987ed

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 290
    const v0, 0x7f07015a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->setTitle(I)V

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->l()V

    .line 304
    :goto_1
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->r()V

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xueqiu.android.action.statusAnswerComplete"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$12;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lrx/j;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->j:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->q:J

    .line 302
    invoke-direct {p0}, Lcom/xueqiu/android/community/StatusDetailActivity;->l()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1818
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 1819
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 1820
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 1821
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 1822
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1795
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 11186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 1798
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->r:Z

    if-eqz v0, :cond_0

    .line 1799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity;->r:Z

    .line 12180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 1800
    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$28;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$28;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 12406
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/aj;->e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1814
    :cond_0
    return-void
.end method
