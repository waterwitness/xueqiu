.class public Lcom/xueqiu/android/community/UserHotStatusActivity;
.super Lcom/xueqiu/android/common/b;
.source "UserHotStatusActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field public j:I

.field private k:Lcom/xueqiu/android/community/model/User;

.field private p:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->j:I

    return-void
.end method

.method private a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->j:I

    .line 3180
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->k:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    iget v4, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->j:I

    const/16 v5, 0xa

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->j:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserHotStatusActivity;)Lcom/xueqiu/android/community/a/ak;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->q:Lcom/xueqiu/android/community/a/ak;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/UserHotStatusActivity;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/UserHotStatusActivity;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserHotStatusActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserHotStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_user"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->k:Lcom/xueqiu/android/community/model/User;

    .line 42
    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserHotStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 43
    new-instance v3, Lcom/xueqiu/android/common/r;

    invoke-direct {v3, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v3, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->p:Lcom/xueqiu/android/common/r;

    .line 44
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->q:Lcom/xueqiu/android/community/a/ak;

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->q:Lcom/xueqiu/android/community/a/ak;

    .line 1157
    iput-boolean v1, v0, Lcom/xueqiu/android/community/a/ak;->h:Z

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->p:Lcom/xueqiu/android/common/r;

    iget-object v3, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->q:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->p:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->c(Z)V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->p:Lcom/xueqiu/android/common/r;

    .line 1409
    const/16 v3, 0xa

    iput v3, v0, Lcom/xueqiu/android/common/r;->f:I

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->p:Lcom/xueqiu/android/common/r;

    new-instance v3, Lcom/xueqiu/android/community/UserHotStatusActivity$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/UserHotStatusActivity$1;-><init>(Lcom/xueqiu/android/community/UserHotStatusActivity;)V

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->k:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 61
    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 62
    :goto_0
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%s\u7684\u70ed\u95e8\u8ba8\u8bba"

    new-array v5, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v0, "\u6211"

    :goto_1
    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserHotStatusActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->p:Lcom/xueqiu/android/common/r;

    .line 2225
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 64
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserHotStatusActivity;->k:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
