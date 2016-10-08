.class public final Lcom/xueqiu/android/community/h;
.super Lcom/xueqiu/android/common/c;
.source "MentionMeStatusFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/c;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/xueqiu/android/community/widget/i;

.field private b:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    .line 49
    iput-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

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
    const-wide/16 v4, 0x0

    .line 109
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v6

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    .line 3367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 110
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    if-nez p1, :cond_0

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    .line 4334
    :goto_0
    iget-object v1, v6, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/aj;->a(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 120
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v0

    move-wide v2, v4

    move-wide v4, v0

    goto :goto_0

    :cond_1
    move-wide v2, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/h;)Lcom/xueqiu/android/community/widget/i;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 61
    const v0, 0x7f030196

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    return-object v0
.end method

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
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/h;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 152
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 153
    const-string v0, "delete_status_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    .line 4367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 155
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 157
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_0

    .line 158
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    .line 5367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 162
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 164
    :cond_2
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/h;->e_(Z)V

    .line 55
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1084
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    if-nez v0, :cond_0

    .line 1085
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/h;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/base/storage/DBManager;->queryTimeine(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1087
    iget-object v3, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/community/a/ak;->a(Ljava/util/ArrayList;)V

    .line 1089
    :cond_0
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 1090
    new-instance v3, Lcom/xueqiu/android/community/widget/i;

    invoke-direct {v3, v0, p0}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v3, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    iget-object v3, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 1092
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    new-instance v3, Lcom/xueqiu/android/community/h$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/h$1;-><init>(Lcom/xueqiu/android/community/h;)V

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1103
    const v0, 0x7f0703e0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/h;->d(I)V

    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    const v3, 0x7f07013c

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(Ljava/lang/CharSequence;)V

    .line 1105
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    const v3, 0x7f020197

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(I)V

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/community/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    const-string v3, "extra_notification"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 75
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1385
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    .line 3225
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 81
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 72
    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->a:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/widget/i;->a(Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 7
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
    const/4 v6, 0x0

    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 138
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 141
    const-string v2, "screen_name"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "time_stamp"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCreatedAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 143
    const-string v2, "desc"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "mentions"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    :cond_1
    sget-object v0, Lcom/xueqiu/android/message/client/c;->j:Lrx/i/c;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 147
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
    .line 188
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/h;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 6193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 168
    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/community/h;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->insertTimeline(Ljava/util/List;I)V

    .line 177
    :cond_1
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 179
    return-void
.end method
