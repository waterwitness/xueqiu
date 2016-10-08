.class public Lcom/xueqiu/android/community/RewardListActivity;
.super Lcom/xueqiu/android/common/b;
.source "RewardListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Reward;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private p:J

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    return-void
.end method

.method private a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 78
    iget-wide v1, p0, Lcom/xueqiu/android/community/RewardListActivity;->p:J

    iget-object v3, p0, Lcom/xueqiu/android/community/RewardListActivity;->q:Ljava/lang/String;

    int-to-long v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/RewardListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->j:Lcom/xueqiu/android/common/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 99
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RewardListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 100
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    .line 102
    iget v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/RewardListActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    .line 89
    :cond_0
    if-nez p3, :cond_1

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 92
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 93
    const-string v0, "\u6682\u65e0\u8d5e\u52a9\u6570\u636e"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 95
    :cond_2
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
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Reward;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 107
    iget v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    .line 108
    iget v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->k:I

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/RewardListActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f070300

    .line 47
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030195

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RewardListActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/xueqiu/android/community/RewardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_to_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->p:J

    .line 50
    invoke-virtual {p0}, Lcom/xueqiu/android/community/RewardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_to_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->q:Ljava/lang/String;

    .line 1057
    new-instance v1, Lcom/xueqiu/android/community/a/af;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/af;-><init>(Landroid/app/Activity;)V

    .line 1058
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RewardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1059
    new-instance v2, Lcom/xueqiu/android/common/r;

    invoke-direct {v2, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v2, p0, Lcom/xueqiu/android/community/RewardListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 1060
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 1061
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/community/RewardListActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/RewardListActivity$1;-><init>(Lcom/xueqiu/android/community/RewardListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->q:Ljava/lang/String;

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f07009e

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/RewardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/RewardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RewardListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 1225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 54
    return-void

    .line 1073
    :cond_0
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/RewardListActivity;->setTitle(I)V

    goto :goto_0
.end method
