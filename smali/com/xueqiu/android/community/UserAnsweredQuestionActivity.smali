.class public Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;
.super Lcom/xueqiu/android/common/b;
.source "UserAnsweredQuestionActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Question;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/xueqiu/android/community/model/User;

.field private k:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/xueqiu/android/community/a/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method private a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->k:Lcom/xueqiu/android/common/r;

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 61
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    if-nez p1, :cond_0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Question;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Question;->getAid()J

    move-result-wide v4

    move-wide v6, v2

    .line 3180
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 3312
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/aj;->a(JJJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 70
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Question;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Question;->getAid()J

    move-result-wide v6

    move-wide v4, v2

    goto :goto_0

    :cond_1
    move-wide v4, v2

    move-wide v6, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;)Lcom/xueqiu/android/community/a/w;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->p:Lcom/xueqiu/android/community/a/w;

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
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

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
            "Lcom/xueqiu/android/community/model/Question;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 86
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
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Question;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_user"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->j:Lcom/xueqiu/android/community/model/User;

    .line 40
    const v0, 0x7f0e01ac

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 41
    new-instance v3, Lcom/xueqiu/android/common/r;

    invoke-direct {v3, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v3, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->k:Lcom/xueqiu/android/common/r;

    .line 42
    new-instance v0, Lcom/xueqiu/android/community/a/w;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->p:Lcom/xueqiu/android/community/a/w;

    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->k:Lcom/xueqiu/android/common/r;

    iget-object v3, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->p:Lcom/xueqiu/android/community/a/w;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->k:Lcom/xueqiu/android/common/r;

    .line 1409
    const/16 v3, 0xa

    iput v3, v0, Lcom/xueqiu/android/common/r;->f:I

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->k:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->c(Z)V

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->k:Lcom/xueqiu/android/common/r;

    new-instance v3, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity$1;-><init>(Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;)V

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v6

    .line 54
    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 55
    :goto_0
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%s\u56de\u590d\u7684\u63d0\u95ee"

    new-array v5, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string v0, "\u6211"

    :goto_1
    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->k:Lcom/xueqiu/android/common/r;

    .line 2225
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserAnsweredQuestionActivity;->j:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
