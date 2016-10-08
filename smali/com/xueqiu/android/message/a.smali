.class public final Lcom/xueqiu/android/message/a;
.super Lcom/xueqiu/android/common/c;
.source "GroupProfileFragment.java"


# instance fields
.field a:Lcom/xueqiu/android/message/model/IMGroup;

.field private b:Ljava/lang/Long;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 77
    return-void
.end method

.method public static a(J)Lcom/xueqiu/android/message/a;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/xueqiu/android/message/a;

    invoke-direct {v0}, Lcom/xueqiu/android/message/a;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v2, "groupId"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a;->e(Landroid/os/Bundle;)V

    .line 72
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a;)V
    .locals 4

    .prologue
    .line 43
    .line 4304
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getApplication()Landroid/app/Application;

    .line 4305
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4306
    const v1, 0x7f07020e

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/a;->a_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 4307
    iget-object v1, p0, Lcom/xueqiu/android/message/a;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/a$3;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/a$3;-><init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V

    .line 5299
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/d;->f(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 4

    .prologue
    .line 43
    .line 6166
    iput-object p1, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    .line 6167
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 6168
    if-nez v0, :cond_2

    .line 6169
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getApplication()Landroid/app/Application;

    .line 6170
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getMasterId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/a$8;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/message/a$8;-><init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V

    .line 6934
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 6190
    :goto_0
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isPub()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->isJoined()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6191
    const v0, 0x7f070188

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 6192
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6193
    new-instance v1, Lcom/xueqiu/android/message/a$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/a$9;-><init>(Lcom/xueqiu/android/message/a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    :cond_1
    return-void

    .line 6187
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/IMGroup;->setMaster(Lcom/xueqiu/android/community/model/User;)V

    .line 6188
    invoke-direct {p0}, Lcom/xueqiu/android/message/a;->u()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    .line 7271
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a;->y()Landroid/app/Dialog;

    .line 7272
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 7274
    iget-object v1, p0, Lcom/xueqiu/android/message/a;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/a$2;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/a$2;-><init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V

    .line 8275
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/xueqiu/android/base/b/d;->b(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 43
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/message/a;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/message/a;)Lcom/xueqiu/android/message/model/IMGroup;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/message/a;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/xueqiu/android/message/a;->u()V

    return-void
.end method

.method private u()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->g:Landroid/widget/TextView;

    const-string v1, "%s(%d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/a;->h()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/IMGroup;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/IMGroup;->getLimitCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->d:Landroid/widget/Button;

    const v1, 0x7f07018b

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/IMGroup;->getMaster()Lcom/xueqiu/android/community/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/xueqiu/android/message/a;->e:Landroid/widget/TextView;

    const v0, 0x7f07018f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->isEmptyName()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07055b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->isJoined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->f:Landroid/widget/Button;

    const v1, 0x7f07014c

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_1
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getLimitCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->f:Landroid/widget/Button;

    const v1, 0x7f070189

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->f:Landroid/widget/Button;

    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 91
    const v0, 0x7f030140

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getApplication()Landroid/app/Application;

    .line 93
    const v0, 0x7f0e04dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/message/a;->c:Landroid/view/ViewGroup;

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->c:Landroid/view/ViewGroup;

    new-instance v2, Lcom/xueqiu/android/message/a$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/a$1;-><init>(Lcom/xueqiu/android/message/a;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0e04de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/a;->d:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->d:Landroid/widget/Button;

    new-instance v2, Lcom/xueqiu/android/message/a$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/a$4;-><init>(Lcom/xueqiu/android/message/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f0e04df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/message/a;->e:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0e04dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/message/a;->g:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0e04e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/message/a;->f:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/message/a;->f:Landroid/widget/Button;

    new-instance v2, Lcom/xueqiu/android/message/a$5;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/a$5;-><init>(Lcom/xueqiu/android/message/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 82
    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 83
    const-string v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a;->b:Ljava/lang/Long;

    .line 85
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getApplication()Landroid/app/Application;

    .line 127
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/a$6;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/a$6;-><init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->q(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 144
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/xueqiu/android/message/a;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/a$7;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/message/a$7;-><init>(Lcom/xueqiu/android/message/a;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->n(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 162
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 163
    return-void
.end method
