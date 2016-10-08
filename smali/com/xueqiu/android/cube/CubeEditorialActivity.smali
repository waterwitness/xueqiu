.class public Lcom/xueqiu/android/cube/CubeEditorialActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeEditorialActivity.java"


# instance fields
.field private j:Landroid/widget/ListView;

.field private k:Lcom/xueqiu/android/cube/a/a;

.field private p:Lcom/xueqiu/android/cube/model/Editorial;

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeEditorialActivity;)Lcom/xueqiu/android/cube/a/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeEditorialActivity;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 2

    .prologue
    .line 5132
    new-instance v0, Lcom/xueqiu/android/cube/CubeEditorialActivity$5;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeEditorialActivity$5;-><init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;)V

    .line 6025
    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/xueqiu/android/base/util/f;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeEditorialActivity;Lcom/xueqiu/android/cube/model/EditorialCube;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    .line 4071
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/EditorialCube;->getEditorial()Lcom/xueqiu/android/cube/model/Editorial;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->p:Lcom/xueqiu/android/cube/model/Editorial;

    .line 4072
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->p:Lcom/xueqiu/android/cube/model/Editorial;

    if-nez v0, :cond_0

    .line 4073
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->finish()V

    .line 4075
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->p:Lcom/xueqiu/android/cube/model/Editorial;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 4076
    new-instance v0, Lcom/xueqiu/android/cube/a/a;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    .line 4077
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    new-instance v1, Lcom/xueqiu/android/cube/CubeEditorialActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeEditorialActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;)V

    .line 4304
    iput-object v1, v0, Lcom/xueqiu/android/cube/a/a;->e:Lcom/xueqiu/android/cube/a/b;

    .line 4100
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->j:Landroid/widget/ListView;

    .line 4102
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/EditorialCube;->getEditorial()Lcom/xueqiu/android/cube/model/Editorial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 4103
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/EditorialCube;->getEditorial()Lcom/xueqiu/android/cube/model/Editorial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 4104
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4105
    const v0, 0x7f03003b

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4106
    const v0, 0x7f0e017d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4107
    new-instance v0, Lcom/xueqiu/android/cube/CubeEditorialActivity$3;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/cube/CubeEditorialActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4113
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4115
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->r:Z

    if-eqz v0, :cond_2

    .line 4116
    const v0, 0x7f03003a

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 4117
    const v1, 0x7f0e017c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeEditorialActivity$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeEditorialActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4124
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 4126
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4127
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/EditorialCube;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4128
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 29
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 156
    const-string v0, "extra_cube"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 157
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/a/a;->a(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->k:Lcom/xueqiu/android/cube/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 162
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_show_footer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->r:Z

    .line 52
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_editorial_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->q:J

    .line 53
    iget-wide v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->finish()V

    .line 3180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 56
    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity;->q:J

    new-instance v1, Lcom/xueqiu/android/cube/CubeEditorialActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/cube/CubeEditorialActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 3523
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/c;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 68
    return-void
.end method
