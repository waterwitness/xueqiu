.class public Lcom/xueqiu/android/cube/CubeListActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeListActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private p:Lcom/xueqiu/android/cube/a/h;

.field private q:Lcom/xueqiu/android/community/model/User;

.field private r:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->q:Lcom/xueqiu/android/community/model/User;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeListActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 4

    .prologue
    .line 10180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 10165
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity;->q:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 10531
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/xueqiu/android/base/b/c;->b(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeListActivity;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeListActivity;->q:Lcom/xueqiu/android/community/model/User;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeListActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeListActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeListActivity;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 2

    .prologue
    .line 9169
    new-instance v0, Lcom/xueqiu/android/cube/CubeListActivity$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeListActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeListActivity;)V

    .line 10025
    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/xueqiu/android/base/util/f;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V

    .line 33
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->j:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeListActivity;)Lcom/xueqiu/android/cube/a/h;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->p:Lcom/xueqiu/android/cube/a/h;

    return-object v0
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->q:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 5077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 152
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 153
    const v0, 0x7f070236

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeListActivity;->setTitle(I)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->p:Lcom/xueqiu/android/cube/a/h;

    .line 5226
    iput-boolean v4, v0, Lcom/xueqiu/android/cube/a/h;->f:Z

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 7225
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 162
    return-void

    .line 157
    :cond_0
    const v0, 0x7f070460

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeListActivity;->q:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->p:Lcom/xueqiu/android/cube/a/h;

    .line 6226
    iput-boolean v5, v0, Lcom/xueqiu/android/cube/a/h;->f:Z

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 211
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 212
    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 8225
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 215
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeListActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->r:J

    .line 62
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->q:Lcom/xueqiu/android/community/model/User;

    .line 3093
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->k:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 3094
    new-instance v0, Lcom/xueqiu/android/cube/a/h;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->p:Lcom/xueqiu/android/cube/a/h;

    .line 3095
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->p:Lcom/xueqiu/android/cube/a/h;

    new-instance v1, Lcom/xueqiu/android/cube/CubeListActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeListActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeListActivity;)V

    .line 3238
    iput-object v1, v0, Lcom/xueqiu/android/cube/a/h;->e:Lcom/xueqiu/android/cube/a/i;

    .line 3121
    new-instance v0, Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity;->k:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v2, Lcom/xueqiu/android/cube/CubeListActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeListActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeListActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 3148
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->j:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity;->p:Lcom/xueqiu/android/cube/a/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->q:Lcom/xueqiu/android/community/model/User;

    if-nez v0, :cond_1

    .line 65
    iget-wide v0, p0, Lcom/xueqiu/android/cube/CubeListActivity;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeListActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/xueqiu/android/cube/CubeListActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/cube/CubeListActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeListActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 83
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeListActivity;->h()Landroid/app/Dialog;

    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 84
    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeListActivity;->r:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeListActivity;->j()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 8186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 192
    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    const v1, 0x7f0e0007

    const v2, 0x7f0700c7

    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020329

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 196
    :cond_0
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e0007

    if-ne v0, v1, :cond_0

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
